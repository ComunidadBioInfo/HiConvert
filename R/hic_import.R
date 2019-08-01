#' Imports HiC file
#'
#' Takes a local bam file and load it to the environment as an GAlignment object
#'
#' @param file The path of the input file to read
#'
#' @return A GAlignmentPairs object
#' @export
#'
#' @examples
#' x <- hic_import("example.bam")
hic_import <- function(file) {
  readGAlignmentPairs(file = file, use.names = TRUE)
}
