test_that("Import and export work for bedpe", {
  library(GenomicAlignments)
  library(GenomicInteractions)
  hic_file <- system.file("extdata", "Seitan2013_WT_100kb_interactions.txt",
                          package="GenomicInteractions")
  hic_data <- makeGenomicInteractionsFromFile(hic_file,
                                              type="homer",
                                              experiment_name = "HiC 100kb",
                                              description = "HiC 100kb resolution")
  gi_export( hic_data, format="bedpe", file="hic_data" )
  hic_data_read <- gi_import("hic_data.bedpe","bedpe")
  expect_equal( class(hic_data),class(hic_data_read) )
} )
