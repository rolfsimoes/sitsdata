#' @title Yearly samples of 13 classes on Cerrado biome from MOD13Q1 images
#' @docType data
#' @name samples_cerrado_mod13q1
#' @keywords datasets
#' @description 
#' A dataset containing a sits tibble with time series samples from Brazilian 
#' Cerrado biome.
#'
#' @format 
#' A \code{sits} tibble with 61K samples. A \code{sits} tibble contains 
#' the following meta-data:
#' longitude (East-west coordinate of the time series sample in WGS 84),
#' latitude (North-south coordinate of the time series sample in WGS 84),
#' start_date (initial date of the time series),
#' end_date (final date of the time series),
#' label (the class label associated to the sample),
#' coverage (the name of the coverage associated with the data), and
#' time_series ( list containing a tibble with the values of the time series).
#'
#' The training samples were collected by ground surveys 
#' and high-resolution image interpretation by experts from 
#' the Brazilian National Institute for Space Research (INPE) 
#' team and partners. It has 13 classes ("Dense_Tree_Savanna", "Dunes",
#' "Fallow_Cotton", "Millet_Cotton", "Open_Savanna", "Pasture", 
#' "Planted Forest", "Savanna", "Shrublands", "Soy_Corn", "Soy_Cotton", 
#' "Soy_Fallow", "and "Wetlands").
#'
#' Each time series covers 12 months (23 data points) from the MOD13Q1 product, 
#' and has 4 bands ("evi", "ndvi", "mir", and "nir").
#'
#' @usage data("samples_cerrado_mod13q1")
#'
NULL

#' @title Time series of agriculture and forestry in Mato Grosso from MOD13Q1
#' @docType data
#' @name samples_matogrosso_mod13q1
#' @keywords datasets
#'
#' @description A dataset containing a sits tibble with time series samples 
#' from Brazilian Mato Grosso State (Amazon and Cerrado biomes).
#'
#' @format 
#' A \code{sits} tibble with 1.8K samples and 9 classes ("Cerrado",
#' "Fallow_Cotton", "Forest", "Millet_Cotton", "Pasture",
#' "Soy_Corn", "Soy_Cotton", "Soy_Fallow", "Soy_Millet").
#' Each time series comprehends 12 months (23 data points)
#' from MOD13Q1 product, with 6 bands.
#'
#' @usage data("samples_matogrosso_mod13q1")
#'
NULL

#' @title Samples for Brazilian Cerrado using CBERS AWFI image
#' @name samples_cerrado_cbers
#' @docType data
#' @keywords datasets
#' @description 
#' A dataset containing a tibble with time series sampled on the
#' Brazilian Cerrado. The time series come from a set of CBERS-4 AWFI images
#' over tile "022024" of the Brazilian Data Cube.
#' The CBERS-4 AWFI is a sensor with 64 meter resolution.
#'
#' @format 
#' A tibble with 1 rows and 7 variables: longitude, latitude, start_date
#' (initial date of the time series), end_date (final date of the time series),
#' label (the class label associated to the sample),
#' cube (the name of the data cube associated with the time series),
#' time_series (list containing a tibble with the values of the time series).
#' Each time series comprehends one year of 16-day composites
#' from AWFI images, comprising 23 data points and 6 bands
#' (blue, green, red, nir, ndvi, evi)
#'
#' @usage data("samples_cerrado_cbers")
#'
NULL

#' @title Samples of Cerrado biome used in the paper "Satellite Image Time 
#' Series Analysis for Big Earth ObservationData"
#' 
#' @docType data
#' @name samples_cerrado_lc8
#' @keywords datasets
#'
#' @description 
#' A sits tibble with time series samples from Brazilian Cerrado biome.
#' The samples is based on a systematic sampling design of 5-kilometers
#' over all Cerrado extension. 
#' 
#' Labels were automatically attributed from
#' a cross-comparison among land cover products of the year of 2018 from
#' the following sources: Pastagem.org (LAPIG-UFG), IBGE Land use and land 
#' cover map (IBGE), and MapBiomas (MapBiomas). 
#' 
#' The classification labels 
#' were: "Annual_Crop", "Cerradao", "Cerrado", "Nat_NonVeg", "Open_Cerrado", 
#' "Pasture", "Perennial_Crop", "Silviculture", "Sugarcane", and "Water". 
#' All those points not consistent with these classes as well
#' as those with conflicting labels among input maps were discarded.
#' 
#' The time series were extracted from the Landsat 8 BDC data cube 
#' (LC8_30_16D_STK-1). These time series comprehends a period of 12 months 
#' (24 observations) from "2017-09-01" to "2018-08-31".
#' The extracted attributes were: NDVI, EVI, B1, B2, B3, B4, B5, B6, and B7.
#' Cloudy values were removed and interpolated.
#' 
#' The validation data set used in the referred paper is in the external 
#' data folder of this package that can be accessed using:
#' 
#' \code{system.file("extdata/cerrado/validation.csv", package = "sitsdata")}
#' 
#' This validation samples as well as the training data set were collected 
#' as part of the Brazil Data Cube project (http://brazildatacube.org).
#' More details on how these data sets were obtained can be found in the 
#' referred paper.
#'
#' @format 
#' A \code{sits} tibble with ~48K samples and 10 classes ("Annual_Crop", 
#' "Cerradao", "Cerrado", "Nat_NonVeg", "Open_Cerrado", "Pasture", 
#' "Perennial_Crop", "Silviculture", "Sugarcane", "Water").
#' 
#'    
#' @usage data("samples_cerrado_lc8")
NULL

#'@title Samples of Amazon tropical forest biome for deforestation analysis
#'
#' 
#' @docType data
#' @name samples_rondonia_s2.rda
#' @keywords datasets
#'
#' @description 
#' A sits tibble with time series samples from Brazilian Amazonia rain forest.
#' 
#' The labels are: "Deforestation", "Forest", "NatNonForest" and "Pasture".
#' 
#' The time series were extracted from the Sentinel-2 BDC data cube 
#' (collection = "S2_10_16D_STK-1", tiles = "077095"). 
#' These time series comprehends a period of 12 months 
#' (25 observations) from "2018-07-12" to "2019-07-28".
#' The extracted bands are NDVI and EVI.
#' Cloudy values were removed and interpolated.
#'
#' @format 
#' A \code{sits} tibble with 1202 samples.
#' 
#'    
#' @usage data("samples_rondonia_s2")
#'
NULL
