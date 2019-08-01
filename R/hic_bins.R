
library(GenomicAlignments)
library(GenomicInteractions)
hic_file <- system.file("extdata", "Seitan2013_WT_100kb_interactions.txt",
                        package="GenomicInteractions")
hic_data <- makeGenomicInteractionsFromFile(hic_file,
                                            type="homer",
                                            experiment_name = "HiC 100kb",
                                            description = "HiC 100kb resolution")

hic_data
x <- hic_data

gi_export - function( x, format="bedpe", file){

}
