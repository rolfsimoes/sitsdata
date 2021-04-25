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

#' @title Samples of deforestation-related classes for the LANDSAT 
#' image WRS 226/064 (Para State)
#'
#' @description 
#' A dataset containing a tibble with time series samples for 
#' the combination of the LANDSAT images for WRS 226/04 with the MOD13Q1 
#' collection 5 images, used to fill the gaps where there is too much cloud in 
#' the LANDSAT data. The data set has the following classes (and samples per 
#' class): Deforestation_2014 (146 samples), Deforestation_2015 (198 samples), 
#' Forest (128 samples), and  Pasture (145 samples).
#'
#' @docType data
#' @keywords datasets
#' @name samples_para_mixl8mod
#' 
#' @format 
#' A tibble with 617 rows and 7 variables from a region of Para state
#' 
#' @usage data("samples_para_mixl8mod") 
NULL

#' @title Time series of agriculture and forestry in Cerrado biome from 
#' BDC Landsat 8 16-days composite (stack) data cube
#' @docType data
#' @name samples_cerrado_lc8
#' @keywords datasets
#'
#' @description 
#' A dataset containing a sits tibble with time series samples 
#' from Brazilian all Cerrado biome extension.
#'
#' @format 
#' A \code{sits} tibble with 67.3K samples and 8 classes ("Annual_Crop",
#' "Forest", "Nat_Non_Vegetated", "Pasture", "Savanna",
#' "Semi_Perennial_Crop", "Silviculture", "Water").
#' Each time series comprehends 12 months (24 data points)
#' from BDC Landsat 8 16-days composite (stack) data cube, with 9 bands,
#' with cloud values removed and interpolated using sits. 
#'    
#' This dataset is composed from a variety of sources:
#' Field work of TerraClass-Cerrado Team (EMBRAPA and INPE);
#' Field work of Pastagem.org Team (LAPIG-UFG);
#' Image interpretation of BDC Team (INPE)
#' Automatic extraction and cross comparison analysis among 
#' Pastagem.org (LAPIG-UFG), PRODES-Cerrado (INPE), 
#' and MapBiomas (MapBiomas) maps;
#'
#' @usage data("samples_cerrado_lc8")
#'
NULL

#' @title Time series of agriculture and forestry in Cerrado biome from 
#' BDC Landsat 8 16-days composite (stack) data cube
#' @docType data
#' @name samples_cerrado_mapsamples_lc8
#' @keywords datasets
#'
#' @description 
#' A dataset containing a sits tibble with time series samples 
#' from Brazilian all Cerrado biome extension from existing maps (see details).
#'
#' @format 
#' A \code{sits} tibble with 48K samples and 10 classes ("Annual_Crop", 
#' "Cerradao", "Cerrado", "Nat_NonVeg", "Open_Cerrado", "Pasture", 
#' "Perennial_Crop", "Silviculture", "Sugarcane", "Water").
#' 
#' Each time series comprehends 12 months (24 data points)
#' from BDC Landsat 8 16-days composite (stack) data cube, with 2 vegetation
#' indices (NDVI and EVI) and 7 spectral bands (B1-7). All time series have
#' bee cloud observation removed and no data interpolated using sits. 
#'    
#' This dataset is composed from automatic extraction and cross comparison 
#' analysis among Pastagem.org (LAPIG-UFG), PRODES-Cerrado (INPE), 
#' and MapBiomas (MapBiomas) maps;
#'
#' @usage data("samples_cerrado_mapsamples_lc8")
#'
NULL
