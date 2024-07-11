var geometry = 
    /* color: #b0c00c */
    /* shown: false */
    ee.Geometry({
      "type": "GeometryCollection",
      "geometries": [
        {
          "type": "Polygon",
          "coordinates": [
            [
              [
                -5.277611326132268,
                35.64419241702687
              ],
              [
                -5.279714742407549,
                35.6417165884363
              ],
              [
                -5.283534693077668,
                35.64063567974202
              ],
              [
                -5.291860437189365,
                35.63763651183133
              ],
              [
                -5.3119440816361685,
                35.63024091655646
              ],
              [
                -5.333573717347487,
                35.62103159201248
              ],
              [
                -5.331170424388382,
                35.60093483888316
              ],
              [
                -5.368249799083195,
                35.586417377417085
              ],
              [
                -5.360866759560127,
                35.57189614900193
              ],
              [
                -5.357863114309846,
                35.566450785573885
              ],
              [
                -5.355203423701993,
                35.56212261911611
              ],
              [
                -5.338380364655411,
                35.556815912217054
              ],
              [
                -5.259414948352099,
                35.589767774653225
              ]
            ]
          ],
          "geodesic": true,
          "evenOdd": true
        },
        {
          "type": "Polygon",
          "coordinates": [
            [
              [
                -5.391192934438191,
                35.681621970427095
              ],
              [
                -5.390098593160115,
                35.68163939986268
              ],
              [
                -5.389862558766804,
                35.68202284648249
              ],
              [
                -5.391150019093953,
                35.68240629125952
              ]
            ]
          ],
          "evenOdd": true
        },
        {
          "type": "Polygon",
          "coordinates": [
            [
              [
                -5.388145944997273,
                35.68014045448596
              ],
              [
                -5.387287638112507,
                35.679687279410054
              ],
              [
                -5.386879942342244,
                35.68040190047439
              ],
              [
                -5.386922857686482,
                35.68085507149176
              ],
              [
                -5.387995741292439,
                35.68113394468473
              ]
            ]
          ],
          "evenOdd": true
        },
        {
          "type": "Polygon",
          "coordinates": [
            [
              [
                -5.390141508504353,
                35.678641480950695
              ],
              [
                -5.38971235506197,
                35.678066285955865
              ],
              [
                -5.388939878865681,
                35.678658911037324
              ],
              [
                -5.3889827942099195,
                35.67900751197052
              ],
              [
                -5.39046337358614,
                35.67940840116104
              ]
            ]
          ],
          "evenOdd": true
        },
        {
          "type": "Polygon",
          "coordinates": [
            [
              [
                -5.38647224657198,
                35.678066285955865
              ],
              [
                -5.385914347096882,
                35.6770378966931
              ],
              [
                -5.385249159261189,
                35.677647959719174
              ],
              [
                -5.385120413228474,
                35.67813600678212
              ],
              [
                -5.386343500539265,
                35.678763491477184
              ]
            ]
          ],
          "evenOdd": true
        },
        {
          "type": "Polygon",
          "coordinates": [
            [
              [
                -5.389068624898396,
                35.67776997176472
              ],
              [
                -5.389347574635945,
                35.67707275756309
              ],
              [
                -5.388381979390584,
                35.67686359211476
              ],
              [
                -5.387824079915486,
                35.676915883528224
              ],
              [
                -5.389068624898396,
                35.677647959719174
              ]
            ]
          ],
          "evenOdd": true
        },
        {
          "type": "Polygon",
          "coordinates": [
            [
              [
                -5.387459299489461,
                35.68177883521038
              ],
              [
                -5.38672973863741,
                35.68200541713065
              ],
              [
                -5.3879099106039625,
                35.68263287139796
              ]
            ]
          ],
          "evenOdd": true
        }
      ],
      "coordinates": []
    }),
    sentinel_1 = ee.ImageCollection("COPERNICUS/S1_GRD"),
    s2_L2A = ee.ImageCollection("COPERNICUS/S2_SR_HARMONIZED"),
    s2_L1C = ee.ImageCollection("COPERNICUS/S2"),
    landsat_7 = ee.ImageCollection("LANDSAT/LE07/C02/T1_RT_TOA"),
    landsat_8 = ee.ImageCollection("LANDSAT/LC08/C02/T1_RT_TOA"),
    CGLS = ee.Image("COPERNICUS/Landcover/100m/Proba-V-C3/Global/2019"),
    other_data_50 = 
    /* color: #98ff00 */
    /* shown: false */
    ee.FeatureCollection(
        [ee.Feature(
            ee.Geometry.Point([-5.3537711969423425, 35.58979428890314]),
            {
              "land_class": 0,
              "system:index": "0"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3469047418642175, 35.601240325609304]),
            {
              "land_class": 0,
              "system:index": "1"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.321155535321249, 35.61296383669212]),
            {
              "land_class": 0,
              "system:index": "2"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.294891344647421, 35.626639094991226]),
            {
              "land_class": 0,
              "system:index": "3"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.286136614422811, 35.61296383669212]),
            {
              "land_class": 0,
              "system:index": "4"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2809867731142175, 35.627615809669585]),
            {
              "land_class": 0,
              "system:index": "5"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.360809313397421, 35.57988237408472]),
            {
              "land_class": 0,
              "system:index": "6"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.36681746159078, 35.57583349259354]),
            {
              "land_class": 0,
              "system:index": "7"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.371452318768514, 35.58309341041869]),
            {
              "land_class": 0,
              "system:index": "8"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.365100847821249, 35.566199124180315]),
            {
              "land_class": 0,
              "system:index": "9"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3743705621767175, 35.571365523769806]),
            {
              "land_class": 0,
              "system:index": "10"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3523979059267175, 35.584629077935226]),
            {
              "land_class": 0,
              "system:index": "11"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.344501482586874, 35.598867501272004]),
            {
              "land_class": 0,
              "system:index": "12"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.341068255047811, 35.62175534262153]),
            {
              "land_class": 0,
              "system:index": "13"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.333343493084921, 35.62329026836587]),
            {
              "land_class": 0,
              "system:index": "14"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.327507006268514, 35.62691815754547]),
            {
              "land_class": 0,
              "system:index": "15"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.311542498211874, 35.629987781354146]),
            {
              "land_class": 0,
              "system:index": "16"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.310169207196249, 35.62105763936144]),
            {
              "land_class": 0,
              "system:index": "17"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.312229143719686, 35.61380116460634]),
            {
              "land_class": 0,
              "system:index": "18"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.290943132977499, 35.570527751872895]),
            {
              "land_class": 0,
              "system:index": "19"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.272403704266561, 35.597052941074374]),
            {
              "land_class": 0,
              "system:index": "20"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.26519392643453, 35.59258615609236]),
            {
              "land_class": 0,
              "system:index": "21"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.32836531315328, 35.556563597243056]),
            {
              "land_class": 0,
              "system:index": "22"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.354457842450155, 35.57583349259354]),
            {
              "land_class": 0,
              "system:index": "23"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.364414202313436, 35.59928624009071]),
            {
              "land_class": 0,
              "system:index": "24"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3510246149110925, 35.61240561321317]),
            {
              "land_class": 0,
              "system:index": "25"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.332485186200155, 35.61659219435004]),
            {
              "land_class": 0,
              "system:index": "26"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.306466453352812, 35.59553092875877]),
            {
              "land_class": 0,
              "system:index": "27"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3202422788533, 35.59793874742294]),
            {
              "land_class": 0,
              "system:index": "28"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.325778358260038, 35.5957752035189]),
            {
              "land_class": 0,
              "system:index": "29"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.363068693310442, 35.7119421968863]),
            {
              "land_class": 0,
              "system:index": "30"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.367488973766985, 35.714973708486994]),
            {
              "land_class": 0,
              "system:index": "31"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.342512243420305, 35.709015110752276]),
            {
              "land_class": 0,
              "system:index": "32"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.345859640270891, 35.7073772894689]),
            {
              "land_class": 0,
              "system:index": "33"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.369185165106329, 35.68792909680677]),
            {
              "land_class": 0,
              "system:index": "34"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.360773757635626, 35.68123644118242]),
            {
              "land_class": 0,
              "system:index": "35"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.425833419500861, 35.70493706937769]),
            {
              "land_class": 0,
              "system:index": "36"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.42085523956922, 35.7123246484894]),
            {
              "land_class": 0,
              "system:index": "37"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.445231155096564, 35.70173092579091]),
            {
              "land_class": 0,
              "system:index": "38"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.452440932928595, 35.71427597016142]),
            {
              "land_class": 0,
              "system:index": "39"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.43184156769422, 35.690996376331256]),
            {
              "land_class": 0,
              "system:index": "40"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392359450995001, 35.72277759982483]),
            {
              "land_class": 0,
              "system:index": "41"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.298975661932501, 35.67524046044735]),
            {
              "land_class": 0,
              "system:index": "42"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3460108792176575, 35.66952294296959]),
            {
              "land_class": 0,
              "system:index": "43"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.347040847479376, 35.66603645082431]),
            {
              "land_class": 0,
              "system:index": "44"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.317858413397345, 35.66603645082431]),
            {
              "land_class": 0,
              "system:index": "45"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.315111831366095, 35.66715214487758]),
            {
              "land_class": 0,
              "system:index": "46"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.333822921453986, 35.683327956375]),
            {
              "land_class": 0,
              "system:index": "47"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.330561355291876, 35.678447668975316]),
            {
              "land_class": 0,
              "system:index": "48"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.337084487616095, 35.69029927770538]),
            {
              "land_class": 0,
              "system:index": "49"
            })]),
    water_data_50 = 
    /* color: #36fff7 */
    /* shown: false */
    ee.FeatureCollection(
        [ee.Feature(
            ee.Geometry.Point([-5.2734034355103905, 35.60451415201121]),
            {
              "land_class": 1,
              "system:index": "0"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2761500175416405, 35.605002645949895]),
            {
              "land_class": 1,
              "system:index": "1"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.275463372033828, 35.60172270086633]),
            {
              "land_class": 1,
              "system:index": "2"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2700560386598045, 35.602350785864]),
            {
              "land_class": 1,
              "system:index": "3"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.285848885339492, 35.597884296546525]),
            {
              "land_class": 1,
              "system:index": "4"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.288337975305312, 35.595232200572525]),
            {
              "land_class": 1,
              "system:index": "5"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268940239709609, 35.58895057011368]),
            {
              "land_class": 1,
              "system:index": "6"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.266708641809219, 35.61574875806178]),
            {
              "land_class": 1,
              "system:index": "7"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.263962059777969, 35.60863136470205]),
            {
              "land_class": 1,
              "system:index": "8"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.261730461877578, 35.6008154582779]),
            {
              "land_class": 1,
              "system:index": "9"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.256656352589779, 35.58982373153787]),
            {
              "land_class": 1,
              "system:index": "10"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.260947887013607, 35.59694279783313]),
            {
              "land_class": 1,
              "system:index": "11"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.263179484913998, 35.60699216646744]),
            {
              "land_class": 1,
              "system:index": "12"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268329326222592, 35.62192431336794]),
            {
              "land_class": 1,
              "system:index": "13"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.255283061574154, 35.586752566306295]),
            {
              "land_class": 1,
              "system:index": "14"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.252536479542904, 35.582145597578474]),
            {
              "land_class": 1,
              "system:index": "15"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.279315654347592, 35.60741086277295]),
            {
              "land_class": 1,
              "system:index": "16"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.269187633107357, 35.6064339013184]),
            {
              "land_class": 1,
              "system:index": "17"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.265926066945248, 35.58731096874713]),
            {
              "land_class": 1,
              "system:index": "18"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.277681882931877, 35.60581741345911]),
            {
              "land_class": 1,
              "system:index": "19"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268583829953362, 35.604700862872484]),
            {
              "land_class": 1,
              "system:index": "20"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268197591855217, 35.60292132817154]),
            {
              "land_class": 1,
              "system:index": "21"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.281329687192131, 35.600688130594335]),
            {
              "land_class": 1,
              "system:index": "22"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.278754766537834, 35.60124643583117]),
            {
              "land_class": 1,
              "system:index": "23"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.283947523190666, 35.59943192957045]),
            {
              "land_class": 1,
              "system:index": "24"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.28935485656469, 35.59465120648784]),
            {
              "land_class": 1,
              "system:index": "25"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.286651189877678, 35.596675197100915]),
            {
              "land_class": 1,
              "system:index": "26"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.290427740170647, 35.593708986503316]),
            {
              "land_class": 1,
              "system:index": "27"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.291715200497795, 35.592801653073145]),
            {
              "land_class": 1,
              "system:index": "28"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.292358930661369, 35.59252247148713]),
            {
              "land_class": 1,
              "system:index": "29"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3870733306791285, 35.67644240406306]),
            {
              "land_class": 1,
              "system:index": "30"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.390678219595144, 35.67825516263598]),
            {
              "land_class": 1,
              "system:index": "31"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.387416653433035, 35.68188055624548]),
            {
              "land_class": 1,
              "system:index": "32"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3925664947416285, 35.68745776322843]),
            {
              "land_class": 1,
              "system:index": "33"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392223171987722, 35.691361576128884]),
            {
              "land_class": 1,
              "system:index": "34"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393342018670904, 35.690313513217085]),
            {
              "land_class": 1,
              "system:index": "35"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393857002801763, 35.69432174640039]),
            {
              "land_class": 1,
              "system:index": "36"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392655373163091, 35.697702447343936]),
            {
              "land_class": 1,
              "system:index": "37"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.390295029229986, 35.681564409029455]),
            {
              "land_class": 1,
              "system:index": "38"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393470764703618, 35.68111124204076]),
            {
              "land_class": 1,
              "system:index": "39"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3972902303408254, 35.68797818884695]),
            {
              "land_class": 1,
              "system:index": "40"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.385531508036509, 35.67182056293219]),
            {
              "land_class": 1,
              "system:index": "41"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.390595518656626, 35.670635206807106]),
            {
              "land_class": 1,
              "system:index": "42"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3839007249554545, 35.67670125561968]),
            {
              "land_class": 1,
              "system:index": "43"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3929129472454935, 35.70347003102847]),
            {
              "land_class": 1,
              "system:index": "44"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.395402037211314, 35.70855787046381]),
            {
              "land_class": 1,
              "system:index": "45"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.339851492077532, 35.71730824227042]),
            {
              "land_class": 1,
              "system:index": "46"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340795629650774, 35.716890121844386]),
            {
              "land_class": 1,
              "system:index": "47"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338950269848528, 35.716506842859914]),
            {
              "land_class": 1,
              "system:index": "48"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.33989440742177, 35.7161932495923]),
            {
              "land_class": 1,
              "system:index": "49"
            })]),
    other_data_100 = 
    /* color: #d94d1b */
    /* shown: false */
    ee.FeatureCollection(
        [ee.Feature(
            ee.Geometry.Point([-5.3537711969423425, 35.58979428890314]),
            {
              "land_class": 0,
              "system:index": "0"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3469047418642175, 35.601240325609304]),
            {
              "land_class": 0,
              "system:index": "1"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.321155535321249, 35.61296383669212]),
            {
              "land_class": 0,
              "system:index": "2"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.294891344647421, 35.626639094991226]),
            {
              "land_class": 0,
              "system:index": "3"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.286136614422811, 35.61296383669212]),
            {
              "land_class": 0,
              "system:index": "4"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2809867731142175, 35.627615809669585]),
            {
              "land_class": 0,
              "system:index": "5"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.360809313397421, 35.57988237408472]),
            {
              "land_class": 0,
              "system:index": "6"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.36681746159078, 35.57583349259354]),
            {
              "land_class": 0,
              "system:index": "7"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.371452318768514, 35.58309341041869]),
            {
              "land_class": 0,
              "system:index": "8"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.365100847821249, 35.566199124180315]),
            {
              "land_class": 0,
              "system:index": "9"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3743705621767175, 35.571365523769806]),
            {
              "land_class": 0,
              "system:index": "10"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3523979059267175, 35.584629077935226]),
            {
              "land_class": 0,
              "system:index": "11"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.344501482586874, 35.598867501272004]),
            {
              "land_class": 0,
              "system:index": "12"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.341068255047811, 35.62175534262153]),
            {
              "land_class": 0,
              "system:index": "13"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.333343493084921, 35.62329026836587]),
            {
              "land_class": 0,
              "system:index": "14"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.327507006268514, 35.62691815754547]),
            {
              "land_class": 0,
              "system:index": "15"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.311542498211874, 35.629987781354146]),
            {
              "land_class": 0,
              "system:index": "16"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.310169207196249, 35.62105763936144]),
            {
              "land_class": 0,
              "system:index": "17"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.312229143719686, 35.61380116460634]),
            {
              "land_class": 0,
              "system:index": "18"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.290943132977499, 35.570527751872895]),
            {
              "land_class": 0,
              "system:index": "19"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.272403704266561, 35.597052941074374]),
            {
              "land_class": 0,
              "system:index": "20"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.26519392643453, 35.59258615609236]),
            {
              "land_class": 0,
              "system:index": "21"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.32836531315328, 35.556563597243056]),
            {
              "land_class": 0,
              "system:index": "22"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.354457842450155, 35.57583349259354]),
            {
              "land_class": 0,
              "system:index": "23"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.364414202313436, 35.59928624009071]),
            {
              "land_class": 0,
              "system:index": "24"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3510246149110925, 35.61240561321317]),
            {
              "land_class": 0,
              "system:index": "25"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.332485186200155, 35.61659219435004]),
            {
              "land_class": 0,
              "system:index": "26"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.306466453352812, 35.59553092875877]),
            {
              "land_class": 0,
              "system:index": "27"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3202422788533, 35.59793874742294]),
            {
              "land_class": 0,
              "system:index": "28"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.325778358260038, 35.5957752035189]),
            {
              "land_class": 0,
              "system:index": "29"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.363068693310442, 35.7119421968863]),
            {
              "land_class": 0,
              "system:index": "30"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.367488973766985, 35.714973708486994]),
            {
              "land_class": 0,
              "system:index": "31"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.342512243420305, 35.709015110752276]),
            {
              "land_class": 0,
              "system:index": "32"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.345859640270891, 35.7073772894689]),
            {
              "land_class": 0,
              "system:index": "33"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.369185165106329, 35.68792909680677]),
            {
              "land_class": 0,
              "system:index": "34"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.360773757635626, 35.68123644118242]),
            {
              "land_class": 0,
              "system:index": "35"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.425833419500861, 35.70493706937769]),
            {
              "land_class": 0,
              "system:index": "36"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.42085523956922, 35.7123246484894]),
            {
              "land_class": 0,
              "system:index": "37"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.445231155096564, 35.70173092579091]),
            {
              "land_class": 0,
              "system:index": "38"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.452440932928595, 35.71427597016142]),
            {
              "land_class": 0,
              "system:index": "39"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.43184156769422, 35.690996376331256]),
            {
              "land_class": 0,
              "system:index": "40"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392359450995001, 35.72277759982483]),
            {
              "land_class": 0,
              "system:index": "41"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.298975661932501, 35.67524046044735]),
            {
              "land_class": 0,
              "system:index": "42"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3460108792176575, 35.66952294296959]),
            {
              "land_class": 0,
              "system:index": "43"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.347040847479376, 35.66603645082431]),
            {
              "land_class": 0,
              "system:index": "44"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.317858413397345, 35.66603645082431]),
            {
              "land_class": 0,
              "system:index": "45"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.315111831366095, 35.66715214487758]),
            {
              "land_class": 0,
              "system:index": "46"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.333822921453986, 35.683327956375]),
            {
              "land_class": 0,
              "system:index": "47"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.330561355291876, 35.678447668975316]),
            {
              "land_class": 0,
              "system:index": "48"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.337084487616095, 35.69029927770538]),
            {
              "land_class": 0,
              "system:index": "49"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.418650251528825, 35.73105754374936]),
            {
              "land_class": 0,
              "system:index": "50"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.424830061099137, 35.7385820373599]),
            {
              "land_class": 0,
              "system:index": "51"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4392496167632, 35.73259036862962]),
            {
              "land_class": 0,
              "system:index": "52"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.462423902651872, 35.703740445889466]),
            {
              "land_class": 0,
              "system:index": "53"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.481134992739762, 35.70527379634642]),
            {
              "land_class": 0,
              "system:index": "54"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.468088728091325, 35.72827051384067]),
            {
              "land_class": 0,
              "system:index": "55"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.428778272769059, 35.68408306928653]),
            {
              "land_class": 0,
              "system:index": "56"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3989091931792155, 35.7483349523175]),
            {
              "land_class": 0,
              "system:index": "57"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4236284314604655, 35.76421571329732]),
            {
              "land_class": 0,
              "system:index": "58"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.406118971011247, 35.781207402368715]),
            {
              "land_class": 0,
              "system:index": "59"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.400625806948747, 35.78566363777416]),
            {
              "land_class": 0,
              "system:index": "60"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.410582166812028, 35.798752384461444]),
            {
              "land_class": 0,
              "system:index": "61"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.434958082339372, 35.79680313329086]),
            {
              "land_class": 0,
              "system:index": "62"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.509115797183122, 35.76365854726952]),
            {
              "land_class": 0,
              "system:index": "63"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.541044813296403, 35.75251440723143]),
            {
              "land_class": 0,
              "system:index": "64"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.549627882144059, 35.76839433411215]),
            {
              "land_class": 0,
              "system:index": "65"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.5623308240385905, 35.736352631893794]),
            {
              "land_class": 0,
              "system:index": "66"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.564047437808122, 35.52783838651997]),
            {
              "land_class": 0,
              "system:index": "67"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.525595289370622, 35.499613269199635]),
            {
              "land_class": 0,
              "system:index": "68"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.354620557925309, 35.529794215052725]),
            {
              "land_class": 0,
              "system:index": "69"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.320288282534684, 35.54599781740538]),
            {
              "land_class": 0,
              "system:index": "70"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.358397108218278, 35.54795320321584]),
            {
              "land_class": 0,
              "system:index": "71"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.395819288394059, 35.577557502467094]),
            {
              "land_class": 0,
              "system:index": "72"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.399939161440934, 35.57532359728583]),
            {
              "land_class": 0,
              "system:index": "73"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.414702039858903, 35.58788850348478]),
            {
              "land_class": 0,
              "system:index": "74"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.398222547671403, 35.5948681550504]),
            {
              "land_class": 0,
              "system:index": "75"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.405432325503434, 35.60826738012994]),
            {
              "land_class": 0,
              "system:index": "76"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.266729932925309, 35.55772941699306]),
            {
              "land_class": 0,
              "system:index": "77"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.331961256167497, 35.47920675989761]),
            {
              "land_class": 0,
              "system:index": "78"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.334021192690934, 35.521132326781846]),
            {
              "land_class": 0,
              "system:index": "79"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.559240919253434, 35.667978286524075]),
            {
              "land_class": 0,
              "system:index": "80"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.586706739565934, 35.63338487937362]),
            {
              "land_class": 0,
              "system:index": "81"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.619665723940934, 35.67969201142715]),
            {
              "land_class": 0,
              "system:index": "82"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.594946485659684, 35.70199911186986]),
            {
              "land_class": 0,
              "system:index": "83"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.6749406873198405, 35.63087348447821]),
            {
              "land_class": 0,
              "system:index": "84"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.680090528628434, 35.620548032091165]),
            {
              "land_class": 0,
              "system:index": "85"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.6701354287112, 35.62208333532078]),
            {
              "land_class": 0,
              "system:index": "86"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.66489975671413, 35.62089724102158]),
            {
              "land_class": 0,
              "system:index": "87"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.673311164184833, 35.61098917793177]),
            {
              "land_class": 0,
              "system:index": "88"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.64842026452663, 35.61971112912993]),
            {
              "land_class": 0,
              "system:index": "89"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.643270423218036, 35.62578104580076]),
            {
              "land_class": 0,
              "system:index": "90"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.578639914795184, 35.60715121810957]),
            {
              "land_class": 0,
              "system:index": "91"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.540874411865497, 35.63450138381172]),
            {
              "land_class": 0,
              "system:index": "92"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.554607322021747, 35.656821113984535]),
            {
              "land_class": 0,
              "system:index": "93"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.472896506592059, 35.63784974082514]),
            {
              "land_class": 0,
              "system:index": "94"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.439250876709247, 35.65626319672599]),
            {
              "land_class": 0,
              "system:index": "95"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.474956443115497, 35.665189405140026]),
            {
              "land_class": 0,
              "system:index": "96"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.642497947021747, 35.542366614774984]),
            {
              "land_class": 0,
              "system:index": "97"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.629451682373309, 35.5300739699555]),
            {
              "land_class": 0,
              "system:index": "98"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.586879660888934, 35.59040160260144]),
            {
              "land_class": 0,
              "system:index": "99"
            })]),
    water_data_100 = 
    /* color: #1f3eff */
    /* shown: false */
    ee.FeatureCollection(
        [ee.Feature(
            ee.Geometry.Point([-5.2734034355103905, 35.60451415201121]),
            {
              "land_class": 1,
              "system:index": "0"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2761500175416405, 35.605002645949895]),
            {
              "land_class": 1,
              "system:index": "1"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.275463372033828, 35.60172270086633]),
            {
              "land_class": 1,
              "system:index": "2"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2700560386598045, 35.602350785864]),
            {
              "land_class": 1,
              "system:index": "3"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.285848885339492, 35.597884296546525]),
            {
              "land_class": 1,
              "system:index": "4"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.288337975305312, 35.595232200572525]),
            {
              "land_class": 1,
              "system:index": "5"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268940239709609, 35.58895057011368]),
            {
              "land_class": 1,
              "system:index": "6"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.266708641809219, 35.61574875806178]),
            {
              "land_class": 1,
              "system:index": "7"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.263962059777969, 35.60863136470205]),
            {
              "land_class": 1,
              "system:index": "8"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.261730461877578, 35.6008154582779]),
            {
              "land_class": 1,
              "system:index": "9"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.256656352589779, 35.58982373153787]),
            {
              "land_class": 1,
              "system:index": "10"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.260947887013607, 35.59694279783313]),
            {
              "land_class": 1,
              "system:index": "11"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.263179484913998, 35.60699216646744]),
            {
              "land_class": 1,
              "system:index": "12"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268329326222592, 35.62192431336794]),
            {
              "land_class": 1,
              "system:index": "13"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.255283061574154, 35.586752566306295]),
            {
              "land_class": 1,
              "system:index": "14"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.252536479542904, 35.582145597578474]),
            {
              "land_class": 1,
              "system:index": "15"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.279315654347592, 35.60741086277295]),
            {
              "land_class": 1,
              "system:index": "16"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.269187633107357, 35.6064339013184]),
            {
              "land_class": 1,
              "system:index": "17"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.265926066945248, 35.58731096874713]),
            {
              "land_class": 1,
              "system:index": "18"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.277681882931877, 35.60581741345911]),
            {
              "land_class": 1,
              "system:index": "19"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268583829953362, 35.604700862872484]),
            {
              "land_class": 1,
              "system:index": "20"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268197591855217, 35.60292132817154]),
            {
              "land_class": 1,
              "system:index": "21"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.281329687192131, 35.600688130594335]),
            {
              "land_class": 1,
              "system:index": "22"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.278754766537834, 35.60124643583117]),
            {
              "land_class": 1,
              "system:index": "23"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.283947523190666, 35.59943192957045]),
            {
              "land_class": 1,
              "system:index": "24"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.28935485656469, 35.59465120648784]),
            {
              "land_class": 1,
              "system:index": "25"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.286651189877678, 35.596675197100915]),
            {
              "land_class": 1,
              "system:index": "26"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.290427740170647, 35.593708986503316]),
            {
              "land_class": 1,
              "system:index": "27"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.291715200497795, 35.592801653073145]),
            {
              "land_class": 1,
              "system:index": "28"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.292358930661369, 35.59252247148713]),
            {
              "land_class": 1,
              "system:index": "29"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3870733306791285, 35.67644240406306]),
            {
              "land_class": 1,
              "system:index": "30"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.390678219595144, 35.67825516263598]),
            {
              "land_class": 1,
              "system:index": "31"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.387416653433035, 35.68188055624548]),
            {
              "land_class": 1,
              "system:index": "32"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3925664947416285, 35.68745776322843]),
            {
              "land_class": 1,
              "system:index": "33"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392223171987722, 35.691361576128884]),
            {
              "land_class": 1,
              "system:index": "34"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393342018670904, 35.690313513217085]),
            {
              "land_class": 1,
              "system:index": "35"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393857002801763, 35.69432174640039]),
            {
              "land_class": 1,
              "system:index": "36"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392655373163091, 35.697702447343936]),
            {
              "land_class": 1,
              "system:index": "37"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.390295029229986, 35.681564409029455]),
            {
              "land_class": 1,
              "system:index": "38"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393470764703618, 35.68111124204076]),
            {
              "land_class": 1,
              "system:index": "39"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3972902303408254, 35.68797818884695]),
            {
              "land_class": 1,
              "system:index": "40"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.385531508036509, 35.67182056293219]),
            {
              "land_class": 1,
              "system:index": "41"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.390595518656626, 35.670635206807106]),
            {
              "land_class": 1,
              "system:index": "42"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3839007249554545, 35.67670125561968]),
            {
              "land_class": 1,
              "system:index": "43"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3929129472454935, 35.70347003102847]),
            {
              "land_class": 1,
              "system:index": "44"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.395402037211314, 35.70855787046381]),
            {
              "land_class": 1,
              "system:index": "45"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.339851492077532, 35.71730824227042]),
            {
              "land_class": 1,
              "system:index": "46"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340795629650774, 35.716890121844386]),
            {
              "land_class": 1,
              "system:index": "47"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338950269848528, 35.716506842859914]),
            {
              "land_class": 1,
              "system:index": "48"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.33989440742177, 35.7161932495923]),
            {
              "land_class": 1,
              "system:index": "49"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.49327279125408, 35.56882242410755]),
            {
              "land_class": 1,
              "system:index": "50"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.494903574335135, 35.56777517462691]),
            {
              "land_class": 1,
              "system:index": "51"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.493101129877127, 35.56512208134864]),
            {
              "land_class": 1,
              "system:index": "52"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.491985330926932, 35.56857806711973]),
            {
              "land_class": 1,
              "system:index": "53"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.492671976434744, 35.56753081444523]),
            {
              "land_class": 1,
              "system:index": "54"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.49653435741619, 35.56679772942878]),
            {
              "land_class": 1,
              "system:index": "55"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.494946489679373, 35.56508717164104]),
            {
              "land_class": 1,
              "system:index": "56"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.494345674860037, 35.56756572308823]),
            {
              "land_class": 1,
              "system:index": "57"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.490397463190115, 35.567844991684815]),
            {
              "land_class": 1,
              "system:index": "58"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.401047251887993, 35.44756206003779]),
            {
              "land_class": 1,
              "system:index": "59"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.405252955623345, 35.44595384527445]),
            {
              "land_class": 1,
              "system:index": "60"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.401218913264946, 35.446513227967365]),
            {
              "land_class": 1,
              "system:index": "61"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.400532267757134, 35.44455537153325]),
            {
              "land_class": 1,
              "system:index": "62"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.402592204280571, 35.44511476394552]),
            {
              "land_class": 1,
              "system:index": "63"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.406540415950493, 35.44616361423989]),
            {
              "land_class": 1,
              "system:index": "64"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.401520826305135, 35.44873063423044]),
            {
              "land_class": 1,
              "system:index": "65"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4032588977467855, 35.44757693495297]),
            {
              "land_class": 1,
              "system:index": "66"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.397636987651571, 35.44317174922327]),
            {
              "land_class": 1,
              "system:index": "67"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.399310686076864, 35.44584635502717]),
            {
              "land_class": 1,
              "system:index": "68"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.403280355418905, 35.44656306435917]),
            {
              "land_class": 1,
              "system:index": "69"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.414073564494832, 35.44745457193832]),
            {
              "land_class": 1,
              "system:index": "70"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.412485696758016, 35.44731472826522]),
            {
              "land_class": 1,
              "system:index": "71"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.414674379314168, 35.44703504019004]),
            {
              "land_class": 1,
              "system:index": "72"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.417549707378133, 35.448608272969885]),
            {
              "land_class": 1,
              "system:index": "73"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.416927434886678, 35.448398510376116]),
            {
              "land_class": 1,
              "system:index": "74"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.42040389840182, 35.47095553792173]),
            {
              "land_class": 1,
              "system:index": "75"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4254355376739944, 35.476486743793224]),
            {
              "land_class": 1,
              "system:index": "76"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.428096289016768, 35.47795455781676]),
            {
              "land_class": 1,
              "system:index": "77"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.432988638259932, 35.47837392832973]),
            {
              "land_class": 1,
              "system:index": "78"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.43152951655583, 35.477255602100236]),
            {
              "land_class": 1,
              "system:index": "79"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.439108768968293, 35.482473924364164]),
            {
              "land_class": 1,
              "system:index": "80"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.434216419725129, 35.48659740754471]),
            {
              "land_class": 1,
              "system:index": "81"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.503858667513932, 35.70507293061094]),
            {
              "land_class": 1,
              "system:index": "82"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.5061760961027995, 35.70723351618664]),
            {
              "land_class": 1,
              "system:index": "83"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.5028286992522135, 35.710509131009104]),
            {
              "land_class": 1,
              "system:index": "84"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.499052148959245, 35.71232111542145]),
            {
              "land_class": 1,
              "system:index": "85"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.498880487582292, 35.716850896222375]),
            {
              "land_class": 1,
              "system:index": "86"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.507463556429948, 35.711484820042294]),
            {
              "land_class": 1,
              "system:index": "87"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.510467630526628, 35.70890618738265]),
            {
              "land_class": 1,
              "system:index": "88"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.506605249545182, 35.70549111303439]),
            {
              "land_class": 1,
              "system:index": "89"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.517334085604753, 35.71315740202535]),
            {
              "land_class": 1,
              "system:index": "90"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.510725122592057, 35.710996977018674]),
            {
              "land_class": 1,
              "system:index": "91"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.503601175448503, 35.70346987766617]),
            {
              "land_class": 1,
              "system:index": "92"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.5048028050871745, 35.70869710540265]),
            {
              "land_class": 1,
              "system:index": "93"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.505746942660417, 35.71211204239933]),
            {
              "land_class": 1,
              "system:index": "94"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.50016794790944, 35.71190296882877]),
            {
              "land_class": 1,
              "system:index": "95"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.505596738955583, 35.71096213097418]),
            {
              "land_class": 1,
              "system:index": "96"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.50915871252736, 35.70876679945692]),
            {
              "land_class": 1,
              "system:index": "97"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.51314983954152, 35.71163340100012]),
            {
              "land_class": 1,
              "system:index": "98"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.511583429476823, 35.70905477314744]),
            {
              "land_class": 1,
              "system:index": "99"
            })]),
    other_data_200 = 
    /* color: #1b2435 */
    /* shown: false */
    ee.FeatureCollection(
        [ee.Feature(
            ee.Geometry.Point([-5.3537711969423425, 35.58979428890314]),
            {
              "land_class": 0,
              "system:index": "0"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3469047418642175, 35.601240325609304]),
            {
              "land_class": 0,
              "system:index": "1"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.321155535321249, 35.61296383669212]),
            {
              "land_class": 0,
              "system:index": "2"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.294891344647421, 35.626639094991226]),
            {
              "land_class": 0,
              "system:index": "3"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.286136614422811, 35.61296383669212]),
            {
              "land_class": 0,
              "system:index": "4"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2809867731142175, 35.627615809669585]),
            {
              "land_class": 0,
              "system:index": "5"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.360809313397421, 35.57988237408472]),
            {
              "land_class": 0,
              "system:index": "6"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.36681746159078, 35.57583349259354]),
            {
              "land_class": 0,
              "system:index": "7"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.371452318768514, 35.58309341041869]),
            {
              "land_class": 0,
              "system:index": "8"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.365100847821249, 35.566199124180315]),
            {
              "land_class": 0,
              "system:index": "9"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3743705621767175, 35.571365523769806]),
            {
              "land_class": 0,
              "system:index": "10"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3523979059267175, 35.584629077935226]),
            {
              "land_class": 0,
              "system:index": "11"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.344501482586874, 35.598867501272004]),
            {
              "land_class": 0,
              "system:index": "12"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.341068255047811, 35.62175534262153]),
            {
              "land_class": 0,
              "system:index": "13"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.333343493084921, 35.62329026836587]),
            {
              "land_class": 0,
              "system:index": "14"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.327507006268514, 35.62691815754547]),
            {
              "land_class": 0,
              "system:index": "15"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.311542498211874, 35.629987781354146]),
            {
              "land_class": 0,
              "system:index": "16"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.310169207196249, 35.62105763936144]),
            {
              "land_class": 0,
              "system:index": "17"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.312229143719686, 35.61380116460634]),
            {
              "land_class": 0,
              "system:index": "18"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.290943132977499, 35.570527751872895]),
            {
              "land_class": 0,
              "system:index": "19"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.272403704266561, 35.597052941074374]),
            {
              "land_class": 0,
              "system:index": "20"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.26519392643453, 35.59258615609236]),
            {
              "land_class": 0,
              "system:index": "21"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.32836531315328, 35.556563597243056]),
            {
              "land_class": 0,
              "system:index": "22"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.354457842450155, 35.57583349259354]),
            {
              "land_class": 0,
              "system:index": "23"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.364414202313436, 35.59928624009071]),
            {
              "land_class": 0,
              "system:index": "24"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3510246149110925, 35.61240561321317]),
            {
              "land_class": 0,
              "system:index": "25"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.332485186200155, 35.61659219435004]),
            {
              "land_class": 0,
              "system:index": "26"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.306466453352812, 35.59553092875877]),
            {
              "land_class": 0,
              "system:index": "27"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3202422788533, 35.59793874742294]),
            {
              "land_class": 0,
              "system:index": "28"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.325778358260038, 35.5957752035189]),
            {
              "land_class": 0,
              "system:index": "29"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.363068693310442, 35.7119421968863]),
            {
              "land_class": 0,
              "system:index": "30"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.367488973766985, 35.714973708486994]),
            {
              "land_class": 0,
              "system:index": "31"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.342512243420305, 35.709015110752276]),
            {
              "land_class": 0,
              "system:index": "32"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.345859640270891, 35.7073772894689]),
            {
              "land_class": 0,
              "system:index": "33"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.369185165106329, 35.68792909680677]),
            {
              "land_class": 0,
              "system:index": "34"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.360773757635626, 35.68123644118242]),
            {
              "land_class": 0,
              "system:index": "35"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.425833419500861, 35.70493706937769]),
            {
              "land_class": 0,
              "system:index": "36"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.42085523956922, 35.7123246484894]),
            {
              "land_class": 0,
              "system:index": "37"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.445231155096564, 35.70173092579091]),
            {
              "land_class": 0,
              "system:index": "38"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.452440932928595, 35.71427597016142]),
            {
              "land_class": 0,
              "system:index": "39"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.43184156769422, 35.690996376331256]),
            {
              "land_class": 0,
              "system:index": "40"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392359450995001, 35.72277759982483]),
            {
              "land_class": 0,
              "system:index": "41"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.298975661932501, 35.67524046044735]),
            {
              "land_class": 0,
              "system:index": "42"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3460108792176575, 35.66952294296959]),
            {
              "land_class": 0,
              "system:index": "43"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.347040847479376, 35.66603645082431]),
            {
              "land_class": 0,
              "system:index": "44"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.317858413397345, 35.66603645082431]),
            {
              "land_class": 0,
              "system:index": "45"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.315111831366095, 35.66715214487758]),
            {
              "land_class": 0,
              "system:index": "46"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.333822921453986, 35.683327956375]),
            {
              "land_class": 0,
              "system:index": "47"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.330561355291876, 35.678447668975316]),
            {
              "land_class": 0,
              "system:index": "48"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.337084487616095, 35.69029927770538]),
            {
              "land_class": 0,
              "system:index": "49"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.418650251528825, 35.73105754374936]),
            {
              "land_class": 0,
              "system:index": "50"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.424830061099137, 35.7385820373599]),
            {
              "land_class": 0,
              "system:index": "51"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4392496167632, 35.73259036862962]),
            {
              "land_class": 0,
              "system:index": "52"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.462423902651872, 35.703740445889466]),
            {
              "land_class": 0,
              "system:index": "53"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.481134992739762, 35.70527379634642]),
            {
              "land_class": 0,
              "system:index": "54"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.468088728091325, 35.72827051384067]),
            {
              "land_class": 0,
              "system:index": "55"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.428778272769059, 35.68408306928653]),
            {
              "land_class": 0,
              "system:index": "56"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3989091931792155, 35.7483349523175]),
            {
              "land_class": 0,
              "system:index": "57"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4236284314604655, 35.76421571329732]),
            {
              "land_class": 0,
              "system:index": "58"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.406118971011247, 35.781207402368715]),
            {
              "land_class": 0,
              "system:index": "59"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.400625806948747, 35.78566363777416]),
            {
              "land_class": 0,
              "system:index": "60"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.410582166812028, 35.798752384461444]),
            {
              "land_class": 0,
              "system:index": "61"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.434958082339372, 35.79680313329086]),
            {
              "land_class": 0,
              "system:index": "62"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.509115797183122, 35.76365854726952]),
            {
              "land_class": 0,
              "system:index": "63"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.541044813296403, 35.75251440723143]),
            {
              "land_class": 0,
              "system:index": "64"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.549627882144059, 35.76839433411215]),
            {
              "land_class": 0,
              "system:index": "65"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.5623308240385905, 35.736352631893794]),
            {
              "land_class": 0,
              "system:index": "66"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.564047437808122, 35.52783838651997]),
            {
              "land_class": 0,
              "system:index": "67"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.525595289370622, 35.499613269199635]),
            {
              "land_class": 0,
              "system:index": "68"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.354620557925309, 35.529794215052725]),
            {
              "land_class": 0,
              "system:index": "69"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.320288282534684, 35.54599781740538]),
            {
              "land_class": 0,
              "system:index": "70"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.358397108218278, 35.54795320321584]),
            {
              "land_class": 0,
              "system:index": "71"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.395819288394059, 35.577557502467094]),
            {
              "land_class": 0,
              "system:index": "72"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.399939161440934, 35.57532359728583]),
            {
              "land_class": 0,
              "system:index": "73"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.414702039858903, 35.58788850348478]),
            {
              "land_class": 0,
              "system:index": "74"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.398222547671403, 35.5948681550504]),
            {
              "land_class": 0,
              "system:index": "75"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.405432325503434, 35.60826738012994]),
            {
              "land_class": 0,
              "system:index": "76"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.266729932925309, 35.55772941699306]),
            {
              "land_class": 0,
              "system:index": "77"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.331961256167497, 35.47920675989761]),
            {
              "land_class": 0,
              "system:index": "78"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.334021192690934, 35.521132326781846]),
            {
              "land_class": 0,
              "system:index": "79"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.559240919253434, 35.667978286524075]),
            {
              "land_class": 0,
              "system:index": "80"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.586706739565934, 35.63338487937362]),
            {
              "land_class": 0,
              "system:index": "81"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.619665723940934, 35.67969201142715]),
            {
              "land_class": 0,
              "system:index": "82"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.594946485659684, 35.70199911186986]),
            {
              "land_class": 0,
              "system:index": "83"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.6749406873198405, 35.63087348447821]),
            {
              "land_class": 0,
              "system:index": "84"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.680090528628434, 35.620548032091165]),
            {
              "land_class": 0,
              "system:index": "85"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.6701354287112, 35.62208333532078]),
            {
              "land_class": 0,
              "system:index": "86"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.66489975671413, 35.62089724102158]),
            {
              "land_class": 0,
              "system:index": "87"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.673311164184833, 35.61098917793177]),
            {
              "land_class": 0,
              "system:index": "88"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.64842026452663, 35.61971112912993]),
            {
              "land_class": 0,
              "system:index": "89"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.643270423218036, 35.62578104580076]),
            {
              "land_class": 0,
              "system:index": "90"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.578639914795184, 35.60715121810957]),
            {
              "land_class": 0,
              "system:index": "91"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.540874411865497, 35.63450138381172]),
            {
              "land_class": 0,
              "system:index": "92"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.554607322021747, 35.656821113984535]),
            {
              "land_class": 0,
              "system:index": "93"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.472896506592059, 35.63784974082514]),
            {
              "land_class": 0,
              "system:index": "94"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.439250876709247, 35.65626319672599]),
            {
              "land_class": 0,
              "system:index": "95"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.474956443115497, 35.665189405140026]),
            {
              "land_class": 0,
              "system:index": "96"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.642497947021747, 35.542366614774984]),
            {
              "land_class": 0,
              "system:index": "97"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.629451682373309, 35.5300739699555]),
            {
              "land_class": 0,
              "system:index": "98"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.586879660888934, 35.59040160260144]),
            {
              "land_class": 0,
              "system:index": "99"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.559506110481092, 35.58029919253672]),
            {
              "land_class": 0,
              "system:index": "100"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.549893073371717, 35.59928422089405]),
            {
              "land_class": 0,
              "system:index": "101"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.501827887824842, 35.59705092182135]),
            {
              "land_class": 0,
              "system:index": "102"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.51109760218031, 35.61631107699132]),
            {
              "land_class": 0,
              "system:index": "103"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.536160163215467, 35.61491556938854]),
            {
              "land_class": 0,
              "system:index": "104"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.51659076624281, 35.56270610494089]),
            {
              "land_class": 0,
              "system:index": "105"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.53581684046156, 35.57248051946527]),
            {
              "land_class": 0,
              "system:index": "106"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.575642279914685, 35.56940868909938]),
            {
              "land_class": 0,
              "system:index": "107"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.584911994270154, 35.540080744690535]),
            {
              "land_class": 0,
              "system:index": "108"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.603451422981092, 35.52555245717466]),
            {
              "land_class": 0,
              "system:index": "109"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.60997455530531, 35.550137248623635]),
            {
              "land_class": 0,
              "system:index": "110"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.560879401496717, 35.577088044168555]),
            {
              "land_class": 0,
              "system:index": "111"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.601391486457654, 35.57918228596756]),
            {
              "land_class": 0,
              "system:index": "112"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.623020819953748, 35.58141608352974]),
            {
              "land_class": 0,
              "system:index": "113"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.624394110969373, 35.570525731950916]),
            {
              "land_class": 0,
              "system:index": "114"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.606369666389295, 35.565359278209144]),
            {
              "land_class": 0,
              "system:index": "115"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.547661475471326, 35.56521963970079]),
            {
              "land_class": 0,
              "system:index": "116"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.54731815271742, 35.574854125894404]),
            {
              "land_class": 0,
              "system:index": "117"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.6687458219517195, 35.523334414152046]),
            {
              "land_class": 0,
              "system:index": "118"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.6756122770298445, 35.54652318542485]),
            {
              "land_class": 0,
              "system:index": "119"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.707884615897032, 35.59343897441822]),
            {
              "land_class": 0,
              "system:index": "120"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7566364469517195, 35.59511403015104]),
            {
              "land_class": 0,
              "system:index": "121"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7950885953892195, 35.606559306147936]),
            {
              "land_class": 0,
              "system:index": "122"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.876456088065001, 35.5604890892526]),
            {
              "land_class": 0,
              "system:index": "123"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8884723844517195, 35.589251181736074]),
            {
              "land_class": 0,
              "system:index": "124"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.485068148611876, 35.50796466883182]),
            {
              "land_class": 0,
              "system:index": "125"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.474425143240782, 35.487560280834764]),
            {
              "land_class": 0,
              "system:index": "126"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.489531344412657, 35.48588297736586]),
            {
              "land_class": 0,
              "system:index": "127"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4366596403110945, 35.61856112958125]),
            {
              "land_class": 0,
              "system:index": "128"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4421528043735945, 35.597347383268584]),
            {
              "land_class": 0,
              "system:index": "129"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.413657015799376, 35.57026377420393]),
            {
              "land_class": 0,
              "system:index": "130"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.402670687674376, 35.57054303339642]),
            {
              "land_class": 0,
              "system:index": "131"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.247060965766397, 35.503616714129464]),
            {
              "land_class": 0,
              "system:index": "132"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.291006278266397, 35.54189796131469]),
            {
              "land_class": 0,
              "system:index": "133"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.300962638129678, 35.53770747408704]),
            {
              "land_class": 0,
              "system:index": "134"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.361044120063272, 35.50585261737626]),
            {
              "land_class": 0,
              "system:index": "135"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.382330130805459, 35.5310022391569]),
            {
              "land_class": 0,
              "system:index": "136"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.389539908637491, 35.55139558845236]),
            {
              "land_class": 0,
              "system:index": "137"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.406019400824991, 35.5483229498316]),
            {
              "land_class": 0,
              "system:index": "138"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.408079337348428, 35.53463431097851]),
            {
              "land_class": 0,
              "system:index": "139"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.411512564887491, 35.52597294518712]),
            {
              "land_class": 0,
              "system:index": "140"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.421812247504678, 35.50808845837393]),
            {
              "land_class": 0,
              "system:index": "141"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.389539908637491, 35.49187720087566]),
            {
              "land_class": 0,
              "system:index": "142"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.254614066352334, 35.511022905212734]),
            {
              "land_class": 0,
              "system:index": "143"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2492925636667875, 35.519127010783336]),
            {
              "land_class": 0,
              "system:index": "144"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.273496817817178, 35.52848763157473]),
            {
              "land_class": 0,
              "system:index": "145"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.298216056098428, 35.52653177119459]),
            {
              "land_class": 0,
              "system:index": "146"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.287058066596475, 35.5082281963694]),
            {
              "land_class": 0,
              "system:index": "147"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2259466164011625, 35.528627334063394]),
            {
              "land_class": 0,
              "system:index": "148"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.229551505317178, 35.53114193726744]),
            {
              "land_class": 0,
              "system:index": "149"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.226118277778116, 35.51828869297241]),
            {
              "land_class": 0,
              "system:index": "150"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.169985007514444, 35.44825827746202]),
            {
              "land_class": 0,
              "system:index": "151"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.1861211769480375, 35.4449019957589]),
            {
              "land_class": 0,
              "system:index": "152"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2135869972605375, 35.45133474606942]),
            {
              "land_class": 0,
              "system:index": "153"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2671453468699125, 35.448817644138465]),
            {
              "land_class": 0,
              "system:index": "154"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2849981300730375, 35.47761977142848]),
            {
              "land_class": 0,
              "system:index": "155"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2547857277292875, 35.486565905123385]),
            {
              "land_class": 0,
              "system:index": "156"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3591558449167875, 35.46028380417303]),
            {
              "land_class": 0,
              "system:index": "157"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3701421730417875, 35.48013597216909]),
            {
              "land_class": 0,
              "system:index": "158"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.364992331733194, 35.49495200111678]),
            {
              "land_class": 0,
              "system:index": "159"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.384905051459756, 35.54860228548104]),
            {
              "land_class": 0,
              "system:index": "160"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4127141945261625, 35.54608822960323]),
            {
              "land_class": 0,
              "system:index": "161"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4195806496042875, 35.53128163513474]),
            {
              "land_class": 0,
              "system:index": "162"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2232000343699125, 35.42727922076987]),
            {
              "land_class": 0,
              "system:index": "163"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.1421758644480375, 35.43455257947983]),
            {
              "land_class": 0,
              "system:index": "164"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.146982383002725, 35.45636871373207]),
            {
              "land_class": 0,
              "system:index": "165"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.1600286476511625, 35.472587133677855]),
            {
              "land_class": 0,
              "system:index": "166"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.1737615578074125, 35.466156082581755]),
            {
              "land_class": 0,
              "system:index": "167"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.5088445656199125, 35.47706060501283]),
            {
              "land_class": 0,
              "system:index": "168"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.480348777045694, 35.474544308013655]),
            {
              "land_class": 0,
              "system:index": "169"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.465242575873819, 35.43902816600888]),
            {
              "land_class": 0,
              "system:index": "170"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.49991817401835, 35.435671499435976]),
            {
              "land_class": 0,
              "system:index": "171"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.458376120795694, 35.41329014626228]),
            {
              "land_class": 0,
              "system:index": "172"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.337526511420694, 35.44895748520008]),
            {
              "land_class": 0,
              "system:index": "173"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.356924247016397, 35.45231359778013]),
            {
              "land_class": 0,
              "system:index": "174"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3666231148142485, 35.452872936268726]),
            {
              "land_class": 0,
              "system:index": "175"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.374519538154092, 35.456228885549656]),
            {
              "land_class": 0,
              "system:index": "176"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.378639411200967, 35.46042362530781]),
            {
              "land_class": 0,
              "system:index": "177"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.381385993232217, 35.465876459998114]),
            {
              "land_class": 0,
              "system:index": "178"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.164804374540492, 35.505824887508396]),
            {
              "land_class": 0,
              "system:index": "179"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.16411772903268, 35.501912014625496]),
            {
              "land_class": 0,
              "system:index": "180"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.169954215849086, 35.50386847489611]),
            {
              "land_class": 0,
              "system:index": "181"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.183687126005336, 35.51253222606364]),
            {
              "land_class": 0,
              "system:index": "182"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.20256987747018, 35.516863751109405]),
            {
              "land_class": 0,
              "system:index": "183"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.225572501981898, 35.524408430151425]),
            {
              "land_class": 0,
              "system:index": "184"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.230722343290492, 35.519658159369456]),
            {
              "land_class": 0,
              "system:index": "185"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.233640586698695, 35.51071571052651]),
            {
              "land_class": 0,
              "system:index": "186"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.244283592069789, 35.52217304362891]),
            {
              "land_class": 0,
              "system:index": "187"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.23827544387643, 35.51812124686466]),
            {
              "land_class": 0,
              "system:index": "188"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.243425285185023, 35.51365006135171]),
            {
              "land_class": 0,
              "system:index": "189"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.226945792997523, 35.49366640844818]),
            {
              "land_class": 0,
              "system:index": "190"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.240163719022914, 35.49184946618302]),
            {
              "land_class": 0,
              "system:index": "191"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.241794502103969, 35.49101086358739]),
            {
              "land_class": 0,
              "system:index": "192"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.236215507352992, 35.4877262524848]),
            {
              "land_class": 0,
              "system:index": "193"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.24050704177682, 35.49122051505681]),
            {
              "land_class": 0,
              "system:index": "194"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.210037147367641, 35.529158419777175]),
            {
              "land_class": 0,
              "system:index": "195"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.222225105131312, 35.53767975522269]),
            {
              "land_class": 0,
              "system:index": "196"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.235099708402797, 35.541590884798076]),
            {
              "land_class": 0,
              "system:index": "197"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.341014777982875, 35.52384958935789]),
            {
              "land_class": 0,
              "system:index": "198"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340499793852016, 35.53446689897442]),
            {
              "land_class": 0,
              "system:index": "199"
            })]),
    water_data_200 = 
    /* color: #66acff */
    /* shown: false */
    ee.FeatureCollection(
        [ee.Feature(
            ee.Geometry.Point([-5.2734034355103905, 35.60451415201121]),
            {
              "land_class": 1,
              "system:index": "0"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2761500175416405, 35.605002645949895]),
            {
              "land_class": 1,
              "system:index": "1"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.275463372033828, 35.60172270086633]),
            {
              "land_class": 1,
              "system:index": "2"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2700560386598045, 35.602350785864]),
            {
              "land_class": 1,
              "system:index": "3"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.285848885339492, 35.597884296546525]),
            {
              "land_class": 1,
              "system:index": "4"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.288337975305312, 35.595232200572525]),
            {
              "land_class": 1,
              "system:index": "5"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268940239709609, 35.58895057011368]),
            {
              "land_class": 1,
              "system:index": "6"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.266708641809219, 35.61574875806178]),
            {
              "land_class": 1,
              "system:index": "7"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.263962059777969, 35.60863136470205]),
            {
              "land_class": 1,
              "system:index": "8"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.261730461877578, 35.6008154582779]),
            {
              "land_class": 1,
              "system:index": "9"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.256656352589779, 35.58982373153787]),
            {
              "land_class": 1,
              "system:index": "10"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.260947887013607, 35.59694279783313]),
            {
              "land_class": 1,
              "system:index": "11"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.263179484913998, 35.60699216646744]),
            {
              "land_class": 1,
              "system:index": "12"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268329326222592, 35.62192431336794]),
            {
              "land_class": 1,
              "system:index": "13"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.255283061574154, 35.586752566306295]),
            {
              "land_class": 1,
              "system:index": "14"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.252536479542904, 35.582145597578474]),
            {
              "land_class": 1,
              "system:index": "15"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.279315654347592, 35.60741086277295]),
            {
              "land_class": 1,
              "system:index": "16"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.269187633107357, 35.6064339013184]),
            {
              "land_class": 1,
              "system:index": "17"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.265926066945248, 35.58731096874713]),
            {
              "land_class": 1,
              "system:index": "18"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.277681882931877, 35.60581741345911]),
            {
              "land_class": 1,
              "system:index": "19"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268583829953362, 35.604700862872484]),
            {
              "land_class": 1,
              "system:index": "20"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268197591855217, 35.60292132817154]),
            {
              "land_class": 1,
              "system:index": "21"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.281329687192131, 35.600688130594335]),
            {
              "land_class": 1,
              "system:index": "22"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.278754766537834, 35.60124643583117]),
            {
              "land_class": 1,
              "system:index": "23"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.283947523190666, 35.59943192957045]),
            {
              "land_class": 1,
              "system:index": "24"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.28935485656469, 35.59465120648784]),
            {
              "land_class": 1,
              "system:index": "25"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.286651189877678, 35.596675197100915]),
            {
              "land_class": 1,
              "system:index": "26"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.290427740170647, 35.593708986503316]),
            {
              "land_class": 1,
              "system:index": "27"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.291715200497795, 35.592801653073145]),
            {
              "land_class": 1,
              "system:index": "28"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.292358930661369, 35.59252247148713]),
            {
              "land_class": 1,
              "system:index": "29"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3870733306791285, 35.67644240406306]),
            {
              "land_class": 1,
              "system:index": "30"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.390678219595144, 35.67825516263598]),
            {
              "land_class": 1,
              "system:index": "31"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.387416653433035, 35.68188055624548]),
            {
              "land_class": 1,
              "system:index": "32"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3925664947416285, 35.68745776322843]),
            {
              "land_class": 1,
              "system:index": "33"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392223171987722, 35.691361576128884]),
            {
              "land_class": 1,
              "system:index": "34"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393342018670904, 35.690313513217085]),
            {
              "land_class": 1,
              "system:index": "35"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393857002801763, 35.69432174640039]),
            {
              "land_class": 1,
              "system:index": "36"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392655373163091, 35.697702447343936]),
            {
              "land_class": 1,
              "system:index": "37"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.390295029229986, 35.681564409029455]),
            {
              "land_class": 1,
              "system:index": "38"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393470764703618, 35.68111124204076]),
            {
              "land_class": 1,
              "system:index": "39"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3972902303408254, 35.68797818884695]),
            {
              "land_class": 1,
              "system:index": "40"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.385531508036509, 35.67182056293219]),
            {
              "land_class": 1,
              "system:index": "41"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.390595518656626, 35.670635206807106]),
            {
              "land_class": 1,
              "system:index": "42"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3839007249554545, 35.67670125561968]),
            {
              "land_class": 1,
              "system:index": "43"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3929129472454935, 35.70347003102847]),
            {
              "land_class": 1,
              "system:index": "44"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.395402037211314, 35.70855787046381]),
            {
              "land_class": 1,
              "system:index": "45"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.339851492077532, 35.71730824227042]),
            {
              "land_class": 1,
              "system:index": "46"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340795629650774, 35.716890121844386]),
            {
              "land_class": 1,
              "system:index": "47"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338950269848528, 35.716506842859914]),
            {
              "land_class": 1,
              "system:index": "48"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.33989440742177, 35.7161932495923]),
            {
              "land_class": 1,
              "system:index": "49"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.49327279125408, 35.56882242410755]),
            {
              "land_class": 1,
              "system:index": "50"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.494903574335135, 35.56777517462691]),
            {
              "land_class": 1,
              "system:index": "51"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.493101129877127, 35.56512208134864]),
            {
              "land_class": 1,
              "system:index": "52"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.491985330926932, 35.56857806711973]),
            {
              "land_class": 1,
              "system:index": "53"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.492671976434744, 35.56753081444523]),
            {
              "land_class": 1,
              "system:index": "54"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.49653435741619, 35.56679772942878]),
            {
              "land_class": 1,
              "system:index": "55"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.494946489679373, 35.56508717164104]),
            {
              "land_class": 1,
              "system:index": "56"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.494345674860037, 35.56756572308823]),
            {
              "land_class": 1,
              "system:index": "57"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.490397463190115, 35.567844991684815]),
            {
              "land_class": 1,
              "system:index": "58"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.401047251887993, 35.44756206003779]),
            {
              "land_class": 1,
              "system:index": "59"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.405252955623345, 35.44595384527445]),
            {
              "land_class": 1,
              "system:index": "60"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.401218913264946, 35.446513227967365]),
            {
              "land_class": 1,
              "system:index": "61"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.400532267757134, 35.44455537153325]),
            {
              "land_class": 1,
              "system:index": "62"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.402592204280571, 35.44511476394552]),
            {
              "land_class": 1,
              "system:index": "63"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.406540415950493, 35.44616361423989]),
            {
              "land_class": 1,
              "system:index": "64"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.401520826305135, 35.44873063423044]),
            {
              "land_class": 1,
              "system:index": "65"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4032588977467855, 35.44757693495297]),
            {
              "land_class": 1,
              "system:index": "66"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.397636987651571, 35.44317174922327]),
            {
              "land_class": 1,
              "system:index": "67"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.399310686076864, 35.44584635502717]),
            {
              "land_class": 1,
              "system:index": "68"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.403280355418905, 35.44656306435917]),
            {
              "land_class": 1,
              "system:index": "69"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.414073564494832, 35.44745457193832]),
            {
              "land_class": 1,
              "system:index": "70"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.412485696758016, 35.44731472826522]),
            {
              "land_class": 1,
              "system:index": "71"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.414674379314168, 35.44703504019004]),
            {
              "land_class": 1,
              "system:index": "72"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.417549707378133, 35.448608272969885]),
            {
              "land_class": 1,
              "system:index": "73"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.416927434886678, 35.448398510376116]),
            {
              "land_class": 1,
              "system:index": "74"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.42040389840182, 35.47095553792173]),
            {
              "land_class": 1,
              "system:index": "75"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4254355376739944, 35.476486743793224]),
            {
              "land_class": 1,
              "system:index": "76"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.428096289016768, 35.47795455781676]),
            {
              "land_class": 1,
              "system:index": "77"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.432988638259932, 35.47837392832973]),
            {
              "land_class": 1,
              "system:index": "78"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.43152951655583, 35.477255602100236]),
            {
              "land_class": 1,
              "system:index": "79"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.439108768968293, 35.482473924364164]),
            {
              "land_class": 1,
              "system:index": "80"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.434216419725129, 35.48659740754471]),
            {
              "land_class": 1,
              "system:index": "81"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.503858667513932, 35.70507293061094]),
            {
              "land_class": 1,
              "system:index": "82"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.5061760961027995, 35.70723351618664]),
            {
              "land_class": 1,
              "system:index": "83"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.5028286992522135, 35.710509131009104]),
            {
              "land_class": 1,
              "system:index": "84"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.499052148959245, 35.71232111542145]),
            {
              "land_class": 1,
              "system:index": "85"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.498880487582292, 35.716850896222375]),
            {
              "land_class": 1,
              "system:index": "86"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.507463556429948, 35.711484820042294]),
            {
              "land_class": 1,
              "system:index": "87"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.510467630526628, 35.70890618738265]),
            {
              "land_class": 1,
              "system:index": "88"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.506605249545182, 35.70549111303439]),
            {
              "land_class": 1,
              "system:index": "89"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.517334085604753, 35.71315740202535]),
            {
              "land_class": 1,
              "system:index": "90"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.510725122592057, 35.710996977018674]),
            {
              "land_class": 1,
              "system:index": "91"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.503601175448503, 35.70346987766617]),
            {
              "land_class": 1,
              "system:index": "92"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.5048028050871745, 35.70869710540265]),
            {
              "land_class": 1,
              "system:index": "93"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.505746942660417, 35.71211204239933]),
            {
              "land_class": 1,
              "system:index": "94"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.50016794790944, 35.71190296882877]),
            {
              "land_class": 1,
              "system:index": "95"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.505596738955583, 35.71096213097418]),
            {
              "land_class": 1,
              "system:index": "96"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.50915871252736, 35.70876679945692]),
            {
              "land_class": 1,
              "system:index": "97"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.51314983954152, 35.71163340100012]),
            {
              "land_class": 1,
              "system:index": "98"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.511583429476823, 35.70905477314744]),
            {
              "land_class": 1,
              "system:index": "99"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.824663485851644, 35.53517448976347]),
            {
              "land_class": 1,
              "system:index": "100"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8193419831660975, 35.53084395289902]),
            {
              "land_class": 1,
              "system:index": "101"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.808012332287191, 35.52455727378274]),
            {
              "land_class": 1,
              "system:index": "102"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.80904230054891, 35.52860874564147]),
            {
              "land_class": 1,
              "system:index": "103"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.816938723888754, 35.53629200971807]),
            {
              "land_class": 1,
              "system:index": "104"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.823290194836019, 35.54355550994465]),
            {
              "land_class": 1,
              "system:index": "105"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.826551760998129, 35.551097679323696]),
            {
              "land_class": 1,
              "system:index": "106"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.829641665783285, 35.5448125874385]),
            {
              "land_class": 1,
              "system:index": "107"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.82826837476766, 35.53447603188633]),
            {
              "land_class": 1,
              "system:index": "108"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.828440036144613, 35.53112334942807]),
            {
              "land_class": 1,
              "system:index": "109"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.816767062511801, 35.52679259389637]),
            {
              "land_class": 1,
              "system:index": "110"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.800974215832113, 35.52022616388183]),
            {
              "land_class": 1,
              "system:index": "111"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.800974215832113, 35.525814649008026]),
            {
              "land_class": 1,
              "system:index": "112"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.813333834972738, 35.5253955261219]),
            {
              "land_class": 1,
              "system:index": "113"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.772220935192465, 35.52462712847874]),
            {
              "land_class": 1,
              "system:index": "114"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.771534289684652, 35.52127403448409]),
            {
              "land_class": 1,
              "system:index": "115"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.770246829357504, 35.5253955261219]),
            {
              "land_class": 1,
              "system:index": "116"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.765611972179769, 35.524836692201994]),
            {
              "land_class": 1,
              "system:index": "117"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.757372226086019, 35.52595435615031]),
            {
              "land_class": 1,
              "system:index": "118"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.746729220714926, 35.52399843402565]),
            {
              "land_class": 1,
              "system:index": "119"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.749561633434652, 35.52630362294193]),
            {
              "land_class": 1,
              "system:index": "120"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.752909030285238, 35.52881829896701]),
            {
              "land_class": 1,
              "system:index": "121"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7753966706660975, 35.522671174006575]),
            {
              "land_class": 1,
              "system:index": "122"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.782520617809652, 35.526652888213405]),
            {
              "land_class": 1,
              "system:index": "123"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.773937548961996, 35.52763082288644]),
            {
              "land_class": 1,
              "system:index": "124"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.761320437755941, 35.52567494162255]),
            {
              "land_class": 1,
              "system:index": "125"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7534240144160975, 35.5272117094859]),
            {
              "land_class": 1,
              "system:index": "126"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.796511020031332, 35.5200864467679]),
            {
              "land_class": 1,
              "system:index": "127"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.797197665539144, 35.52371901268784]),
            {
              "land_class": 1,
              "system:index": "128"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.82852586683309, 35.54215873406305]),
            {
              "land_class": 1,
              "system:index": "129"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.823976840343832, 35.5409016149703]),
            {
              "land_class": 1,
              "system:index": "130"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.814192141857504, 35.53461572394825]),
            {
              "land_class": 1,
              "system:index": "131"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.822260226574301, 35.52770067490703]),
            {
              "land_class": 1,
              "system:index": "132"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.742180194225668, 35.52511610964838]),
            {
              "land_class": 1,
              "system:index": "133"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.730458444986841, 35.64165682069975]),
            {
              "land_class": 1,
              "system:index": "134"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.725394434366724, 35.63489052687628]),
            {
              "land_class": 1,
              "system:index": "135"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.726939386759302, 35.63928519529058]),
            {
              "land_class": 1,
              "system:index": "136"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7287418312173095, 35.636564714766486]),
            {
              "land_class": 1,
              "system:index": "137"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7211028999428954, 35.63837837873897]),
            {
              "land_class": 1,
              "system:index": "138"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7169830268960204, 35.63544859340294]),
            {
              "land_class": 1,
              "system:index": "139"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.724707788858911, 35.63328606390718]),
            {
              "land_class": 1,
              "system:index": "140"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.727111048136255, 35.63216989675935]),
            {
              "land_class": 1,
              "system:index": "141"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.723763651285669, 35.629937515706665]),
            {
              "land_class": 1,
              "system:index": "142"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.72024459305813, 35.62826318900561]),
            {
              "land_class": 1,
              "system:index": "143"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.718871302042505, 35.62491443040529]),
            {
              "land_class": 1,
              "system:index": "144"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.711833185587427, 35.63182109132934]),
            {
              "land_class": 1,
              "system:index": "145"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.714837259684106, 35.63342558370476]),
            {
              "land_class": 1,
              "system:index": "146"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.715180582438013, 35.63628568588683]),
            {
              "land_class": 1,
              "system:index": "147"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.722304529581567, 35.63754130817376]),
            {
              "land_class": 1,
              "system:index": "148"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.704683761194103, 35.63424199067487]),
            {
              "land_class": 1,
              "system:index": "149"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.708460311487071, 35.635427887008845]),
            {
              "land_class": 1,
              "system:index": "150"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.703224639490001, 35.63152133848334]),
            {
              "land_class": 1,
              "system:index": "151"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.706142882898204, 35.6323584720975]),
            {
              "land_class": 1,
              "system:index": "152"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.702623824670665, 35.63591619214976]),
            {
              "land_class": 1,
              "system:index": "153"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.699963073327892, 35.63173062270878]),
            {
              "land_class": 1,
              "system:index": "154"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.699533919885509, 35.62782389348731]),
            {
              "land_class": 1,
              "system:index": "155"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.716957549646251, 35.62168436184412]),
            {
              "land_class": 1,
              "system:index": "156"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.72021911580836, 35.6228704444684]),
            {
              "land_class": 1,
              "system:index": "157"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.730432967737071, 35.63459078554078]),
            {
              "land_class": 1,
              "system:index": "158"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.482328590100011, 35.87605466972884]),
            {
              "land_class": 1,
              "system:index": "159"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.480440314953527, 35.875602609953894]),
            {
              "land_class": 1,
              "system:index": "160"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.479195769970617, 35.87445506201694]),
            {
              "land_class": 1,
              "system:index": "161"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.477436240856847, 35.87257722044793]),
            {
              "land_class": 1,
              "system:index": "162"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.475676711743078, 35.87118619799817]),
            {
              "land_class": 1,
              "system:index": "163"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.472458060925207, 35.86986470405115]),
            {
              "land_class": 1,
              "system:index": "164"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.474217590038976, 35.86666520638248]),
            {
              "land_class": 1,
              "system:index": "165"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.475719627087316, 35.864369834999344]),
            {
              "land_class": 1,
              "system:index": "166"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4742605053832145, 35.87132530134209]),
            {
              "land_class": 1,
              "system:index": "167"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.477951224987707, 35.872090365368415]),
            {
              "land_class": 1,
              "system:index": "168"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.472458060925207, 35.86906484174481]),
            {
              "land_class": 1,
              "system:index": "169"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.473273452465734, 35.870003809715016]),
            {
              "land_class": 1,
              "system:index": "170"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.475590881054601, 35.86694342869924]),
            {
              "land_class": 1,
              "system:index": "171"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.476406272595129, 35.86416116157704]),
            {
              "land_class": 1,
              "system:index": "172"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.477264579479894, 35.86276999138754]),
            {
              "land_class": 1,
              "system:index": "173"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.473316367809972, 35.86868229604851]),
            {
              "land_class": 1,
              "system:index": "174"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.47387426728507, 35.86958649199079]),
            {
              "land_class": 1,
              "system:index": "175"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4734880291869255, 35.872368568637306]),
            {
              "land_class": 1,
              "system:index": "176"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.470398124401769, 35.868960511283525]),
            {
              "land_class": 1,
              "system:index": "177"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.477050002758703, 35.87149918017858]),
            {
              "land_class": 1,
              "system:index": "178"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.386546061760342, 35.67370194763825]),
            {
              "land_class": 1,
              "system:index": "179"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.387189791923916, 35.67202853802527]),
            {
              "land_class": 1,
              "system:index": "180"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.388734744316494, 35.67070373053303]),
            {
              "land_class": 1,
              "system:index": "181"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.386159823662197, 35.67112209316922]),
            {
              "land_class": 1,
              "system:index": "182"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.395214961296475, 35.66913485111827]),
            {
              "land_class": 1,
              "system:index": "183"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.395944522148525, 35.66798431995015]),
            {
              "land_class": 1,
              "system:index": "184"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.381224559074795, 35.675026705366164]),
            {
              "land_class": 1,
              "system:index": "185"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.378950045830166, 35.67415515670393]),
            {
              "land_class": 1,
              "system:index": "186"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.379980014091885, 35.674573501249604]),
            {
              "land_class": 1,
              "system:index": "187"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.388520167595303, 35.67495698182344]),
            {
              "land_class": 1,
              "system:index": "188"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.385473178154385, 35.67513129056604]),
            {
              "land_class": 1,
              "system:index": "189"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.428102386425566, 35.55240704988731]),
            {
              "land_class": 1,
              "system:index": "190"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.428231132458281, 35.55212772749338]),
            {
              "land_class": 1,
              "system:index": "191"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.428831947277617, 35.55149924854885]),
            {
              "land_class": 1,
              "system:index": "192"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.428402793835234, 35.551953150502975]),
            {
              "land_class": 1,
              "system:index": "193"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.429733169506621, 35.5493693665986]),
            {
              "land_class": 1,
              "system:index": "194"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.429432762096953, 35.548531364747866]),
            {
              "land_class": 1,
              "system:index": "195"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.429733169506621, 35.54765843684008]),
            {
              "land_class": 1,
              "system:index": "196"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4302910689817185, 35.546785499429106]),
            {
              "land_class": 1,
              "system:index": "197"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.430462730358672, 35.5463664860963]),
            {
              "land_class": 1,
              "system:index": "198"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.430806053112578, 35.5458077982467]),
            {
              "land_class": 1,
              "system:index": "199"
            })]),
    other_data_400 = 
    /* color: #2bffb8 */
    /* shown: false */
    ee.FeatureCollection(
        [ee.Feature(
            ee.Geometry.Point([-5.352363144054017, 35.65791896993206]),
            {
              "land_class": 0,
              "system:index": "0"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.356826339854798, 35.65750053810579]),
            {
              "land_class": 0,
              "system:index": "1"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.362834488048158, 35.65443197105709]),
            {
              "land_class": 0,
              "system:index": "2"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.330218826427064, 35.66545036789221]),
            {
              "land_class": 0,
              "system:index": "3"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340003524913392, 35.66991308331413]),
            {
              "land_class": 0,
              "system:index": "4"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.332657302487857, 35.68107242030952]),
            {
              "land_class": 0,
              "system:index": "5"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.336482898888521, 35.68561393576176]),
            {
              "land_class": 0,
              "system:index": "6"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335207700088307, 35.69095187777921]),
            {
              "land_class": 0,
              "system:index": "7"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.348253964736744, 35.68704804482758]),
            {
              "land_class": 0,
              "system:index": "8"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.348646333598346, 35.68370175023786]),
            {
              "land_class": 0,
              "system:index": "9"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.34707685815192, 35.68019595774522]),
            {
              "land_class": 0,
              "system:index": "10"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.339719941996783, 35.68107242030952]),
            {
              "land_class": 0,
              "system:index": "11"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.310586554022467, 35.67342296786128]),
            {
              "land_class": 0,
              "system:index": "12"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.301169701343893, 35.675016664254144]),
            {
              "land_class": 0,
              "system:index": "13"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3213743778422735, 35.670685720012344]),
            {
              "land_class": 0,
              "system:index": "14"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.325322589512195, 35.6731958635044]),
            {
              "land_class": 0,
              "system:index": "15"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.336051425571766, 35.67737926056545]),
            {
              "land_class": 0,
              "system:index": "16"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.344033679600086, 35.67570592805541]),
            {
              "land_class": 0,
              "system:index": "17"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.350385150547352, 35.674032560459395]),
            {
              "land_class": 0,
              "system:index": "18"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.353217563267078, 35.67828563435856]),
            {
              "land_class": 0,
              "system:index": "19"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3529600712016485, 35.68212017880173]),
            {
              "land_class": 0,
              "system:index": "20"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.345578631992664, 35.685745396802375]),
            {
              "land_class": 0,
              "system:index": "21"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340085467930164, 35.68964929350299]),
            {
              "land_class": 0,
              "system:index": "22"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.33793970071825, 35.69257709064917]),
            {
              "land_class": 0,
              "system:index": "23"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.330558261509266, 35.68713966755578]),
            {
              "land_class": 0,
              "system:index": "24"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.32394929849657, 35.686581962178614]),
            {
              "land_class": 0,
              "system:index": "25"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.329099139805164, 35.67940115720242]),
            {
              "land_class": 0,
              "system:index": "26"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.332875690098133, 35.672219705971024]),
            {
              "land_class": 0,
              "system:index": "27"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338025531406727, 35.66719927865182]),
            {
              "land_class": 0,
              "system:index": "28"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.347724399204578, 35.669360890232866]),
            {
              "land_class": 0,
              "system:index": "29"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.353818378086414, 35.6699187159779]),
            {
              "land_class": 0,
              "system:index": "30"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.307555636997547, 35.66217853559076]),
            {
              "land_class": 0,
              "system:index": "31"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.308499774570789, 35.6699187159779]),
            {
              "land_class": 0,
              "system:index": "32"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.301804980869617, 35.67500869582094]),
            {
              "land_class": 0,
              "system:index": "33"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.298171969724876, 35.672159770935245]),
            {
              "land_class": 0,
              "system:index": "34"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.309149548534204, 35.65875437464632]),
            {
              "land_class": 0,
              "system:index": "35"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.311552807811548, 35.65638325677983]),
            {
              "land_class": 0,
              "system:index": "36"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.322968289378931, 35.65756882451313]),
            {
              "land_class": 0,
              "system:index": "37"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.330864712718775, 35.660428062518115]),
            {
              "land_class": 0,
              "system:index": "38"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3422801942861575, 35.64166680423943]),
            {
              "land_class": 0,
              "system:index": "39"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.357729718211939, 35.64564260607184]),
            {
              "land_class": 0,
              "system:index": "40"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.359789654735376, 35.64194581433111]),
            {
              "land_class": 0,
              "system:index": "41"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3669994325674075, 35.64794429565679]),
            {
              "land_class": 0,
              "system:index": "42"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.37317924213772, 35.65073413352228]),
            {
              "land_class": 0,
              "system:index": "43"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.356785580638697, 35.65219875939851]),
            {
              "land_class": 0,
              "system:index": "44"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3291480989492435, 35.642922341979904]),
            {
              "land_class": 0,
              "system:index": "45"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.328032299999048, 35.64620059751499]),
            {
              "land_class": 0,
              "system:index": "46"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.330263897899439, 35.65122234513157]),
            {
              "land_class": 0,
              "system:index": "47"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.332581326488306, 35.654500260088206]),
            {
              "land_class": 0,
              "system:index": "48"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3189342470205325, 35.654570001498094]),
            {
              "land_class": 0,
              "system:index": "49"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.318848416332056, 35.65847542325722]),
            {
              "land_class": 0,
              "system:index": "50"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.31850509357815, 35.66733165417895]),
            {
              "land_class": 0,
              "system:index": "51"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.320221707347681, 35.66879597566875]),
            {
              "land_class": 0,
              "system:index": "52"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3285472841299075, 35.6625898574333]),
            {
              "land_class": 0,
              "system:index": "53"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.292498394969751, 35.66189251062968]),
            {
              "land_class": 0,
              "system:index": "54"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.291983410838892, 35.657847779069066]),
            {
              "land_class": 0,
              "system:index": "55"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.292155072215845, 35.65540689366668]),
            {
              "land_class": 0,
              "system:index": "56"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3016822786367435, 35.6555463748422]),
            {
              "land_class": 0,
              "system:index": "57"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3058021516836185, 35.65463974284706]),
            {
              "land_class": 0,
              "system:index": "58"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.299794003490259, 35.6634266655584]),
            {
              "land_class": 0,
              "system:index": "59"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.301338955882837, 35.666634348790794]),
            {
              "land_class": 0,
              "system:index": "60"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.297219082835962, 35.66942353379896]),
            {
              "land_class": 0,
              "system:index": "61"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.291983410838892, 35.66461212872266]),
            {
              "land_class": 0,
              "system:index": "62"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.314471051219751, 35.66231091944271]),
            {
              "land_class": 0,
              "system:index": "63"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.320221707347681, 35.6634266655584]),
            {
              "land_class": 0,
              "system:index": "64"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.300480648998072, 35.628133645427866]),
            {
              "land_class": 0,
              "system:index": "65"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.30202560139065, 35.629807974842045]),
            {
              "land_class": 0,
              "system:index": "66"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.300995633128931, 35.63266820646814]),
            {
              "land_class": 0,
              "system:index": "67"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3071754426992435, 35.63071488863308]),
            {
              "land_class": 0,
              "system:index": "68"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.318762585643579, 35.627366232727155]),
            {
              "land_class": 0,
              "system:index": "69"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3236549348867435, 35.62401743655757]),
            {
              "land_class": 0,
              "system:index": "70"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2878727830326895, 35.62637663486365]),
            {
              "land_class": 0,
              "system:index": "71"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.292679301587377, 35.62442316329839]),
            {
              "land_class": 0,
              "system:index": "72"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.296455851880346, 35.624702233586945]),
            {
              "land_class": 0,
              "system:index": "73"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.301863185254369, 35.62372548331569]),
            {
              "land_class": 0,
              "system:index": "74"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.306068888989721, 35.62623710276322]),
            {
              "land_class": 0,
              "system:index": "75"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.316282740918432, 35.631120581386895]),
            {
              "land_class": 0,
              "system:index": "76"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.328127375928197, 35.62546967185815]),
            {
              "land_class": 0,
              "system:index": "77"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.333620539990697, 35.625051070077895]),
            {
              "land_class": 0,
              "system:index": "78"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.336195460644994, 35.62553943860843]),
            {
              "land_class": 0,
              "system:index": "79"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340315333691869, 35.62805100107487]),
            {
              "land_class": 0,
              "system:index": "80"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3455510056889395, 35.6268649952975]),
            {
              "land_class": 0,
              "system:index": "81"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.35027169355515, 35.624981302901475]),
            {
              "land_class": 0,
              "system:index": "82"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.353447429028783, 35.62233010508761]),
            {
              "land_class": 0,
              "system:index": "83"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.356880656567846, 35.618353143549506]),
            {
              "land_class": 0,
              "system:index": "84"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.372072688428197, 35.619678819370726]),
            {
              "land_class": 0,
              "system:index": "85"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.372930995312963, 35.6247720010069]),
            {
              "land_class": 0,
              "system:index": "86"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.353704921094213, 35.634399321071434]),
            {
              "land_class": 0,
              "system:index": "87"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3455510056889395, 35.63209724131412]),
            {
              "land_class": 0,
              "system:index": "88"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3394570268071035, 35.63265532734354]),
            {
              "land_class": 0,
              "system:index": "89"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.358425608960424, 35.629725332219884]),
            {
              "land_class": 0,
              "system:index": "90"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.36151551374558, 35.618562462245364]),
            {
              "land_class": 0,
              "system:index": "91"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3669228471196035, 35.61842291650899]),
            {
              "land_class": 0,
              "system:index": "92"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3400578416264395, 35.623446409618076]),
            {
              "land_class": 0,
              "system:index": "93"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.334736338940893, 35.63098105756604]),
            {
              "land_class": 0,
              "system:index": "94"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.327011576978002, 35.63049272227533]),
            {
              "land_class": 0,
              "system:index": "95"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.312248698560033, 35.63684084836278]),
            {
              "land_class": 0,
              "system:index": "96"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.311647883740697, 35.63265532734354]),
            {
              "land_class": 0,
              "system:index": "97"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.311647883740697, 35.62784170721614]),
            {
              "land_class": 0,
              "system:index": "98"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.313793650952611, 35.6150039699095]),
            {
              "land_class": 0,
              "system:index": "99"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.30933045515183, 35.623446409618076]),
            {
              "land_class": 0,
              "system:index": "100"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.317741862622533, 35.6237952515879]),
            {
              "land_class": 0,
              "system:index": "101"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.289761058179174, 35.631887958048544]),
            {
              "land_class": 0,
              "system:index": "102"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.308729640332494, 35.615073745790795]),
            {
              "land_class": 0,
              "system:index": "103"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.321175090161596, 35.613678216599986]),
            {
              "land_class": 0,
              "system:index": "104"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.336882106152807, 35.62079516091267]),
            {
              "land_class": 0,
              "system:index": "105"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.356108180371557, 35.61549239980021]),
            {
              "land_class": 0,
              "system:index": "106"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.364605418530736, 35.61423643119801]),
            {
              "land_class": 0,
              "system:index": "107"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.345722667065893, 35.58673973417014]),
            {
              "land_class": 0,
              "system:index": "108"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.348898402539525, 35.58590212307276]),
            {
              "land_class": 0,
              "system:index": "109"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.35052918562058, 35.583389237207996]),
            {
              "land_class": 0,
              "system:index": "110"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.353447429028783, 35.587158536433]),
            {
              "land_class": 0,
              "system:index": "111"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3263249314701895, 35.595673707318]),
            {
              "land_class": 0,
              "system:index": "112"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.31757020124558, 35.60125693422494]),
            {
              "land_class": 0,
              "system:index": "113"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3064980424321035, 35.59602267041034]),
            {
              "land_class": 0,
              "system:index": "114"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.300060740796361, 35.5973487162861]),
            {
              "land_class": 0,
              "system:index": "115"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.336882106152807, 35.58094607812651]),
            {
              "land_class": 0,
              "system:index": "116"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.33928536543015, 35.58352884404706]),
            {
              "land_class": 0,
              "system:index": "117"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.33954285749558, 35.59190480897927]),
            {
              "land_class": 0,
              "system:index": "118"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.342117778149877, 35.59595287791357]),
            {
              "land_class": 0,
              "system:index": "119"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.352245799390111, 35.592812152574645]),
            {
              "land_class": 0,
              "system:index": "120"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.357395640698705, 35.589392111504914]),
            {
              "land_class": 0,
              "system:index": "121"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.354134074536596, 35.582691199361854]),
            {
              "land_class": 0,
              "system:index": "122"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.351301661816869, 35.57913111170167]),
            {
              "land_class": 0,
              "system:index": "123"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.354734889355932, 35.575850106480445]),
            {
              "land_class": 0,
              "system:index": "124"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.323921672192846, 35.59972158565277]),
            {
              "land_class": 0,
              "system:index": "125"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.313707820264135, 35.600838205717395]),
            {
              "land_class": 0,
              "system:index": "126"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.301434031811986, 35.601675660541545]),
            {
              "land_class": 0,
              "system:index": "127"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.298773280469213, 35.56928769284947]),
            {
              "land_class": 0,
              "system:index": "128"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.291134349194799, 35.57242934091764]),
            {
              "land_class": 0,
              "system:index": "129"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.285984507886205, 35.574942570669755]),
            {
              "land_class": 0,
              "system:index": "130"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.280148021069799, 35.576548203953514]),
            {
              "land_class": 0,
              "system:index": "131"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.283323756543432, 35.586600132929064]),
            {
              "land_class": 0,
              "system:index": "132"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.286842814770971, 35.58827533175776]),
            {
              "land_class": 0,
              "system:index": "133"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.289589396802221, 35.58220256924922]),
            {
              "land_class": 0,
              "system:index": "134"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.289675227490697, 35.58101588370607]),
            {
              "land_class": 0,
              "system:index": "135"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2925934708989, 35.579619760554486]),
            {
              "land_class": 0,
              "system:index": "136"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2961125291264395, 35.57906130447934]),
            {
              "land_class": 0,
              "system:index": "137"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.300146571484838, 35.57375577755683]),
            {
              "land_class": 0,
              "system:index": "138"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.271650782910619, 35.566215740065275]),
            {
              "land_class": 0,
              "system:index": "139"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268990031567846, 35.573895401188615]),
            {
              "land_class": 0,
              "system:index": "140"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2706208146489, 35.575361434629265]),
            {
              "land_class": 0,
              "system:index": "141"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.273710719434057, 35.57445389328207]),
            {
              "land_class": 0,
              "system:index": "142"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.280834666577611, 35.57152176635217]),
            {
              "land_class": 0,
              "system:index": "143"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.307356349316869, 35.56426079969977]),
            {
              "land_class": 0,
              "system:index": "144"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.302464000073705, 35.56649501336702]),
            {
              "land_class": 0,
              "system:index": "145"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.264183513013158, 35.56642519513282]),
            {
              "land_class": 0,
              "system:index": "146"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.263959233205893, 35.57572849499113]),
            {
              "land_class": 0,
              "system:index": "147"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268075491569714, 35.57991503503284]),
            {
              "land_class": 0,
              "system:index": "148"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2655005709154175, 35.57810004524262]),
            {
              "land_class": 0,
              "system:index": "149"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.359485174797253, 35.570141527572595]),
            {
              "land_class": 0,
              "system:index": "150"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.366265799186902, 35.57063023126635]),
            {
              "land_class": 0,
              "system:index": "151"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.364978338859753, 35.56727906036045]),
            {
              "land_class": 0,
              "system:index": "152"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.365664984367566, 35.56427685073371]),
            {
              "land_class": 0,
              "system:index": "153"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.350902105949597, 35.548635614094245]),
            {
              "land_class": 0,
              "system:index": "154"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3266978517992065, 35.55212722615129]),
            {
              "land_class": 0,
              "system:index": "155"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.318973089836316, 35.55589799637932]),
            {
              "land_class": 0,
              "system:index": "156"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.31287911095448, 35.55869104515766]),
            {
              "land_class": 0,
              "system:index": "157"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.306012655876355, 35.55813244318795]),
            {
              "land_class": 0,
              "system:index": "158"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.302407766960339, 35.55296519041876]),
            {
              "land_class": 0,
              "system:index": "159"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.309274222038464, 35.54416612878594]),
            {
              "land_class": 0,
              "system:index": "160"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.322663809440808, 35.554501435494004]),
            {
              "land_class": 0,
              "system:index": "161"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.329015280388074, 35.549054615569645]),
            {
              "land_class": 0,
              "system:index": "162"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335795904777722, 35.547169091687636]),
            {
              "land_class": 0,
              "system:index": "163"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.34060242333241, 35.54758810082644]),
            {
              "land_class": 0,
              "system:index": "164"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.348756338737683, 35.54619139518225]),
            {
              "land_class": 0,
              "system:index": "165"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2923655764085815, 35.552546209379855]),
            {
              "land_class": 0,
              "system:index": "166"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.274770285270886, 35.55904016941181]),
            {
              "land_class": 0,
              "system:index": "167"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.323779608391003, 35.55897034468264]),
            {
              "land_class": 0,
              "system:index": "168"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3286719576341675, 35.5570850540019]),
            {
              "land_class": 0,
              "system:index": "169"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.310990835807996, 35.550032277163815]),
            {
              "land_class": 0,
              "system:index": "170"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3135657564622925, 35.555758341385676]),
            {
              "land_class": 0,
              "system:index": "171"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.281207586906628, 35.559808237417954]),
            {
              "land_class": 0,
              "system:index": "172"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.26541270341756, 35.56434223708373]),
            {
              "land_class": 0,
              "system:index": "173"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.361285582446819, 35.566716084624225]),
            {
              "land_class": 0,
              "system:index": "174"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.361371413135296, 35.57188245088015]),
            {
              "land_class": 0,
              "system:index": "175"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.369611159229046, 35.57174282373997]),
            {
              "land_class": 0,
              "system:index": "176"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.372357741260296, 35.569369125124474]),
            {
              "land_class": 0,
              "system:index": "177"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.376391783618694, 35.57006727907653]),
            {
              "land_class": 0,
              "system:index": "178"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.37476100053764, 35.56811243268]),
            {
              "land_class": 0,
              "system:index": "179"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.378795042896038, 35.55275126577568]),
            {
              "land_class": 0,
              "system:index": "180"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.37973918046928, 35.555055628497925]),
            {
              "land_class": 0,
              "system:index": "181"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.346951857471233, 35.55372888229306]),
            {
              "land_class": 0,
              "system:index": "182"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.36325968828178, 35.57621077152051]),
            {
              "land_class": 0,
              "system:index": "183"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.36626376237846, 35.575233429237514]),
            {
              "land_class": 0,
              "system:index": "184"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.317426100635296, 35.5589659106291]),
            {
              "land_class": 0,
              "system:index": "185"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.30008830156303, 35.55749957718402]),
            {
              "land_class": 0,
              "system:index": "186"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2943376454351005, 35.56867096508874]),
            {
              "land_class": 0,
              "system:index": "187"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.286784544849163, 35.57076542694494]),
            {
              "land_class": 0,
              "system:index": "188"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.287213698291546, 35.55330990524541]),
            {
              "land_class": 0,
              "system:index": "189"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2751115712163505, 35.5556840795625]),
            {
              "land_class": 0,
              "system:index": "190"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.334935561084515, 35.5429744449391]),
            {
              "land_class": 0,
              "system:index": "191"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.33304728593803, 35.55840731057499]),
            {
              "land_class": 0,
              "system:index": "192"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340600386523968, 35.55365905293717]),
            {
              "land_class": 0,
              "system:index": "193"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.35227336015678, 35.542276054979084]),
            {
              "land_class": 0,
              "system:index": "194"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.358710661792522, 35.5511451556165]),
            {
              "land_class": 0,
              "system:index": "195"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.36351718034721, 35.55002784261586]),
            {
              "land_class": 0,
              "system:index": "196"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.358796492480999, 35.549120014337824]),
            {
              "land_class": 0,
              "system:index": "197"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340514555835491, 35.55142448143375]),
            {
              "land_class": 0,
              "system:index": "198"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.321374312305218, 35.54772333537744]),
            {
              "land_class": 0,
              "system:index": "199"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.507536073092722, 35.65500251967345]),
            {
              "land_class": 0,
              "system:index": "200"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.509939332370066, 35.655839407309905]),
            {
              "land_class": 0,
              "system:index": "201"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.511312623385691, 35.66086054896764]),
            {
              "land_class": 0,
              "system:index": "202"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.523672242526316, 35.662534192694864]),
            {
              "land_class": 0,
              "system:index": "203"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.533971925143503, 35.65500251967345]),
            {
              "land_class": 0,
              "system:index": "204"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.553884644870066, 35.6544445897106]),
            {
              "land_class": 0,
              "system:index": "205"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.557317872409128, 35.6706229761598]),
            {
              "land_class": 0,
              "system:index": "206"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.568990846041941, 35.65556044573881]),
            {
              "land_class": 0,
              "system:index": "207"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.577573914889597, 35.646075172587075]),
            {
              "land_class": 0,
              "system:index": "208"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.57276739633491, 35.675085402410446]),
            {
              "land_class": 0,
              "system:index": "209"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.55903448617866, 35.687913488052466]),
            {
              "land_class": 0,
              "system:index": "210"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.58100714242866, 35.68373064326162]),
            {
              "land_class": 0,
              "system:index": "211"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.48762335336616, 35.64384317992836]),
            {
              "land_class": 0,
              "system:index": "212"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.504789491061472, 35.64998100970143]),
            {
              "land_class": 0,
              "system:index": "213"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.530882020358347, 35.64774912616192]),
            {
              "land_class": 0,
              "system:index": "214"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.521268983248972, 35.64216914451603]),
            {
              "land_class": 0,
              "system:index": "215"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.511312623385691, 35.64579617691465]),
            {
              "land_class": 0,
              "system:index": "216"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.483160157565378, 35.63630974438494]),
            {
              "land_class": 0,
              "system:index": "217"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.483846803073191, 35.65556044573881]),
            {
              "land_class": 0,
              "system:index": "218"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.522642274264597, 35.670901885109714]),
            {
              "land_class": 0,
              "system:index": "219"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.543584962252878, 35.66922841679192]),
            {
              "land_class": 0,
              "system:index": "220"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.545644898776316, 35.65779211102484]),
            {
              "land_class": 0,
              "system:index": "221"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.553197999362253, 35.64747013633516]),
            {
              "land_class": 0,
              "system:index": "222"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.563497681979441, 35.637146827849435]),
            {
              "land_class": 0,
              "system:index": "223"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.568647523288035, 35.625705928329474]),
            {
              "land_class": 0,
              "system:index": "224"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.558004517916941, 35.64384317992836]),
            {
              "land_class": 0,
              "system:index": "225"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.57276739633491, 35.671459700085926]),
            {
              "land_class": 0,
              "system:index": "226"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.584097047213816, 35.67229641524102]),
            {
              "land_class": 0,
              "system:index": "227"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.564870972995066, 35.67229641524102]),
            {
              "land_class": 0,
              "system:index": "228"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.569677491549753, 35.68902887628998]),
            {
              "land_class": 0,
              "system:index": "229"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.537405152682566, 35.63575168387115]),
            {
              "land_class": 0,
              "system:index": "230"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.549078126315378, 35.62765936855393]),
            {
              "land_class": 0,
              "system:index": "231"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.547018189791941, 35.641053101423296]),
            {
              "land_class": 0,
              "system:index": "232"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.573110719088816, 35.64244815285365]),
            {
              "land_class": 0,
              "system:index": "233"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.577573914889597, 35.66002371394907]),
            {
              "land_class": 0,
              "system:index": "234"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.585470338229441, 35.66922841679192]),
            {
              "land_class": 0,
              "system:index": "235"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.515432496432566, 35.67815317573012]),
            {
              "land_class": 0,
              "system:index": "236"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.543928285006785, 35.68596152110906]),
            {
              "land_class": 0,
              "system:index": "237"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.547704835299753, 35.68596152110906]),
            {
              "land_class": 0,
              "system:index": "238"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.547018189791941, 35.68122083111864]),
            {
              "land_class": 0,
              "system:index": "239"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.557661195163035, 35.68373064326162]),
            {
              "land_class": 0,
              "system:index": "240"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.560064454440378, 35.633798441387356]),
            {
              "land_class": 0,
              "system:index": "241"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.558004517916941, 35.62012440755987]),
            {
              "land_class": 0,
              "system:index": "242"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.564870972995066, 35.61063492816131]),
            {
              "land_class": 0,
              "system:index": "243"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.566244264010691, 35.62012440755987]),
            {
              "land_class": 0,
              "system:index": "244"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.574140687350535, 35.6321241955531]),
            {
              "land_class": 0,
              "system:index": "245"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.582037110690378, 35.661976315350266]),
            {
              "land_class": 0,
              "system:index": "246"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.530538697604441, 35.63463555115382]),
            {
              "land_class": 0,
              "system:index": "247"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.522985597018503, 35.6365887731806]),
            {
              "land_class": 0,
              "system:index": "248"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.516119141940378, 35.637146827849435]),
            {
              "land_class": 0,
              "system:index": "249"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.500326295260691, 35.646075172587075]),
            {
              "land_class": 0,
              "system:index": "250"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.493459840182566, 35.619287145841845]),
            {
              "land_class": 0,
              "system:index": "251"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.505132813815378, 35.613705177048466]),
            {
              "land_class": 0,
              "system:index": "252"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.513372559909128, 35.62514779378469]),
            {
              "land_class": 0,
              "system:index": "253"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.379476685885691, 35.616077561386305]),
            {
              "land_class": 0,
              "system:index": "254"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.378275056247019, 35.606727168243616]),
            {
              "land_class": 0,
              "system:index": "255"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.385656495456003, 35.61021624872848]),
            {
              "land_class": 0,
              "system:index": "256"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.367632050875925, 35.63198467348396]),
            {
              "land_class": 0,
              "system:index": "257"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.370206971530222, 35.640355566574826]),
            {
              "land_class": 0,
              "system:index": "258"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.379133363131785, 35.63365892224059]),
            {
              "land_class": 0,
              "system:index": "259"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.371580262545847, 35.635333135928676]),
            {
              "land_class": 0,
              "system:index": "260"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.37501349008491, 35.62863607076795]),
            {
              "land_class": 0,
              "system:index": "261"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.387029786471628, 35.629752287258654]),
            {
              "land_class": 0,
              "system:index": "262"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.38325323617866, 35.62403151300684]),
            {
              "land_class": 0,
              "system:index": "263"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.386343140963816, 35.61900805665458]),
            {
              "land_class": 0,
              "system:index": "264"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.394582887057566, 35.62389197681382]),
            {
              "land_class": 0,
              "system:index": "265"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.401277680758738, 35.61817078324906]),
            {
              "land_class": 0,
              "system:index": "266"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.38325323617866, 35.640355566574826]),
            {
              "land_class": 0,
              "system:index": "267"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393381257418894, 35.58104285515902]),
            {
              "land_class": 0,
              "system:index": "268"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.398874421481394, 35.57783173660725]),
            {
              "land_class": 0,
              "system:index": "269"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4023076490204565, 35.57517897635095]),
            {
              "land_class": 0,
              "system:index": "270"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.395097871188425, 35.5838350275076]),
            {
              "land_class": 0,
              "system:index": "271"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.397329469088816, 35.598631915536416]),
            {
              "land_class": 0,
              "system:index": "272"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.395956178073191, 35.61049536859382]),
            {
              "land_class": 0,
              "system:index": "273"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3734685376923315, 35.61161183831661]),
            {
              "land_class": 0,
              "system:index": "274"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.361795564059519, 35.61091404656587]),
            {
              "land_class": 0,
              "system:index": "275"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3569890455048315, 35.60435450660057]),
            {
              "land_class": 0,
              "system:index": "276"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.353212495211863, 35.61286784812945]),
            {
              "land_class": 0,
              "system:index": "277"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.386858125094675, 35.60533149344493]),
            {
              "land_class": 0,
              "system:index": "278"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.397672791842722, 35.608401945866134]),
            {
              "land_class": 0,
              "system:index": "279"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.404539246920847, 35.603656651551184]),
            {
              "land_class": 0,
              "system:index": "280"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.405569215182566, 35.6149611539925]),
            {
              "land_class": 0,
              "system:index": "281"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4211904004853, 35.60435450660057]),
            {
              "land_class": 0,
              "system:index": "282"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.427713532809519, 35.60072559388392]),
            {
              "land_class": 0,
              "system:index": "283"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.434236665133738, 35.61454249720244]),
            {
              "land_class": 0,
              "system:index": "284"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.437154908541941, 35.62249660149121]),
            {
              "land_class": 0,
              "system:index": "285"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.442819733981394, 35.626124526681195]),
            {
              "land_class": 0,
              "system:index": "286"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.448484559420847, 35.63128705948546]),
            {
              "land_class": 0,
              "system:index": "287"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.455694337252878, 35.63491458579437]),
            {
              "land_class": 0,
              "system:index": "288"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.465822358493113, 35.638681458096485]),
            {
              "land_class": 0,
              "system:index": "289"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.389393037507372, 35.575737459495336]),
            {
              "land_class": 0,
              "system:index": "290"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.394714540192919, 35.577133650320775]),
            {
              "land_class": 0,
              "system:index": "291"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.397117799470263, 35.57280537954737]),
            {
              "land_class": 0,
              "system:index": "292"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.403125947663622, 35.58118246608858]),
            {
              "land_class": 0,
              "system:index": "293"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.406902497956591, 35.590256654441895]),
            {
              "land_class": 0,
              "system:index": "294"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.40518588418706, 35.59681734999753]),
            {
              "land_class": 0,
              "system:index": "295"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.409477418610888, 35.60030686259621]),
            {
              "land_class": 0,
              "system:index": "296"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.413597291657763, 35.5825785619982]),
            {
              "land_class": 0,
              "system:index": "297"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.407589143464404, 35.57154874100218]),
            {
              "land_class": 0,
              "system:index": "298"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.406902497956591, 35.57699403233339]),
            {
              "land_class": 0,
              "system:index": "299"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.397461122224169, 35.59318809550423]),
            {
              "land_class": 0,
              "system:index": "300"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.381153291413622, 35.601842199939846]),
            {
              "land_class": 0,
              "system:index": "301"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.383556550690966, 35.60714586593589]),
            {
              "land_class": 0,
              "system:index": "302"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3772050797437005, 35.62165936460965]),
            {
              "land_class": 0,
              "system:index": "303"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.383728212067919, 35.62012440755987]),
            {
              "land_class": 0,
              "system:index": "304"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.40518588418706, 35.60882063479397]),
            {
              "land_class": 0,
              "system:index": "305"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.343216127106982, 35.60882063479397]),
            {
              "land_class": 0,
              "system:index": "306"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.346477693269091, 35.6044940768801]),
            {
              "land_class": 0,
              "system:index": "307"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.350769227692919, 35.6096580060762]),
            {
              "land_class": 0,
              "system:index": "308"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.330341523835497, 35.619426690070235]),
            {
              "land_class": 0,
              "system:index": "309"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.329483216950732, 35.63003133894613]),
            {
              "land_class": 0,
              "system:index": "310"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.388363069245654, 35.54934487676779]),
            {
              "land_class": 0,
              "system:index": "311"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.398319429108935, 35.54655150235243]),
            {
              "land_class": 0,
              "system:index": "312"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.402095979401904, 35.546691173384374]),
            {
              "land_class": 0,
              "system:index": "313"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4046709000562005, 35.54096446158988]),
            {
              "land_class": 0,
              "system:index": "314"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4115373551343255, 35.544177057587916]),
            {
              "land_class": 0,
              "system:index": "315"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.377033418366747, 35.54655150235243]),
            {
              "land_class": 0,
              "system:index": "316"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.369308656403857, 35.54194222182094]),
            {
              "land_class": 0,
              "system:index": "317"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.296524232575732, 35.55758476429975]),
            {
              "land_class": 0,
              "system:index": "318"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.290344423005419, 35.56344993089129]),
            {
              "land_class": 0,
              "system:index": "319"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.29257602090581, 35.564148136418815]),
            {
              "land_class": 0,
              "system:index": "320"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.29532260293706, 35.56442741692655]),
            {
              "land_class": 0,
              "system:index": "321"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.291202729890185, 35.559539867520755]),
            {
              "land_class": 0,
              "system:index": "322"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.279529756257372, 35.56763907280669]),
            {
              "land_class": 0,
              "system:index": "323"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.272319978425341, 35.57462048931274]),
            {
              "land_class": 0,
              "system:index": "324"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.275924867341357, 35.571129857106776]),
            {
              "land_class": 0,
              "system:index": "325"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.273521608064013, 35.583136993547356]),
            {
              "land_class": 0,
              "system:index": "326"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.278156465241747, 35.555070990084964]),
            {
              "land_class": 0,
              "system:index": "327"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.287769502351122, 35.548786209669814]),
            {
              "land_class": 0,
              "system:index": "328"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.299099153230029, 35.54403738217702]),
            {
              "land_class": 0,
              "system:index": "329"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3126604020093255, 35.537891423263495]),
            {
              "land_class": 0,
              "system:index": "330"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.336864656159716, 35.53300225600925]),
            {
              "land_class": 0,
              "system:index": "331"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3469926773999505, 35.53439919134476]),
            {
              "land_class": 0,
              "system:index": "332"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.356777375886279, 35.531465599045994]),
            {
              "land_class": 0,
              "system:index": "333"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.365875428864794, 35.53411980622359]),
            {
              "land_class": 0,
              "system:index": "334"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3826982438062005, 35.53132590149902]),
            {
              "land_class": 0,
              "system:index": "335"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.391624635407763, 35.53174499341026]),
            {
              "land_class": 0,
              "system:index": "336"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.406387513825732, 35.531884690227535]),
            {
              "land_class": 0,
              "system:index": "337"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.416858857819872, 35.528811304060454]),
            {
              "land_class": 0,
              "system:index": "338"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4046709000562005, 35.537332676373005]),
            {
              "land_class": 0,
              "system:index": "339"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.391796296784716, 35.54375803062536]),
            {
              "land_class": 0,
              "system:index": "340"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.385788148591357, 35.54068509933451]),
            {
              "land_class": 0,
              "system:index": "341"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.378750032136279, 35.54082478058382]),
            {
              "land_class": 0,
              "system:index": "342"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.369823640534716, 35.54068509933451]),
            {
              "land_class": 0,
              "system:index": "343"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.360553926179247, 35.544735756798836]),
            {
              "land_class": 0,
              "system:index": "344"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.343387788483935, 35.53775173690576]),
            {
              "land_class": 0,
              "system:index": "345"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.321758454987841, 35.544177057587916]),
            {
              "land_class": 0,
              "system:index": "346"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.30905551309331, 35.54752919446718]),
            {
              "land_class": 0,
              "system:index": "347"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.300644105622607, 35.54291997013197]),
            {
              "land_class": 0,
              "system:index": "348"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.289142793366747, 35.54529445211737]),
            {
              "land_class": 0,
              "system:index": "349"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.274379914948779, 35.56540489103857]),
            {
              "land_class": 0,
              "system:index": "350"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.472477143952685, 35.52182589769613]),
            {
              "land_class": 0,
              "system:index": "351"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.461834138581591, 35.52727456683083]),
            {
              "land_class": 0,
              "system:index": "352"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.458572572419482, 35.536354859949434]),
            {
              "land_class": 0,
              "system:index": "353"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.453079408356982, 35.53970732377791]),
            {
              "land_class": 0,
              "system:index": "354"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.465954011628466, 35.532443475064305]),
            {
              "land_class": 0,
              "system:index": "355"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4733354508374505, 35.52923040910623]),
            {
              "land_class": 0,
              "system:index": "356"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.467498964021044, 35.53356103306236]),
            {
              "land_class": 0,
              "system:index": "357"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.460632508942919, 35.52182589769613]),
            {
              "land_class": 0,
              "system:index": "358"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.463894075105029, 35.518053525442255]),
            {
              "land_class": 0,
              "system:index": "359"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.416515535065966, 35.51232476930321]),
            {
              "land_class": 0,
              "system:index": "360"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.420807069489794, 35.50477895453997]),
            {
              "land_class": 0,
              "system:index": "361"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.414798921296435, 35.513163149394664]),
            {
              "land_class": 0,
              "system:index": "362"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.418747132966357, 35.5201493096937]),
            {
              "land_class": 0,
              "system:index": "363"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.422008699128466, 35.52070817625243]),
            {
              "land_class": 0,
              "system:index": "364"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4142839371655755, 35.52923040910623]),
            {
              "land_class": 0,
              "system:index": "365"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.408275788972216, 35.537332676373005]),
            {
              "land_class": 0,
              "system:index": "366"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.415142244050341, 35.51595768647171]),
            {
              "land_class": 0,
              "system:index": "367"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.406730836579638, 35.513302878558775]),
            {
              "land_class": 0,
              "system:index": "368"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.399006074616747, 35.52140675397877]),
            {
              "land_class": 0,
              "system:index": "369"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3936845719312005, 35.52601721448013]),
            {
              "land_class": 0,
              "system:index": "370"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.424068635651904, 35.514700156824745]),
            {
              "land_class": 0,
              "system:index": "371"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.426815217683154, 35.50911089785305]),
            {
              "land_class": 0,
              "system:index": "372"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.427673524567919, 35.51134664813186]),
            {
              "land_class": 0,
              "system:index": "373"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.424068635651904, 35.518612406593014]),
            {
              "land_class": 0,
              "system:index": "374"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4238969742749505, 35.52448042374185]),
            {
              "land_class": 0,
              "system:index": "375"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4170305191968255, 35.53090680739864]),
            {
              "land_class": 0,
              "system:index": "376"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.408447450349169, 35.537332676373005]),
            {
              "land_class": 0,
              "system:index": "377"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.396602815339404, 35.54375803062536]),
            {
              "land_class": 0,
              "system:index": "378"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4019243180249505, 35.529928912651286]),
            {
              "land_class": 0,
              "system:index": "379"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.455654329011279, 35.526855451569595]),
            {
              "land_class": 0,
              "system:index": "380"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.453766053864794, 35.53900890536828]),
            {
              "land_class": 0,
              "system:index": "381"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.444153016755419, 35.54138350314849]),
            {
              "land_class": 0,
              "system:index": "382"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4513627945874505, 35.53803110937798]),
            {
              "land_class": 0,
              "system:index": "383"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.453594392487841, 35.53551672209966]),
            {
              "land_class": 0,
              "system:index": "384"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.470760530183154, 35.526855451569595]),
            {
              "land_class": 0,
              "system:index": "385"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.478656953522997, 35.527414271431475]),
            {
              "land_class": 0,
              "system:index": "386"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.481231874177294, 35.531186203708785]),
            {
              "land_class": 0,
              "system:index": "387"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.457027620026904, 35.53831048087721]),
            {
              "land_class": 0,
              "system:index": "388"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.4568559586499505, 35.53495795866817]),
            {
              "land_class": 0,
              "system:index": "389"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.46286410684331, 35.52937011030169]),
            {
              "land_class": 0,
              "system:index": "390"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.468700593659716, 35.522524465694204]),
            {
              "land_class": 0,
              "system:index": "391"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.472992128083544, 35.518053525442255]),
            {
              "land_class": 0,
              "system:index": "392"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.465439027497607, 35.52601721448013]),
            {
              "land_class": 0,
              "system:index": "393"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.473678773591357, 35.5126042303064]),
            {
              "land_class": 0,
              "system:index": "394"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.491703218171435, 35.551020854706046]),
            {
              "land_class": 0,
              "system:index": "395"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.498226350495654, 35.548786209669814]),
            {
              "land_class": 0,
              "system:index": "396"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.487926667878466, 35.55395373179687]),
            {
              "land_class": 0,
              "system:index": "397"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.487755006501513, 35.55395373179687]),
            {
              "land_class": 0,
              "system:index": "398"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.491016572663622, 35.55116051795286]),
            {
              "land_class": 0,
              "system:index": "399"
            })]),
    water_data_400 = 
    /* color: #ff6a35 */
    /* shown: false */
    ee.FeatureCollection(
        [ee.Feature(
            ee.Geometry.Point([-5.262621396909868, 35.59885720971393]),
            {
              "land_class": 1,
              "system:index": "0"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.262943261991655, 35.59945042247006]),
            {
              "land_class": 1,
              "system:index": "1"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.263222211729204, 35.59990405278734]),
            {
              "land_class": 1,
              "system:index": "2"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.263608449827348, 35.60049725778406]),
            {
              "land_class": 1,
              "system:index": "3"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.263908857237016, 35.60091598807555]),
            {
              "land_class": 1,
              "system:index": "4"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.264724248777544, 35.60196280421892]),
            {
              "land_class": 1,
              "system:index": "5"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.264338010679399, 35.60384703876925]),
            {
              "land_class": 1,
              "system:index": "6"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.264767164121782, 35.605085724348534]),
            {
              "land_class": 1,
              "system:index": "7"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.26532506359688, 35.60677798210359]),
            {
              "land_class": 1,
              "system:index": "8"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.265689844022905, 35.60789450370477]),
            {
              "land_class": 1,
              "system:index": "9"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.266097539793169, 35.608662103267264]),
            {
              "land_class": 1,
              "system:index": "10"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.26605462444893, 35.60789450370477]),
            {
              "land_class": 1,
              "system:index": "11"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.265110486875688, 35.60355044923599]),
            {
              "land_class": 1,
              "system:index": "12"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.266355031858598, 35.603777253095615]),
            {
              "land_class": 1,
              "system:index": "13"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.267942899595415, 35.60321896551552]),
            {
              "land_class": 1,
              "system:index": "14"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268243307005083, 35.603044499847954]),
            {
              "land_class": 1,
              "system:index": "15"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.269359105955278, 35.60287003380001]),
            {
              "land_class": 1,
              "system:index": "16"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.269917005430376, 35.60285258717426]),
            {
              "land_class": 1,
              "system:index": "17"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.270732396970903, 35.60276535398863]),
            {
              "land_class": 1,
              "system:index": "18"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.271032804380571, 35.60267812070791]),
            {
              "land_class": 1,
              "system:index": "19"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.272105687986528, 35.602503653861156]),
            {
              "land_class": 1,
              "system:index": "20"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.272577756773149, 35.60234663337384]),
            {
              "land_class": 1,
              "system:index": "21"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2738652171002975, 35.602276846391696]),
            {
              "land_class": 1,
              "system:index": "22"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2752385081159225, 35.60196280421892]),
            {
              "land_class": 1,
              "system:index": "23"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.275667661558305, 35.60182322952431]),
            {
              "land_class": 1,
              "system:index": "24"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.276869291196977, 35.60161386702594]),
            {
              "land_class": 1,
              "system:index": "25"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.277384275327837, 35.601526632489964]),
            {
              "land_class": 1,
              "system:index": "26"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.278242582212602, 35.60128237528335]),
            {
              "land_class": 1,
              "system:index": "27"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2785859049665085, 35.60119514038601]),
            {
              "land_class": 1,
              "system:index": "28"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.278907770048296, 35.60117769339514]),
            {
              "land_class": 1,
              "system:index": "29"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2795085848676315, 35.60110790539359]),
            {
              "land_class": 1,
              "system:index": "30"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.280474180112993, 35.600741517387014]),
            {
              "land_class": 1,
              "system:index": "31"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.280946248899614, 35.60082875277881]),
            {
              "land_class": 1,
              "system:index": "32"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.281117910276567, 35.600619387678734]),
            {
              "land_class": 1,
              "system:index": "33"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.273006910215532, 35.6043355367806]),
            {
              "land_class": 1,
              "system:index": "34"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.274873727689897, 35.60461467716241]),
            {
              "land_class": 1,
              "system:index": "35"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.275753492246782, 35.605207847240436]),
            {
              "land_class": 1,
              "system:index": "36"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.276440137754594, 35.60524273946104]),
            {
              "land_class": 1,
              "system:index": "37"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.273586267362749, 35.60454489215824]),
            {
              "land_class": 1,
              "system:index": "38"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.272577756773149, 35.6043355367806]),
            {
              "land_class": 1,
              "system:index": "39"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2686724604474655, 35.60457978466792]),
            {
              "land_class": 1,
              "system:index": "40"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268243307005083, 35.60454489215824]),
            {
              "land_class": 1,
              "system:index": "41"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.269359105955278, 35.60461467716241]),
            {
              "land_class": 1,
              "system:index": "42"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2700457514630905, 35.60447510709323]),
            {
              "land_class": 1,
              "system:index": "43"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.271225923429643, 35.6043355367806]),
            {
              "land_class": 1,
              "system:index": "44"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.268758291135942, 35.60592313472136]),
            {
              "land_class": 1,
              "system:index": "45"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.269402021299516, 35.606219715460064]),
            {
              "land_class": 1,
              "system:index": "46"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.282169336210405, 35.60032278618264]),
            {
              "land_class": 1,
              "system:index": "47"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.283370965849077, 35.599747027199285]),
            {
              "land_class": 1,
              "system:index": "48"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.284400934110796, 35.598961894637476]),
            {
              "land_class": 1,
              "system:index": "49"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2848515452252975, 35.59882231470899]),
            {
              "land_class": 1,
              "system:index": "50"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.285259240995561, 35.598473363822826]),
            {
              "land_class": 1,
              "system:index": "51"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.285516733060991, 35.59810696375487]),
            {
              "land_class": 1,
              "system:index": "52"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.285902971159135, 35.597740562009584]),
            {
              "land_class": 1,
              "system:index": "53"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.28628920925728, 35.59733926293535]),
            {
              "land_class": 1,
              "system:index": "54"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.286632532011186, 35.59707754506381]),
            {
              "land_class": 1,
              "system:index": "55"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.286890024076616, 35.59683327427826]),
            {
              "land_class": 1,
              "system:index": "56"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2871260584699264, 35.596554106753345]),
            {
              "land_class": 1,
              "system:index": "57"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.287362092863237, 35.596083009347126]),
            {
              "land_class": 1,
              "system:index": "58"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.287726873289262, 35.595786391039226]),
            {
              "land_class": 1,
              "system:index": "59"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2880487383710495, 35.59550721986296]),
            {
              "land_class": 1,
              "system:index": "60"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.288306230436479, 35.595228047713015]),
            {
              "land_class": 1,
              "system:index": "61"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.288606637846147, 35.59494887458938]),
            {
              "land_class": 1,
              "system:index": "62"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.288928502927934, 35.594756942502094]),
            {
              "land_class": 1,
              "system:index": "63"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2891216219770065, 35.594565009954565]),
            {
              "land_class": 1,
              "system:index": "64"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.28952931774727, 35.594338179986906]),
            {
              "land_class": 1,
              "system:index": "65"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.289593690763628, 35.594198591995]),
            {
              "land_class": 1,
              "system:index": "66"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.289937013517534, 35.59397176098901]),
            {
              "land_class": 1,
              "system:index": "67"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.290559286008989, 35.59369258348384]),
            {
              "land_class": 1,
              "system:index": "68"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2906451166974655, 35.593587891668385]),
            {
              "land_class": 1,
              "system:index": "69"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2910957278119675, 35.59329126411436]),
            {
              "land_class": 1,
              "system:index": "70"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.291374677549516, 35.59315167429685]),
            {
              "land_class": 1,
              "system:index": "71"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.291760915647661, 35.592994635461196]),
            {
              "land_class": 1,
              "system:index": "72"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.29227589977852, 35.592471170450686]),
            {
              "land_class": 1,
              "system:index": "73"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.2926192225324264, 35.59222688560769]),
            {
              "land_class": 1,
              "system:index": "74"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.29279088390938, 35.59208729393415]),
            {
              "land_class": 1,
              "system:index": "75"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.293305868040239, 35.59173831368536]),
            {
              "land_class": 1,
              "system:index": "76"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.293649190794145, 35.59142423016072]),
            {
              "land_class": 1,
              "system:index": "77"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.294056886564409, 35.59114504377102]),
            {
              "land_class": 1,
              "system:index": "78"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.294486040006792, 35.59093565333978]),
            {
              "land_class": 1,
              "system:index": "79"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.294936651121294, 35.59055176946011]),
            {
              "land_class": 1,
              "system:index": "80"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.295644754301225, 35.59006318731462]),
            {
              "land_class": 1,
              "system:index": "81"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.296181196104204, 35.58978399617846]),
            {
              "land_class": 1,
              "system:index": "82"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.297039502988969, 35.58908601407851]),
            {
              "land_class": 1,
              "system:index": "83"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.297597402464067, 35.58877192014826]),
            {
              "land_class": 1,
              "system:index": "84"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.298176759611284, 35.588527624017274]),
            {
              "land_class": 1,
              "system:index": "85"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.298562997709428, 35.588230977713245]),
            {
              "land_class": 1,
              "system:index": "86"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.299056524168169, 35.5879866799317]),
            {
              "land_class": 1,
              "system:index": "87"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.299657338987505, 35.58775983132426]),
            {
              "land_class": 1,
              "system:index": "88"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3004083575116745, 35.58741083221161]),
            {
              "land_class": 1,
              "system:index": "89"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.30103063000313, 35.58727123214062]),
            {
              "land_class": 1,
              "system:index": "90"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.301674360166704, 35.58699203126843]),
            {
              "land_class": 1,
              "system:index": "91"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.302189344297563, 35.58678262997537]),
            {
              "land_class": 1,
              "system:index": "92"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.302618497739946, 35.58652087758891]),
            {
              "land_class": 1,
              "system:index": "93"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3031549395429245, 35.586119522267765]),
            {
              "land_class": 1,
              "system:index": "94"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.303390973936235, 35.585910118692865]),
            {
              "land_class": 1,
              "system:index": "95"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.303863042722856, 35.58538660735974]),
            {
              "land_class": 1,
              "system:index": "96"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.304120534788286, 35.58449663023833]),
            {
              "land_class": 1,
              "system:index": "97"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.304206365476762, 35.58435702508648]),
            {
              "land_class": 1,
              "system:index": "98"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393041934787721, 35.68939399298587]),
            {
              "land_class": 1,
              "system:index": "99"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393213596164674, 35.69218238258215]),
            {
              "land_class": 1,
              "system:index": "100"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393299426853151, 35.6952494985487]),
            {
              "land_class": 1,
              "system:index": "101"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3933852575416275, 35.6984559027582]),
            {
              "land_class": 1,
              "system:index": "102"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393471088230104, 35.70110457420987]),
            {
              "land_class": 1,
              "system:index": "103"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393728580295534, 35.704589534175966]),
            {
              "land_class": 1,
              "system:index": "104"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3933852575416275, 35.703753157676765]),
            {
              "land_class": 1,
              "system:index": "105"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392762985050172, 35.68824375387954]),
            {
              "land_class": 1,
              "system:index": "106"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.39306339245984, 35.68712835466394]),
            {
              "land_class": 1,
              "system:index": "107"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3915613554115005, 35.68634408025238]),
            {
              "land_class": 1,
              "system:index": "108"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.391454067050905, 35.68583865487941]),
            {
              "land_class": 1,
              "system:index": "109"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3898876569862075, 35.68329405091281]),
            {
              "land_class": 1,
              "system:index": "110"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.390359725772829, 35.68479293704519]),
            {
              "land_class": 1,
              "system:index": "111"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393106307804079, 35.68658807756221]),
            {
              "land_class": 1,
              "system:index": "112"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.394222106754274, 35.688766591893085]),
            {
              "land_class": 1,
              "system:index": "113"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.394522514163942, 35.68984711292834]),
            {
              "land_class": 1,
              "system:index": "114"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.391947593509645, 35.68937656524438]),
            {
              "land_class": 1,
              "system:index": "115"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.388449992954225, 35.68493236688172]),
            {
              "land_class": 1,
              "system:index": "116"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.387505855380983, 35.68332890904967]),
            {
              "land_class": 1,
              "system:index": "117"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.390724506198854, 35.682318016897625]),
            {
              "land_class": 1,
              "system:index": "118"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.387548770725221, 35.682318016897625]),
            {
              "land_class": 1,
              "system:index": "119"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.391003455936403, 35.68779062482916]),
            {
              "land_class": 1,
              "system:index": "120"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393127765476198, 35.69458729031295]),
            {
              "land_class": 1,
              "system:index": "121"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.394028987705202, 35.694343317471585]),
            {
              "land_class": 1,
              "system:index": "122"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3930848501319595, 35.69754975811596]),
            {
              "land_class": 1,
              "system:index": "123"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3924840353126235, 35.69702697767693]),
            {
              "land_class": 1,
              "system:index": "124"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393642749607057, 35.69699212552582]),
            {
              "land_class": 1,
              "system:index": "125"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393514003574342, 35.69416905069936]),
            {
              "land_class": 1,
              "system:index": "126"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3944581411475845, 35.69312344206955]),
            {
              "land_class": 1,
              "system:index": "127"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.39231237393567, 35.69134587593852]),
            {
              "land_class": 1,
              "system:index": "128"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392913188755006, 35.703125869544195]),
            {
              "land_class": 1,
              "system:index": "129"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.393642749607057, 35.7003727132635]),
            {
              "land_class": 1,
              "system:index": "130"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.39231237393567, 35.70047726523853]),
            {
              "land_class": 1,
              "system:index": "131"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3911107442969985, 35.702219777972644]),
            {
              "land_class": 1,
              "system:index": "132"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.395016040622682, 35.70720315418136]),
            {
              "land_class": 1,
              "system:index": "133"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.395874347507448, 35.708283425421094]),
            {
              "land_class": 1,
              "system:index": "134"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.396217670261354, 35.70887582601445]),
            {
              "land_class": 1,
              "system:index": "135"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.396990146457643, 35.70946822220515]),
            {
              "land_class": 1,
              "system:index": "136"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3941577337379165, 35.70263797536217]),
            {
              "land_class": 1,
              "system:index": "137"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392183627902956, 35.7040319508181]),
            {
              "land_class": 1,
              "system:index": "138"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.392398204624147, 35.70270767471382]),
            {
              "land_class": 1,
              "system:index": "139"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.391969051181764, 35.69922263248971]),
            {
              "land_class": 1,
              "system:index": "140"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.396646823703737, 35.694622143515076]),
            {
              "land_class": 1,
              "system:index": "141"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.391024913608522, 35.69800283172422]),
            {
              "land_class": 1,
              "system:index": "142"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340771045505495, 35.71706444194208]),
            {
              "land_class": 1,
              "system:index": "143"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.339762534915895, 35.71659405486939]),
            {
              "land_class": 1,
              "system:index": "144"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.339161720096559, 35.717290923616375]),
            {
              "land_class": 1,
              "system:index": "145"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338582362949342, 35.717918100278055]),
            {
              "land_class": 1,
              "system:index": "146"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338367786228151, 35.71833621531007]),
            {
              "land_class": 1,
              "system:index": "147"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.339097347080202, 35.71629788380648]),
            {
              "land_class": 1,
              "system:index": "148"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340084399997682, 35.71725608032377]),
            {
              "land_class": 1,
              "system:index": "149"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.34064229947278, 35.716628898451475]),
            {
              "land_class": 1,
              "system:index": "150"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.336372222721071, 35.71945117800265]),
            {
              "land_class": 1,
              "system:index": "151"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335835780918092, 35.71913759632229]),
            {
              "land_class": 1,
              "system:index": "152"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3351062200660415, 35.719782179548616]),
            {
              "land_class": 1,
              "system:index": "153"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335025753795595, 35.719133241012486]),
            {
              "land_class": 1,
              "system:index": "154"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335921611606569, 35.71936842740132]),
            {
              "land_class": 1,
              "system:index": "155"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.33988591653058, 35.717491272253234]),
            {
              "land_class": 1,
              "system:index": "156"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.339467491924257, 35.71727350197198]),
            {
              "land_class": 1,
              "system:index": "157"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.341602530300111, 35.7167508508688]),
            {
              "land_class": 1,
              "system:index": "158"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.340207781612367, 35.7163937039767]),
            {
              "land_class": 1,
              "system:index": "159"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338834490596742, 35.71706444194208]),
            {
              "land_class": 1,
              "system:index": "160"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338737931072206, 35.71887627731261]),
            {
              "land_class": 1,
              "system:index": "161"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338287319957704, 35.71882401340782]),
            {
              "land_class": 1,
              "system:index": "162"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338104929744691, 35.71828395105106]),
            {
              "land_class": 1,
              "system:index": "163"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338920321285219, 35.717778728113174]),
            {
              "land_class": 1,
              "system:index": "164"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338566269695253, 35.717534826238044]),
            {
              "land_class": 1,
              "system:index": "165"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.336967673122377, 35.71932922971806]),
            {
              "land_class": 1,
              "system:index": "166"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.336538519679994, 35.7192595449002]),
            {
              "land_class": 1,
              "system:index": "167"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.336002077877016, 35.71981702173663]),
            {
              "land_class": 1,
              "system:index": "168"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.336034264385194, 35.719364072104135]),
            {
              "land_class": 1,
              "system:index": "169"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335208144008607, 35.71909404321353]),
            {
              "land_class": 1,
              "system:index": "170"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.334736075221986, 35.71972991623802]),
            {
              "land_class": 1,
              "system:index": "171"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335079397975893, 35.71959925781162]),
            {
              "land_class": 1,
              "system:index": "172"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335465636074037, 35.71943375683058]),
            {
              "land_class": 1,
              "system:index": "173"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335251059352846, 35.72013060074304]),
            {
              "land_class": 1,
              "system:index": "174"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.334811177074403, 35.72037449467258]),
            {
              "land_class": 1,
              "system:index": "175"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.334553685008974, 35.7205922564788]),
            {
              "land_class": 1,
              "system:index": "176"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.334703888713808, 35.721088751171514]),
            {
              "land_class": 1,
              "system:index": "177"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335304703533144, 35.721149723990635]),
            {
              "land_class": 1,
              "system:index": "178"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335744585811586, 35.72142845628386]),
            {
              "land_class": 1,
              "system:index": "179"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335733856975526, 35.721707187601965]),
            {
              "land_class": 1,
              "system:index": "180"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3349077365989395, 35.72098422623015]),
            {
              "land_class": 1,
              "system:index": "181"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.33439275246808, 35.71964281064423]),
            {
              "land_class": 1,
              "system:index": "182"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.334778990566225, 35.71962538951404]),
            {
              "land_class": 1,
              "system:index": "183"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335819687664003, 35.71899822629043]),
            {
              "land_class": 1,
              "system:index": "184"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338866677104921, 35.71847558649987]),
            {
              "land_class": 1,
              "system:index": "185"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.337933268367738, 35.718144579526076]),
            {
              "land_class": 1,
              "system:index": "186"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338019099056215, 35.71878046012765]),
            {
              "land_class": 1,
              "system:index": "187"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3405511043662734, 35.71764806648721]),
            {
              "land_class": 1,
              "system:index": "188"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.339263644039125, 35.71778743888061]),
            {
              "land_class": 1,
              "system:index": "189"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.339209999858827, 35.71901564755777]),
            {
              "land_class": 1,
              "system:index": "190"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.338684286891908, 35.718249108192666]),
            {
              "land_class": 1,
              "system:index": "191"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335465636074037, 35.719181149407255]),
            {
              "land_class": 1,
              "system:index": "192"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.334693159877748, 35.72021770580359]),
            {
              "land_class": 1,
              "system:index": "193"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3355300090903945, 35.721872683860695]),
            {
              "land_class": 1,
              "system:index": "194"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.3359806202048965, 35.72230819868837]),
            {
              "land_class": 1,
              "system:index": "195"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.33489700776288, 35.72169847726303]),
            {
              "land_class": 1,
              "system:index": "196"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.335122313320131, 35.718170711705575]),
            {
              "land_class": 1,
              "system:index": "197"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.334027972042055, 35.71851042925922]),
            {
              "land_class": 1,
              "system:index": "198"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.333663191616029, 35.718902409252124]),
            {
              "land_class": 1,
              "system:index": "199"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.828113694552683, 35.53600563690957]),
            {
              "land_class": 1,
              "system:index": "200"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.82643999612739, 35.53645962656494]),
            {
              "land_class": 1,
              "system:index": "201"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8249808744232885, 35.53520241814832]),
            {
              "land_class": 1,
              "system:index": "202"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.82519545114448, 35.5343293451557]),
            {
              "land_class": 1,
              "system:index": "203"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8271266416352026, 35.53562148980976]),
            {
              "land_class": 1,
              "system:index": "204"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.823393006686472, 35.53743744171144]),
            {
              "land_class": 1,
              "system:index": "205"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.822749276522898, 35.53673900353734]),
            {
              "land_class": 1,
              "system:index": "206"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.822019715670847, 35.53562148980976]),
            {
              "land_class": 1,
              "system:index": "207"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.822963853244089, 35.534573806551414]),
            {
              "land_class": 1,
              "system:index": "208"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.823521752719187, 35.53324672144885]),
            {
              "land_class": 1,
              "system:index": "209"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.818629403476023, 35.53059248538677]),
            {
              "land_class": 1,
              "system:index": "210"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8205605939667455, 35.53153544772828]),
            {
              "land_class": 1,
              "system:index": "211"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.821333070163035, 35.53356103306236]),
            {
              "land_class": 1,
              "system:index": "212"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.820431847934031, 35.53495795866817]),
            {
              "land_class": 1,
              "system:index": "213"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.819616456393503, 35.53604055928196]),
            {
              "land_class": 1,
              "system:index": "214"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8181144193451635, 35.53296733231421]),
            {
              "land_class": 1,
              "system:index": "215"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8194877103607885, 35.53342133916394]),
            {
              "land_class": 1,
              "system:index": "216"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8191873029511205, 35.53436426825783]),
            {
              "land_class": 1,
              "system:index": "217"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.815839906100535, 35.53101158112895]),
            {
              "land_class": 1,
              "system:index": "218"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.814037461642527, 35.52957966163885]),
            {
              "land_class": 1,
              "system:index": "219"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.812492509249949, 35.528077864962945]),
            {
              "land_class": 1,
              "system:index": "220"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.810475488070749, 35.527099935738]),
            {
              "land_class": 1,
              "system:index": "221"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.808372636203074, 35.526261701202365]),
            {
              "land_class": 1,
              "system:index": "222"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.803437371615671, 35.52448042374185]),
            {
              "land_class": 1,
              "system:index": "223"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.800948281649851, 35.523677089598124]),
            {
              "land_class": 1,
              "system:index": "224"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.809488435153269, 35.528322345407005]),
            {
              "land_class": 1,
              "system:index": "225"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.811419625643992, 35.52957966163885]),
            {
              "land_class": 1,
              "system:index": "226"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8153678373139135, 35.53307210335372]),
            {
              "land_class": 1,
              "system:index": "227"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.814423699740671, 35.52919548376937]),
            {
              "land_class": 1,
              "system:index": "228"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.812106271151804, 35.527309493003784]),
            {
              "land_class": 1,
              "system:index": "229"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.82519545114448, 35.53184976604602]),
            {
              "land_class": 1,
              "system:index": "230"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.827298303012156, 35.53387534344444]),
            {
              "land_class": 1,
              "system:index": "231"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.823350091342234, 35.53230377921997]),
            {
              "land_class": 1,
              "system:index": "232"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.822405953768992, 35.53153544772828]),
            {
              "land_class": 1,
              "system:index": "233"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.821375985507273, 35.53027816214352]),
            {
              "land_class": 1,
              "system:index": "234"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.819401879672312, 35.52940503556256]),
            {
              "land_class": 1,
              "system:index": "235"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.817985673312449, 35.52905578226985]),
            {
              "land_class": 1,
              "system:index": "236"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.816354890231394, 35.529614586808506]),
            {
              "land_class": 1,
              "system:index": "237"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.814166207675242, 35.53160529634975]),
            {
              "land_class": 1,
              "system:index": "238"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.816612382296824, 35.534573806551414]),
            {
              "land_class": 1,
              "system:index": "239"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.820818086032175, 35.53831048087721]),
            {
              "land_class": 1,
              "system:index": "240"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8243800596039526, 35.53792634481492]),
            {
              "land_class": 1,
              "system:index": "241"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.825581689242624, 35.53684376965114]),
            {
              "land_class": 1,
              "system:index": "242"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.826225419406199, 35.53404995979129]),
            {
              "land_class": 1,
              "system:index": "243"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.816226144198679, 35.52933518502564]),
            {
              "land_class": 1,
              "system:index": "244"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8150674299042455, 35.52818264238733]),
            {
              "land_class": 1,
              "system:index": "245"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.812792916659617, 35.52744919754363]),
            {
              "land_class": 1,
              "system:index": "246"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8109475568573705, 35.52608706790535]),
            {
              "land_class": 1,
              "system:index": "247"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.808887620333933, 35.5259124342283]),
            {
              "land_class": 1,
              "system:index": "248"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.806484361056589, 35.525144041534546]),
            {
              "land_class": 1,
              "system:index": "249"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.80695642984321, 35.52758890184023]),
            {
              "land_class": 1,
              "system:index": "250"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.812063355807566, 35.5322339312066]),
            {
              "land_class": 1,
              "system:index": "251"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.818758149508738, 35.536354859949434]),
            {
              "land_class": 1,
              "system:index": "252"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7972146467011205, 35.5243407140336]),
            {
              "land_class": 1,
              "system:index": "253"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.801763673190378, 35.5253186768837]),
            {
              "land_class": 1,
              "system:index": "254"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.805068154696726, 35.52664589311809]),
            {
              "land_class": 1,
              "system:index": "255"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.808415551547312, 35.52818264238733]),
            {
              "land_class": 1,
              "system:index": "256"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.810561318759226, 35.530173387455456]),
            {
              "land_class": 1,
              "system:index": "257"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.814552445773386, 35.53411980622359]),
            {
              "land_class": 1,
              "system:index": "258"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.816784043673777, 35.53607548163916]),
            {
              "land_class": 1,
              "system:index": "259"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.82395090616157, 35.530382936694735]),
            {
              "land_class": 1,
              "system:index": "260"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.827212472323679, 35.53164022063768]),
            {
              "land_class": 1,
              "system:index": "261"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.814166207675242, 35.52737934530412]),
            {
              "land_class": 1,
              "system:index": "262"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8106471494477026, 35.526296627816166]),
            {
              "land_class": 1,
              "system:index": "263"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8040811017792455, 35.5233278113753]),
            {
              "land_class": 1,
              "system:index": "264"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.806698937777781, 35.523677089598124]),
            {
              "land_class": 1,
              "system:index": "265"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.80845846689155, 35.52566794644198]),
            {
              "land_class": 1,
              "system:index": "266"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.812835832003855, 35.5309766565674]),
            {
              "land_class": 1,
              "system:index": "267"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.813651223544382, 35.53345626266135]),
            {
              "land_class": 1,
              "system:index": "268"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.826826234225535, 35.53827555949303]),
            {
              "land_class": 1,
              "system:index": "269"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.824208398226999, 35.539602561404166]),
            {
              "land_class": 1,
              "system:index": "270"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.825710435275339, 35.539148589536715]),
            {
              "land_class": 1,
              "system:index": "271"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8051539853852026, 35.52594736099411]),
            {
              "land_class": 1,
              "system:index": "272"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.817599435214304, 35.53352610961054]),
            {
              "land_class": 1,
              "system:index": "273"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.816655297641062, 35.53307210335372]),
            {
              "land_class": 1,
              "system:index": "274"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.820431847934031, 35.5377168152783]),
            {
              "land_class": 1,
              "system:index": "275"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8225346998017065, 35.53876445748816]),
            {
              "land_class": 1,
              "system:index": "276"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.820903916720652, 35.53638978216981]),
            {
              "land_class": 1,
              "system:index": "277"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.79923166788032, 35.524305786568554]),
            {
              "land_class": 1,
              "system:index": "278"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8033086255829565, 35.52601721448013]),
            {
              "land_class": 1,
              "system:index": "279"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.80695642984321, 35.52661096665633]),
            {
              "land_class": 1,
              "system:index": "280"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.811033387545847, 35.528985931428885]),
            {
              "land_class": 1,
              "system:index": "281"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.814380784396433, 35.53111635472247]),
            {
              "land_class": 1,
              "system:index": "282"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.81970228708198, 35.53230377921997]),
            {
              "land_class": 1,
              "system:index": "283"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.824637551669382, 35.53607548163916]),
            {
              "land_class": 1,
              "system:index": "284"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.801763673190378, 35.52364216184423]),
            {
              "land_class": 1,
              "system:index": "285"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8046819165985815, 35.525144041534546]),
            {
              "land_class": 1,
              "system:index": "286"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8126212552826635, 35.53048771110915]),
            {
              "land_class": 1,
              "system:index": "287"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.827341218356394, 35.54159302310677]),
            {
              "land_class": 1,
              "system:index": "288"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.827341218356394, 35.54326916306852]),
            {
              "land_class": 1,
              "system:index": "289"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.828457017306589, 35.54655150235243]),
            {
              "land_class": 1,
              "system:index": "290"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.828542847995066, 35.54997337260015]),
            {
              "land_class": 1,
              "system:index": "291"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8274270490448705, 35.545503961858316]),
            {
              "land_class": 1,
              "system:index": "292"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.828113694552683, 35.54962420885707]),
            {
              "land_class": 1,
              "system:index": "293"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.825710435275339, 35.54452624505089]),
            {
              "land_class": 1,
              "system:index": "294"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.828542847995066, 35.54005653070219]),
            {
              "land_class": 1,
              "system:index": "295"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.826139588717722, 35.541243822872225]),
            {
              "land_class": 1,
              "system:index": "296"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.828285355929636, 35.54592297969808]),
            {
              "land_class": 1,
              "system:index": "297"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.827770371798777, 35.548925876809236]),
            {
              "land_class": 1,
              "system:index": "298"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.826912064914011, 35.54836720679181]),
            {
              "land_class": 1,
              "system:index": "299"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.82545294320991, 35.54773869836942]),
            {
              "land_class": 1,
              "system:index": "300"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.827083726290964, 35.54089462111727]),
            {
              "land_class": 1,
              "system:index": "301"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.828371186618113, 35.54522461541542]),
            {
              "land_class": 1,
              "system:index": "302"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8280278638642065, 35.539148589536715]),
            {
              "land_class": 1,
              "system:index": "303"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.826139588717722, 35.543618354484636]),
            {
              "land_class": 1,
              "system:index": "304"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.8088017896454565, 35.52510911441911]),
            {
              "land_class": 1,
              "system:index": "305"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.72455896890571, 35.63805365837544]),
            {
              "land_class": 1,
              "system:index": "306"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.722971101168894, 35.63735609734566]),
            {
              "land_class": 1,
              "system:index": "307"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.722541947726511, 35.637425853722625]),
            {
              "land_class": 1,
              "system:index": "308"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.724215646151804, 35.637146827849435]),
            {
              "land_class": 1,
              "system:index": "309"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.724258561496042, 35.63578656276742]),
            {
              "land_class": 1,
              "system:index": "310"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.724516053561472, 35.634112358577184]),
            {
              "land_class": 1,
              "system:index": "311"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.725546021823191, 35.63613535089297]),
            {
              "land_class": 1,
              "system:index": "312"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.726747651461863, 35.63777463469417]),
            {
              "land_class": 1,
              "system:index": "313"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.727520127658152, 35.63875121331662]),
            {
              "land_class": 1,
              "system:index": "314"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.72606100595405, 35.63850706977979]),
            {
              "land_class": 1,
              "system:index": "315"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.72657599008491, 35.6393790075579]),
            {
              "land_class": 1,
              "system:index": "316"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.722241540316843, 35.63672828721313]),
            {
              "land_class": 1,
              "system:index": "317"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.721554894809031, 35.63540289407131]),
            {
              "land_class": 1,
              "system:index": "318"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.719709535006785, 35.63526337772516]),
            {
              "land_class": 1,
              "system:index": "319"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.717005868319773, 35.63512386113551]),
            {
              "land_class": 1,
              "system:index": "320"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.71383013284614, 35.63484482722555]),
            {
              "land_class": 1,
              "system:index": "321"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7178641752045385, 35.63515874030574]),
            {
              "land_class": 1,
              "system:index": "322"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.720439095858835, 35.637042192895834]),
            {
              "land_class": 1,
              "system:index": "323"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.718894143466257, 35.63617022962182]),
            {
              "land_class": 1,
              "system:index": "324"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.721254487399363, 35.63460067175525]),
            {
              "land_class": 1,
              "system:index": "325"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.722541947726511, 35.63543777311979]),
            {
              "land_class": 1,
              "system:index": "326"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.726962228183054, 35.636972436184024]),
            {
              "land_class": 1,
              "system:index": "327"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.725631852511667, 35.6349843443023]),
            {
              "land_class": 1,
              "system:index": "328"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7288505033295385, 35.64066945801012]),
            {
              "land_class": 1,
              "system:index": "329"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.727434296969675, 35.64157624856383]),
            {
              "land_class": 1,
              "system:index": "330"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.718250413302683, 35.63623998703383]),
            {
              "land_class": 1,
              "system:index": "331"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.716061730746531, 35.63432163601881]),
            {
              "land_class": 1,
              "system:index": "332"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7145167783539526, 35.63362404241585]),
            {
              "land_class": 1,
              "system:index": "333"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.711555619601511, 35.63337988321645]),
            {
              "land_class": 1,
              "system:index": "334"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.709495683078074, 35.63487970651758]),
            {
              "land_class": 1,
              "system:index": "335"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.714473863009714, 35.63550753117107]),
            {
              "land_class": 1,
              "system:index": "336"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.71683420694282, 35.63728634090781]),
            {
              "land_class": 1,
              "system:index": "337"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.719838281039499, 35.6374956100387]),
            {
              "land_class": 1,
              "system:index": "338"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.720224519137644, 35.63620510833542]),
            {
              "land_class": 1,
              "system:index": "339"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.721769471530222, 35.637635122488184]),
            {
              "land_class": 1,
              "system:index": "340"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.723700662020945, 35.63665853022731]),
            {
              "land_class": 1,
              "system:index": "341"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.726447244052195, 35.63700731454754]),
            {
              "land_class": 1,
              "system:index": "342"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.72481646097114, 35.6329264427246]),
            {
              "land_class": 1,
              "system:index": "343"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.726018090609812, 35.63188003177232]),
            {
              "land_class": 1,
              "system:index": "344"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.727391381625437, 35.632612520877245]),
            {
              "land_class": 1,
              "system:index": "345"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.724258561496042, 35.63086848816405]),
            {
              "land_class": 1,
              "system:index": "346"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.723400254611277, 35.63017086442459]),
            {
              "land_class": 1,
              "system:index": "347"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7261039212982885, 35.63111265503457]),
            {
              "land_class": 1,
              "system:index": "348"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7296229795258276, 35.640076550930615]),
            {
              "land_class": 1,
              "system:index": "349"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.727648873690867, 35.64059970446439]),
            {
              "land_class": 1,
              "system:index": "350"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.715847154025339, 35.632193956496316]),
            {
              "land_class": 1,
              "system:index": "351"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.717435021762156, 35.63358916257587]),
            {
              "land_class": 1,
              "system:index": "352"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.71408762491157, 35.632856682420616]),
            {
              "land_class": 1,
              "system:index": "353"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7068778470795385, 35.633310123308206]),
            {
              "land_class": 1,
              "system:index": "354"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7076503232758276, 35.63435651553913]),
            {
              "land_class": 1,
              "system:index": "355"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.710611482028269, 35.634147238188845]),
            {
              "land_class": 1,
              "system:index": "356"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.712285180453562, 35.63536801500759]),
            {
              "land_class": 1,
              "system:index": "357"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.715632577304148, 35.63662365171156]),
            {
              "land_class": 1,
              "system:index": "358"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.71906580484321, 35.63449603346823]),
            {
              "land_class": 1,
              "system:index": "359"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.72108282602241, 35.63735609734566]),
            {
              "land_class": 1,
              "system:index": "360"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.722842355136179, 35.63578656276742]),
            {
              "land_class": 1,
              "system:index": "361"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.727691789035105, 35.63623998703383]),
            {
              "land_class": 1,
              "system:index": "362"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.729837556247019, 35.639867288558115]),
            {
              "land_class": 1,
              "system:index": "363"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.728507180575632, 35.640355566574826]),
            {
              "land_class": 1,
              "system:index": "364"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.714774270419382, 35.633065963149896]),
            {
              "land_class": 1,
              "system:index": "365"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7106973127167455, 35.633798441387356]),
            {
              "land_class": 1,
              "system:index": "366"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.719494958285593, 35.623543135266004]),
            {
              "land_class": 1,
              "system:index": "367"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.719366212252878, 35.62535709469555]),
            {
              "land_class": 1,
              "system:index": "368"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.719194550875925, 35.62640359103148]),
            {
              "land_class": 1,
              "system:index": "369"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.719623704318308, 35.627973309852564]),
            {
              "land_class": 1,
              "system:index": "370"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.72082533395698, 35.62950811623305]),
            {
              "land_class": 1,
              "system:index": "371"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.722670693759226, 35.63010110171581]),
            {
              "land_class": 1,
              "system:index": "372"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.723529000643992, 35.633449643063805]),
            {
              "land_class": 1,
              "system:index": "373"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.723872323397898, 35.63515874030574]),
            {
              "land_class": 1,
              "system:index": "374"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.723743577365183, 35.63540289407131]),
            {
              "land_class": 1,
              "system:index": "375"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.725417275790476, 35.635577289161496]),
            {
              "land_class": 1,
              "system:index": "376"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.726919312838816, 35.64108797800588]),
            {
              "land_class": 1,
              "system:index": "377"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.728678841952585, 35.6355424101739]),
            {
              "land_class": 1,
              "system:index": "378"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.730438371066355, 35.63372868184442]),
            {
              "land_class": 1,
              "system:index": "379"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7285500959198705, 35.63355428272068]),
            {
              "land_class": 1,
              "system:index": "380"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.727520127658152, 35.632159076032316]),
            {
              "land_class": 1,
              "system:index": "381"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.718894143466257, 35.63376356162351]),
            {
              "land_class": 1,
              "system:index": "382"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.71631922281196, 35.63358916257587]),
            {
              "land_class": 1,
              "system:index": "383"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7123710111420385, 35.63278692205578]),
            {
              "land_class": 1,
              "system:index": "384"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.713057656649851, 35.63400771965089]),
            {
              "land_class": 1,
              "system:index": "385"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.709881921176218, 35.633519402850276]),
            {
              "land_class": 1,
              "system:index": "386"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.716705460910105, 35.63700731454754]),
            {
              "land_class": 1,
              "system:index": "387"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.715031762484812, 35.635577289161496]),
            {
              "land_class": 1,
              "system:index": "388"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.716705460910105, 35.63665853022731]),
            {
              "land_class": 1,
              "system:index": "389"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.71631922281196, 35.63617022962182]),
            {
              "land_class": 1,
              "system:index": "390"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.713229318026804, 35.63376356162351]),
            {
              "land_class": 1,
              "system:index": "391"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7131434873383276, 35.635577289161496]),
            {
              "land_class": 1,
              "system:index": "392"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.713873048190378, 35.63735609734566]),
            {
              "land_class": 1,
              "system:index": "393"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7137443021576635, 35.63718170613687]),
            {
              "land_class": 1,
              "system:index": "394"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.708637376193308, 35.63397283997836]),
            {
              "land_class": 1,
              "system:index": "395"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.707264085177683, 35.63324036333907]),
            {
              "land_class": 1,
              "system:index": "396"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.7082511380951635, 35.632891562580234]),
            {
              "land_class": 1,
              "system:index": "397"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.709881921176218, 35.63271716163002]),
            {
              "land_class": 1,
              "system:index": "398"
            }),
        ee.Feature(
            ee.Geometry.Point([-5.711727280978464, 35.632263717378706]),
            {
              "land_class": 1,
              "system:index": "399"
            })]);
