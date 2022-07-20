# in-situ data sets
This project contains in situ data sets used in the e-sensing project. These data sets consists of time series of selected locations which are used to train the statistical learning models used in the e-sensing studies. 

To load these data sets:

`devtools::install_github("e-sensing/sitsdata")`

## Description of the "data" directory

#### Data format 

All data sets in the "data" directory are tibbles with satellite image time series, with the following columns: 

- longitude (East-west coordinate of the time series sample in WGS 84),
- latitude (North-south coordinate of the time series sample in WGS 84),
- start_date (initial date of the time series),
- end_date (final date of the time series),
- label (the class label associated to the sample),
- cube (the name of the image data cube associated with the data), and
- time_series ( list containing a tibble with the values of the time series).


#### Cerrado Land Use and Land Cover Samples: 12 classes, 4 bands, 50,160 time series

A dataset containing a sits tibble with 50 K time series samples from Brazilian Cerrado biome, with 12 classes ("Dense_Woodland", "Dunes", "Fallow_Cotton", "Millet_Cotton", "Pasture", "Rocky_Savanna", "Savanna", "Savanna_Parkland", "Silviculture",  "Soy_Corn", "Soy_Cotton", "Soy_Fallow"). Each time series covers 12 months (23 data points) from MOD13Q1 product, and has 4 bands ("evi", "ndvi", "mir", and "nir").  This data set is used in the paper:

Lorena A. Santos, Karine R. Ferreira, Gilberto Camara, Michelle C.A. Picoli, Rolf E. Simoes, “Quality control and class noise reduction of satellite image time series”. ISPRS Journal of Photogrammetry and Remote Sensing, vol. 177, pp 75-88, 2021. https://doi.org/10.1016/j.isprsjprs.2021.04.014.

Usage: `data("samples_cerrado_mod13q1")`

#### Mato Grosso State (Brazil) Land Use and Land Cover Samples: 9 classes, 6 bands, 1,800 time series

A dataset containing a sits tibble with 1,892 time series samples from Brazilian Mato Grosso State (Amazon and Cerrado biomes). The samples are from many sources. It has 9 classes ("Cerrado", "Fallow_Cotton", "Forest", "Millet_Cotton", "Pasture", "Soy_Corn", "Soy_Cotton", "Soy_Fallow", "Soy_Millet"). Each time series comprehends 12 months (23 data points) from MOD13Q1 product, and has 6 bands.

Reference: Câmara, Gilberto; Picoli, Michelle; Maciel, Adeline; Simoes, Rolf; Santos, Lorena; Andrade, Pedro R; Ferreira, Karine; Begotti, Rodrigo; Sanches, Ieda; Carvalho, Alexandre X Y; Coutinho, Alexandre; Esquerdo, Julio; Antunes, Joao; Arvor, Damien (2019): Land cover change maps for Mato Grosso State in Brazil: 2001-2017 (version 3). PANGAEA, https://doi.org/10.1594/PANGAEA.899706

Usage: `data("samples_matogrosso_mod13q1")`

#### Samples for an area of the Brazilian Cerrado using CBERS-4 AWFI image

A dataset containing a tibble with 922 time series sampled on the Brazilian Cerrado. The time series come from a set of CBERS-4 AWFI images over a subset of tile "022024" of cube "CB4_64_16D_STK" of the Brazilian Data Cube. CBERS-4 AWFI is a sensor with 64 meter resolution. Each time series has one year of 16-day composites from AWFI images, comprising 23 data points and 6 bands ("BAND13", "BAND14", "BAND15", "BAND16", "NDVI", "EVI"). 

Usage: `data("samples_cerrado_cbers")`

#### Samples for an area in Amazonia using SENTINEL-2/2A MSI data

A dataset containing a tibble with 1,202 time series sampled on the 
Brazilian Amazonia (Rondonia state). The time series come from a set of SENTINEL-2/2A MSI images over tile "T20LKP" of the standard S2 grid. Each time series comprehends one year of composites of S2 and S2A images, comprising 36 data points and 2 indices ("NDVI", "EVI"). This data set should be used in conjunction with the Sentinel-2 images available in the "extdata" directory (see below)

Usage:`data("samples_rondonia_s2")`

#### Samples for Cerrado biome using Landsat-8 OLI data

The Cerrado is Brazil's main agricultural frontier. Its large latitude gradient includes different climate regimes, which lead to important differences in the spectral responses of land cover types. This dataset was produced by a systematic sampling using a grid of 5km x 5km throughout the Cerrado biome, collecting 85,026 samples. The training data labels were extracted from three sources: the pastureland map of 2018 from Pastagem.org, MapBiomas Collection 5 for  2018, and Brazil's National Mapping Agency IBGE maps for 2016-2018. Out of the 85,026 samples, we selected those where there was no disagreement between the labels assigned by the three sources. The resulting set had 48,850 points from which we extracted the time series using the Landsat-8 data cube. The distribution of samples for each class is the following: `Annual Crop` (6887), `Cerradao` (4211), `Cerrado` (21,909), `Natural Non Vegetated` (38), `Pasture` (12,894), `Perennial Crop` (68), `Silviculture` (805), `Sugarcane` (1775), and `Water` (263).

Reference: Simoes, Rolf, Gilberto Camara, Gilberto Queiroz, Felipe Souza, Pedro R. Andrade, Lorena Santos, Alexandre Carvalho, and Karine Ferreira. 2021. "Satellite Image Time Series Analysis for Big Earth Observation Data" Remote Sensing 13, no. 13: 2428. https://doi.org/10.3390/rs13132428

Usage:`data("samples_cerrado_lc8")`

## Description of the "extdata/sinop" directory

#### Sinop EVI and NDVI images for year 2014

TIF files containing 23 EVI and NDVI MOD13Q1 images for the period 2013-09-14 to 2014-08-29, covering the agricultural year in the city of Sinop (Mato Grosso). These files with associated timeline are used to test and validate the algorithms in the R package "sits". 

Usage: See the "Introduction to SITS" chapter in the book available ar  "https://e-sensing.github.io/sitsbook/"

## Description of the "extdata/CBERS" directory

#### Brazilian Cerrado EVI and NDVI images for year 2018

TIF files containing 23 EVI and NDVI CBERS-4 AWFI images for the period 2018-08-29 to 2019-08-13, covering the agricultural year in the Brazilian Cerrado near the city of Barreiras (Bahia). These files with associated timeline are used to test and validate the algorithms in the R package "sits". 

Usage: See the "Classification of Images in Data Cubes using Satellite Image Time Series" chapter of the book available at "https://e-sensing.github.io/sitsbook/".

## Description of the "extdata/CBERS" directory

#### Brazilian Cerrado LUCC classification 

TIF files containing labelled images which are part of result of Landsat-8 data cube for the Brazilian Cerrado biome, as described in the paper by Simoes et al. (2021). The files cover tiles "042049", "042050", "043049", "043050" from the Brazil Data Cube. There are QML files associated to the TIF files, for easier visualization on QGIS. 

Reference: Simoes, Rolf, Gilberto Camara, Gilberto Queiroz, Felipe Souza, Pedro R. Andrade, Lorena Santos, Alexandre Carvalho, and Karine Ferreira. 2021. "Satellite Image Time Series Analysis for Big Earth Observation Data" Remote Sensing 13, no. 13: 2428. https://doi.org/10.3390/rs13132428

Usage: See the "Validation and accuracy measurements in SITS" chapter of the book "https://e-sensing.github.io/sitsbook/". 

## Description of the "extdata/csv" directory

#### Brazilian Cerrado LUCC classification validation samples

CSV file containing 5,295 labelled points used for the validation of the LUCC classification for the Cerrado biome done by Simoes et al.(2021). 

Reference: Simoes, Rolf, Gilberto Camara, Gilberto Queiroz, Felipe Souza, Pedro R. Andrade, Lorena Santos, Alexandre Carvalho, and Karine Ferreira. 2021. "Satellite Image Time Series Analysis for Big Earth Observation Data" Remote Sensing 13, no. 13: 2428. https://doi.org/10.3390/rs13132428

Usage: See the "Validation and accuracy measurements in SITS" chapter of the book "https://e-sensing.github.io/sitsbook/". 