library(sitsdata)
library(sits)

output_dir <- "/Users/gilbertocamara/sitsdata/inst/extdata/Sentinel-2/"

input_dir <- "/Users/gilbertocamara/Dropbox/TWDTWAmazoniaCerrado/Tutorial/sentinel/minibrick/"
timeline <- sits_timeline(samples_rondonia_sentinel2)
brick_files <- list.files(path = input_dir)

if (!dir.exists(output_dir))
  dir.create(output_dir, recursive = TRUE)
stopifnot(dir.exists(output_dir))

for (f in seq_along(brick_files)) {
  # read the brick
  brick <- terra::rast(paste0(input_dir,"/",brick_files[[f]]))
  # remove the extension
  img_file_noext <- tools::file_path_sans_ext(brick_files[[f]])
  # split the file names
  img_ind <- strsplit(img_file_noext, split = "_")
  # get the band
  band <- img_ind[[1]][[6]]
  #
  band <- toupper(band)
  
  for (t in seq_along(timeline)) {
    # write each instance 
    out_file <- paste0(output_dir,"/","S2A_MSIL2A_T20LKP_", 
                       timeline[[t]],"_",band,"_10m.tif")
    
    
    terra::writeRaster(brick[[t]], 
                       out_file,
                       datatype = "INT2U",
                       gdal = c("COMPRESS=LZW")
                       )
  }
}
