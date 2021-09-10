library(sits)
rondonia_s2 <- sits_cube(
        source = "BDC",
        collection = "S2_10_16D_STK-1",
        tiles = "077095",
        start_date = "2018-07-12",
        end_date = "2019-07-28"
)

samples_s2 <- sits_get_data(
        cube = rondonia_s2,
        file = system.file("extdata/csv/samples_amazonia_sentinel2.csv",
                           package = "sitsdata"),
        bands = c("NDVI", "EVI", "CLOUD"),
        multicores = 3
)

rfor_model <- sits_train(samples_s2, ml_method = sits_rfor())

roi_rondonia <- c(xmin = 3810000, ymin = 10160000, xmax = 3830000, ymax = 10180000)

rondonia_probs <- sits_classify(
        data = rondonia_s2,
        ml_model = rfor_model,
        roi = roi_rondonia,
        memsize = 16,
        multicores = 4,
        output_dir = "/users/gilbertocamara/sentinel/"
)

rondonia_bayes <- sits_smooth(
        cube = rondonia_probs,
        memsize = 4,
        multicores = 4
)

rondonia_class <- sits_label_classification(
        cube = rondonia_bayes,
        memsize = 4,
        multicores = 4
)
)