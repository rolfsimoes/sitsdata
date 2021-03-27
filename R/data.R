#' Yearly samples of 14 classes on Cerrado biome from MOD13Q1 images
#' @docType data
#'
#' @description A dataset containing a sits tibble with time series samples from Brazilian Cerrado biome.
#'
#' @format A \code{sits} tibble with 61K samples. A \code{sits} tibble contains the following meta-data:
#'   longitude (East-west coordinate of the time series sample in WGS 84),
#'   latitude (North-south coordinate of the time series sample in WGS 84),
#'   start_date (initial date of the time series),
#'   end_date (final date of the time series),
#'   label (the class label associated to the sample),
#'   coverage (the name of the coverage associated with the data), and
#'   time_series ( list containing a tibble with the values of the time series).
#'
#'   The samples are from many sources. It has 13 classes ("Araguaia", "Campo_Cerrado",
#'   "Cerradao", "Cerrado", "Cerrado_Rupestre", "Dunas",
#'   "Fallow_Cotton", "Millet_Cotton", "Pasture", "Silvicultura",
#'   "Soy_Corn", "Soy_Cotton", "Soy_Fallow", "Soy_Millet").
#'
#'   Each time series comprehends 12 months (23 data points) from MOD13Q1 product, and has 4 bands
#'   ("evi", "ndvi", "mir", and "nir").
#'
#' @usage data(cerrado_61K_14classes_4bands)
#'
"samples_cerrado_mod13q1"

#' @title Time series of agriculture and forestry in Mato Grosso from MOD13Q1
#' @docType data
#'
#' @description A dataset containing a sits tibble with time series samples from Brazilian
#' Mato Grosso State (Amazon and Cerrado biomes).
#'
#' @format A \code{sits} tibble with 1.8K samples and 9 classes ("Cerrado",
#'   "Fallow_Cotton", "Forest", "Millet_Cotton", "Pasture",
#'   "Soy_Corn", "Soy_Cotton", "Soy_Fallow", "Soy_Millet").
#'    Each time series comprehends 12 months (23 data points)
#'    from MOD13Q1 product, with 6 bands.
#'
#' @usage data(br_mt_1_8K_9classes_6bands)
#'
"samples_matogrosso_mod13q1" 

#' @title Samples for Brazilian Cerrado using CBERS AWFI image
#' @docType data
#' @keywords datasets
#' @description A dataset containing a tibble with time series sampled on the
#' Brazilian Cerrado. The time series come from a set of CBERS-4 AWFI images
#' over tile "022024" of the Brazilian Data Cube.
#' The CBERS-4 AWFI is a sensor with 64 meter resolution.
#'
#' @format A tibble with 1 rows and 7 variables: longitude, latitude, start_date
#'   (initial date of the time series), end_date (final date of the time series),
#'   label (the class label associated to the sample),
#'   cube (the name of the data cube associated with the time series),
#'   time_series (list containing a tibble with the values of the time series).
#'   Each time series comprehends one year of 16-day composites
#'   from AWFI images, comprising 23 data points and 6 bands
#'   (blue, green, red, nir, ndvi, evi)
#'
#' @usage data(cbers_samples_022024)
#'
"samples_cerrado_cbers" 
