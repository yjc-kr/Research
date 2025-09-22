library(ape)



####### Function to extract a list of species names for all clades in a phylogeny  ########
####### Based on the clade.members function from the package CAIC				   ########
####### (https://r-forge.r-project.org/projects/caic/) by David Orme               ########

all.clades <- function(phy) {
	
	foo <- function (x, phy, tip.labels = TRUE) 
	{
		if (class(phy) != "phylo") 
		stop("Phylogeny required")
		if (!(x %in% as.numeric(phy$edge))) 
		stop("Node not in range for phylogeny")
		
		while (any(x > min(phy$edge[,1])-1)) {
			
			maxx.loc <- which(x == max(x))
			maxx <- x[maxx.loc]
			x <- x[-maxx.loc]
			newx <- as.numeric(phy$edge[, 2][which(phy$edge[, 1] == maxx)])
			x <- c(x, newx)
		}
		
		x <- unique(x)
		if (tip.labels) {return(phy$tip.label[x])} else {return(x)}
	}
	
	
    nodes <- sort(unique(as.numeric(phy$edge)))
    nodes <- nodes[nodes > min(phy$edge[,1])-1]
    clade.list <- lapply(nodes, foo, phy=phy)
    
    return(clade.list)
}


##### Beast file generator - returns Beast file with monophyletic groups as specified in the phylogeny
error<-0.001
PolytomyResolverConstraints <- function(phy, error=0.001, file.out="") {

sink(paste(file.out, ".xml", sep=""))

    clade.list <- all.clades(phy)
    group <- paste("group", 1:length(clade.list), sep = "")


cat("_________________________\n")
cat("Monophyly constraints\n")
cat("\n")
    
for (i in 1:length(clade.list)) {

        group <- paste("group", i, sep = "")
        taxa <- clade.list[[i]]

        cat("\t",'<taxa id=','"',group,'"','>',"\n",sep="")


for (j in 1:length(clade.list[[i]])) {
    cat("\t\t",'<taxon idref=','"',clade.list[[i]][j],'"','/>',"\n", sep="")
    }
cat("\t",'</taxa>',"\n", sep="")
    }


cat("\n")
cat("\n")

cat("_________________________\n")
cat("Start Tree\n")
cat("\n")
cat('<!-- The starting tree.                                                      -->\n')
cat('<newick id="startingTree">\n')
cat("\t\t",write.tree(phy),"\n",sep="")
cat('</newick>\n')
cat("\n")
cat("\n")

cat("_________________________\n")
cat("Monophyly statistics\n")
cat("\n")


for (i in 1:length(clade.list)) {

        group <- paste("group", i, sep = "")
        
cat("\t",'<tmrcaStatistic id=','"','tmrca(',group,')','"','>',"\n", sep="")	
cat("\t\t",'<mrca>\n', sep="")
cat("\t\t\t",'<taxa idref=','"',group,'"','/>',"\n", sep="")
cat("\t\t",'</mrca>\n', sep="")
cat("\t\t",'<treeModel idref=','"','treeModel','"','/>',"\n", sep="")
cat("\t",'</tmrcaStatistic>\n', sep="")

cat("\t",'<monophylyStatistic id=','"','monophyly(',group,')','"','>',"\n", sep="")	
cat("\t\t",'<mrca>\n', sep="")
cat("\t\t\t",'<taxa idref=','"',group,'"','/>',"\n", sep="")
cat("\t\t",'</mrca>\n', sep="")
cat("\t\t",'<treeModel idref=','"','treeModel','"','/>',"\n", sep="")
cat("\t",'</monophylyStatistic>\n', sep="")	
    }
    
    
cat("\n")
cat("\n")
cat("_________________________\n")
cat("Boolean Likelihood\n")
cat("\n")

cat("\t\t\t\t",'<booleanLikelihood>\n', sep="")

for (i in 1:length(clade.list)) {

        group <- paste("group", i, sep = "")
        
cat("\t\t\t\t\t",'<monophylyStatistic idref=','"','monophyly(',group,')','"','/>',"\n", sep="")
    }
    
cat("\t\t\t\t",'</booleanLikelihood>\n', sep="")
cat('\t<!-- Node Age Priors -->\n')

for (i in 1:length(clade.list)) {

group <- paste("group", i, sep = "")

cat("\t\t\t\t",'<uniformPrior lower=','"',branching.times(phy)[i]-error,'"',' upper=','"',branching.times(phy)[i]+error,'"','>',"\n",sep="")
cat("\t\t\t\t\t",'<tmrcaStatistic idref=','"','tmrca(',group,')','"','/>',"\n",sep="")
cat("\t\t\t\t",'</uniformPrior>',"\n",sep="")
	
	}



cat("\n")
cat("\n")
cat("_________________________\n")
cat("Log file\n")
cat("\n")

for (i in 1:length(clade.list)) {

        group <- paste("group", i, sep = "")
cat("\t\t\t",'<tmrcaStatistic idref=','"','tmrca(',group,')','"','/>',"\n", sep="")
    }
    

cat("_________________________\n")


sink()
	
sink(paste(file.out, ".nex", sep=""))
cat("#NEXUS\n")
cat("\n")
cat("Begin DATA;\n")
cat("Dimensions ntax=",length(phy$tip.label)," nchar=1;\n", sep="")
cat("Format datatype=NUCLEOTIDE gap=-;\n")
cat("Matrix\n")

for (i in 1:length(phy$tip.label)) {
	cat(phy$tip.label[i],"\tN\n")
	}
cat(";\n")
cat("end;\n\n")
cat("Begin Trees;\n")
cat("\tTree StartTree = [&R] ",write.tree(phy),"\n",sep="")
cat("end;\n")
sink()

}



# example tree
cat("((t3:0.350295444,t1:0.350295444):0.5627873959,t2:0.9130828399);", file = "PolytomyResolver.tre", sep = "\n")
tree <- read.tree("PolytomyResolver.tre")
unlink("PolytomyResolver.tre")