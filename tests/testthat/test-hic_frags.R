test_that("hicfrags works", {
  in_file <- system.file( "extdata/bam/SRR400264_subset.bam",
                         package="HiConvert", mustWork=TRUE )
  hic_import(in_file)
} )
