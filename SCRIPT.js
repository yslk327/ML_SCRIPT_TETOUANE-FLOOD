
// rename selected geometry feature 
var geometryTetouan = ee.FeatureCollection(geometry);

//************************************************************** Script SENTINEL-1 ****************************************************************
//*********************************Load Sentinel-1 C-band SAR ground range collection *************************************************************
var collectionVH = sentinel_1
        .filter(ee.Filter.listContains('transmitterReceiverPolarisation', 'VH'))
        .filter(ee.Filter.eq('instrumentMode', 'IW'))
        .filter(ee.Filter.eq('orbitProperties_pass', 'DESCENDING'))
        .filterMetadata('resolution_meters','equals',10)
        .filterBounds(geometryTetouan)
        .select('VH');
//print ('Collection VH: ', collectionVH); 


// ******************************************Filter the Sentinel-1 Date by Date *******************************************************************
// Select images by predefined dates
var beforeStart = '2021-01-07'
var beforeEnd = '2021-01-13'
var afterStart = '2021-01-13'
var afterEnd = '2021-01-18'


var beforeVH1 = collectionVH.filterDate(beforeStart, beforeEnd); 
var afterVH1 = collectionVH.filterDate(afterStart, afterEnd);
//print ('before VH: ', beforeVH1);  
//print ('after VH: ', afterVH1);  
//*************************************Filter the sentinel date by date and create a mosaic for befor and after***********************************
var beforeVH = collectionVH.filterDate(beforeStart, beforeEnd).mosaic().clip(geometryTetouan); 
var afterVH = collectionVH.filterDate(afterStart, afterEnd).mosaic().clip(geometryTetouan);

//Display Map
//Map.addLayer(beforeVH,{min:-25,max:0},'before inundation VH',0);
//Map.addLayer(afterVH,{min:-25,max:0},'after inundation VH',0);


//*********************************************Apply a speckle filter*****************************************************************************
//Apply filter to reduce speckle
var SMOOTHING_RADIUS = 50;
var beforeVH_filtered = beforeVH.focal_mean(SMOOTHING_RADIUS, 'circle', 'meters');
var afterVH_filtered = afterVH.focal_mean(SMOOTHING_RADIUS, 'circle', 'meters');

//Display filtred images
//Map.addLayer(beforeVH_filtered_ML,{min:-25,max:0},'before inundation VH filtered_ML',0);
//Map.addLayer(afterVH_filtered_ML,{min:-25,max:0},'after inundation VH filtered_ML',0);

//**********************Display each image from before and after search**************************************************************************

function addImage(image){
  var id =image.id;
  var image = ee.Image(image.id);
  Map.addLayer(image,{min:-25,max:0});
}

//beforeVH1.evaluate(function(beforeVH){beforeVH.features.map(addImage)})
//afterVH1.evaluate(function(afterVH){afterVH.features.map(addImage)})

//*************************************************************************************************************************************************

//************************************************************** Script SENTINEL-2 ****************************************************************
var imageS1 = s2_L1C.filterBounds(geometryTetouan);
//print ('Collection s2 tetouan-Level-1C:',imageS1) ;

var imageS2 = s2_L2A.filterBounds(geometryTetouan);
//print ('Collection s2 tetouan-Level-2A:',imageS2) ;

// Filter the image collection using filterBounds() and filterDate() method.
// Sort the collection by cloud cover metadata
// Create the mosaic image and clip it to geometryTetouan
var image_before1 = s2_L2A
                  .filterBounds(geometryTetouan)
                  .filterDate('2021-01-01', '2021-01-11');
                  
var image_before   = image_before1.sort('CLOUDY_PIXEL_PERCENTAGE', false)
                  .map(function(image) {
                    return image.addBands(image.metadata('system:time_start'));
                  })
                .mosaic()
                  ;

var image_after1 = s2_L2A
                   .filterBounds(geometryTetouan)
                  .filterDate('2021-01-12', '2021-01-18');
                  
                  
var image_after = image_after1.sort('CLOUDY_PIXEL_PERCENTAGE', false)
                  .map(function(image) {
                    return image.addBands(image.metadata('system:time_start'));
                  })
                  .mosaic();

//print('image_before',image_before1);
//print('image_after',image_after1);


// Display the true color images
var trueColor_sentinel2 = {bands: ['B4', 'B3', 'B2'], min: 0, max: 3000};                  
//Map.addLayer(image_before, trueColor_sentinel2, 'before true color S2',0);
//Map.addLayer(image_after, trueColor_sentinel2, 'after true color S2',0);


// Select the green and NIR bands
var image_before_b = image_before1.select(['B3','B8']);
var image_after_b = image_after1.select(['B3','B8']);

// function calculate ndwi 
function Image(img) {
  var ndwi = img.normalizedDifference(['B3', 'B8']).rename('NDWI');
  return img.addBands(ndwi);
}


// calculate ndwi for each image in imagecollection
var ndwi_after =  image_after_b.map(Image);
var ndwi_before = image_before_b.map(Image);

// combine all data in single image collection
var allcollection2 =  ee.ImageCollection(ndwi_before.merge(ndwi_after)).mosaic().clip(geometryTetouan);

//Select the bands to use in the classifier 
var bandNames2 = allcollection2.bandNames();

//********************************************************************************************************************************************************
//************************************************************** Script LANDSAT***************************************************************************
// set time range
var startyear = 2021;
var endyear = 2021;

// filter on date and bounds
var startdate = ee.Date.fromYMD(startyear,1,1);
var enddate = ee.Date.fromYMD(endyear,1,15)

var l7images = landsat_7.filterBounds(geometryTetouan);
var l8images = landsat_8.filterBounds(geometryTetouan);

//print('l7images',l7images)
//print('l8images',l8images)

var l7images = l7images.filterDate(startdate,enddate);
var l8images = l8images.filterDate(startdate,enddate);

// set cloud threshold
var cloud_thresh = 40;
// Functions
  var cloudfunction = function(image){
  var CloudScore = ee.Algorithms.Landsat.simpleCloudScore(image);
  var quality = CloudScore.select('cloud');
  var cloud01 = quality.gt(cloud_thresh);
  var cloudmask = image.mask().and(cloud01.not());
  return image.updateMask(cloudmask);
};

var l7_images = l7images.map(cloudfunction);
var l8_images = l8images.map(cloudfunction);

// add layers true-color composite L8
var l81images = landsat_8.filterDate(startdate,enddate).filterBounds(geometryTetouan);
var l88images = l81images.select(['B4', 'B3', 'B2']);
var visParams = {bands: ['B4', 'B3', 'B2'], max: 0.3};
//Map.addLayer(l88images.mosaic(), visParams, 'true-color composite L8',0);

// add layers true-color composite L7
var l71images = landsat_7.filterDate(startdate,enddate).filterBounds(geometryTetouan);
var l77images = l71images.select(['B3', 'B2', 'B1']);
var visParams = {bands: ['B3', 'B2', 'B1'], max: 0.3};
//Map.addLayer(l77images.mosaic(), visParams, 'true-color composite L7',0);


//Select bands
var l7imagesB24 = l7_images.select(['B3','B5']);
var l8imagesB24 = l8_images.select(['B3','B5']);

function l8Ndwi2(img) {
  var ndwi = img.normalizedDifference(['B3', 'B5']).rename('NDWI');
  return img.addBands(ndwi);
}

function l7Ndwi2(img) {
  var ndwi = img.normalizedDifference(['B3', 'B5']).rename('NDWI');
  return img.addBands(ndwi);
}

// calculate ndwi for each image in imagecollection
var l7ndwi2 = l7imagesB24.map(l7Ndwi2);
var l8ndwi2 = l8imagesB24.map(l8Ndwi2);

//print('L7images selected',l7ndwi2)
//print('L8images selected',l8ndwi2)

// combine all data in single image collection
var allcollection3 =  ee.ImageCollection(l7ndwi2.merge(l8ndwi2)).mosaic().clip(geometryTetouan);

//Select the bands to use in the classifier 
var bandNames3 = allcollection3.bandNames();


//*******************************************************************************************************************************************************

//Print the information of the reference data
print("No. of water points:", water_data_400.size());
print("No. of other points:", other_data_400.size());

//Add reference data points into the map to visualize
Map.addLayer(water_data_400.draw("blue"),{},"water",0);
Map.addLayer(other_data_400.draw("black"),{},"other",0);

//Create merge collection
//var merge_col=other_data_50.merge(water_data_50);
//var merge_col=other_data_100.merge(water_data_100);
//var merge_col=other_data_200.merge(water_data_200);
var merge_col=other_data_400.merge(water_data_400);

print('Merge collection',merge_col);

//Create water sample over sentinel-1 composite
var final = ee.Image.cat(beforeVH_filtered,afterVH_filtered)
var bands = ['VH'];

var Sample_S1 =final.select(bands).sampleRegions({
          collection: merge_col, 
          properties: ["land_class"], 
          scale: 10 ,
});

//Create water sample over sentinel-2 composite
var Sample_S2 = allcollection2.sampleRegions({
          collection: merge_col, 
          properties: ['land_class'], 
          scale: 10,
  
});

//Create water sample over Landsat composite
var Sample_LS = allcollection3.sampleRegions({
          collection: merge_col, 
          properties: ["land_class"],
          scale: 30,
});
 

//*************************************************************************************************************************************************** 
// Accuracy Assessment
//*************************************************************************************************************************************************** 

//Add a random column and split into training and validation set
//var random_Column = Sample_S1.randomColumn();//S1
//var random_Column = Sample_S2.randomColumn();//S2
var random_Column = Sample_LS.randomColumn();//LANDSAT

// 70% training, 30% validation
var training_Sample = random_Column .filter(ee.Filter.gte('random', 0.3));
var validation_Sample = random_Column .filter(ee.Filter.lte('random', 0.3));

//print('Training data',training_Sample);
//print('Validation data',validation_Sample);

//Train ML classifier
var classifier1 = ee.Classifier.smileRandomForest(30).train({ 
               //ee.Classifier.smileCart().train({ 
               //ee.Classifier.libsvm().train({ 
            features:training_Sample, 
            classProperty :'land_class', 
           // inputProperties:bands  //S1
            // inputProperties:bandNames2  //S2
           inputProperties:bandNames3  //Landsat
});


// Get information about the trained classifier.
//print('Results of trained classifier_test1', classifier_test1.explain());

var test = validation_Sample.classify(classifier1);
var testConfusionMatrix = test.errorMatrix('land_class', 'classification')

// Printing of :
print('Confusion Matrix:', testConfusionMatrix);
print('Test Accuracy:', testConfusionMatrix.accuracy());
print('User Accuracy:',testConfusionMatrix.consumersAccuracy());
print('Producers Accuracy:',testConfusionMatrix.producersAccuracy());


//***************************************Calculate Inundation Extent**************************************************************************************
// Calculate total area studied extent  
var Total_area = geometry.area().divide(10000).round();

//Classify the image
//var classification1 = final.select(bands).classify(classifier1); //S1
//var classification1 =  allcollection2.classify(classifier1);  //S2
var classification1 =  allcollection3.classify(classifier1);  //landsat

// Multiply the binary image by the area of each pixel to get the total area in square meters
var area1 = classification1.multiply(ee.Image.pixelArea());

// Sum the total area of all water pixels
var totalArea1 = area1.reduceRegion({
reducer: ee.Reducer.sum(),
geometry: geometryTetouan,
scale: 10,
maxPixels: 1e13
});

var valueTotal1 = (totalArea1.get("classification").getInfo())/10000;

//*********************************************************************************************************************************************************** 
//*********************************************************************************************************************************************************** 

//output mode : probability
//Train ML classifier using the training samples of water and set the output mode to probability 
var classifier = ee.Classifier.smileRandomForest(30)
                   //ee.Classifier.smileCart() 
                   //ee.Classifier.libsvm()
                   .setOutputMode('PROBABILITY')
                    //.train(Sample_S1 ,"land_class",bands); //S1
                    //.train(Sample_S2 ,"land_class",bandNames2);  //S2
                    .train(Sample_LS,"land_class",bandNames3);  //LANDSAT
                    
//Classify the image
//var classification = final.select(bands).classify(classifier).multiply(100); //S1
//var classification =  allcollection2.classify(classifier).multiply(100);  //S2
var classification =  allcollection3.classify(classifier).multiply(100);  //landsat

// Create a binary image where water pixels are 1 and non-water pixels are 0
var binaryClassification = classification.gt(60);// 60 ==> percentage of pixels detected as flooded

//***************************************Calculate Inundation Extent****************************************************************************************

// Multiply the binary image by the area of each pixel to get the total area in square meters
var area = binaryClassification.multiply(ee.Image.pixelArea());

// Sum the total area of all water pixels
var totalArea = area.reduceRegion({
reducer: ee.Reducer.sum(),
geometry: geometryTetouan,
scale: 10,
maxPixels: 1e13
});

var valueTotal = (totalArea.get("classification").getInfo())/10000;

//***************************pernament open water GCLS********************************************************************************************************
// the Copernicus Global Land Service (CGLS) land cover map (100m)
var global_landcover = CGLS.select('discrete_classification');
var landcover_tetouan = global_landcover.clip(geometryTetouan);

//Extract only water pixels from CGLS using class value equal to 80 or 200
var water = landcover_tetouan.eq(80).or(landcover_tetouan.eq(200));

//extent permanentWater
var inundation_area_PW2 = water.multiply(ee.Image.pixelArea());
 
// Sum the area covered by inundated pixels. 
var inundation_stats_PW2 = inundation_area_PW2.reduceRegion({
  reducer: ee.Reducer.sum(),              
  geometry: geometryTetouan,
  scale: 10, 
  maxPixels: 1e13,
  bestEffort: true
  });
  
// Print the total area of water
// print(inundation_stats_PW);
var valuePW2 = (inundation_stats_PW2.get("discrete_classification").getInfo())/10000;
var valuePW2 = parseInt(valuePW2);
//*****************************************************RESULTAT********************************************************************************************

// Add maps
Map.centerObject(geometryTetouan,12);

//Define a palette for the IGBP classification 
Map.addLayer(classification, {min:40,max:100,palette:"white,red,darkred"}, 'Flooding area classification',1);

//Define a palette for Permanent Water
Map.addLayer(water.selfMask(), {min:0, max:1, palette: ['blue']}, 'Permanent Water (CGLS)- blue',1)

//print hectares of flooded area
print('Total area studied (Ha)',Total_area );

print('Hectares of Permanent Water CGLS',valuePW2);

var valueTotal = ee.Number(valueTotal);
var Flood = valueTotal.subtract(valuePW2).round();
print('Hectares of Inundated Area - PROBABILITY',Flood); 

var valueTotal1 = ee.Number(valueTotal1);
var Flood1 = valueTotal1.subtract(valuePW2).round();
print('Hectares of Inundated Area - validation',Flood1); 
 

//**********************************Create a Legend********************************************************************************************************

// set position of panel
var legend = ui.Panel({
  style: {
    position: 'bottom-left',
    padding: '8px 15px'
  }
});
 
// Create legend title
var legendTitle = ui.Label({
  value: 'Legend',
  style: {
    fontWeight: 'bold',
    fontSize: '18px',
    margin: '0 0 4px 0',
    padding: '0'
    }
});
 
// Add the title to the panel
legend.add(legendTitle);
 
// Creates and styles 1 row of the legend.
var makeRow = function(color, name) {
 
      // Create the label that is actually the colored box.
      var colorBox = ui.Label({
        style: {
          backgroundColor: color,
          // Use padding to give the box height and width.
          padding: '8px',
          margin: '0 0 4px 0'
        }
      });
 
      // Create the label filled with the description text.
      var description = ui.Label({
        value: name,
        style: {margin: '0 0 4px 6px'}
      });
 
      // return the panel
      return ui.Panel({
        widgets: [colorBox, description],
        layout: ui.Panel.Layout.Flow('horizontal')
      });
};
 
//  Palette with the colors
var palette =['blue','red'];
 
// name of the legend
var names = ['Permanent Water','Flood region'];
 
// Add color and and names
for (var i = 0; i <2; i++) {
  legend.add(makeRow(palette[i], names[i]));
  }  
 
// add legend to map (alternatively you can also print the legend to the console)
Map.add(legend);

// set position of panel
var title = ui.Panel({
  style: {
    position: 'top-center',
    padding: '8px 15px'
  }
});
 
// Create legend title
var mapTitle = ui.Label({
  value: 'Map of flooded areas in  Tetouan region',
  style: {
    fontWeight: 'bold',
    fontSize: '18px',
    margin: '0 0 4px 0',
    padding: '0'
    }
});
 
// Add the title to the panel
title.add(mapTitle);
Map.add(title);



