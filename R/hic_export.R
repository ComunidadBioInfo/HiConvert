#' Exports HiC file
#'
#' Exports an GAlignment object as bedpe file
#'
#' @param x A GAlignmentPairs object
#' @param file path or name of the output file
#'
#' @return A sequence file with the specified format
#' @importFrom GenomicRanges granges seqnames start end
#' @export
#'
#' @examples
#' x <- hic_import("example.bam")
#' hic_export(x, "example.bedpe")
hic_export <- function(x, file) {
  gfirst <- granges(x@first)
  gsecond <- granges(x@last)
  output_bedpe <- data.frame(chrom1 = seqnames(gfirst),
                             start1 = start(gfirst),
                             end1 = end(gfirst),
                             chrom2 = seqnames(gsecond),
                             start2 = start(gsecond),
                             end2 = end(gsecond),
                             name = names(x) ,
                             score = ".",
                             strand1 = strand(gfirst),
                             strand2 = strand(gsecond),
                             others = ".")
  write.table(output_bedpe, file = file, row.names = FALSE,
              col.names = FALSE, quote=FALSE, sep="\t")
}
