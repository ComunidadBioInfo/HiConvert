#' Imports HiC file
#'
#' @param file The path of the input file to read
#'
#' @return A GAlignmentPairs object
#' @export
#' @importFrom GenomicAlignments readGAlignmentPairs readGAlignments
#'
#' @examples
#' x <- hic_import("example.bam")
hic_import <- function(file) {
  readGAlignmentPairs(file = file, use.names = TRUE)
}
