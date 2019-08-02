
gi_export <- function( x, format="bedpe", file){
  a<-data.frame(
    Chrom1=x@regions[x@anchor1],
    Chrom2=x@regions[x@anchor2],
    name=x@elementMetadata@listData[["InteractionID"]],
    score=x@elementMetadata@listData[["counts"]],
    strand1=x@elementMetadata@listData[["strand.1."]],
    strand2=x@elementMetadata@listData[["strand.2."]])
  a <- dplyr::select( a,
                      -Chrom1.width,
                      -Chrom1.strand,
                      -Chrom2.width,
                      -Chrom2.strand,
                      -Chrom2.strand) %>%
    dplyr::rename(
      chrom1=Chrom1.seqnames,
      start1=Chrom1.start,
      end1=Chrom1.end,
      chrom2=Chrom2.seqnames,
      start2=Chrom2.start,
      end2=Chrom2.end)
  if(format=="bedpe"){
    write.table(a,file=paste0(file,".bedpe"),
                sep = "\t",
                quote = FALSE,
                row.names = FALSE,
                col.names=FALSE)
  }else stop("the current version only supports bedpe files")
}

gi_import<-function(filename,type){
  if (type=="bedpe"){
    makeGenomicInteractionsFromFile(fn=filename,type = type)
  } else stop("the current version only supports bedpe files")
}
