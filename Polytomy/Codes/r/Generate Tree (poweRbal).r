library("poweRbal")
library("ape")

num <- 1024
n_param <- 16
BETA_param <- 1

AldousBetaTrees_nwk <- character(num)

for(i in 1:num){
    tree_phy <- genAldousBetaTree(n = n_param, BETA = BETA_param)
    AldousBetaTrees_nwk[i] <- write.tree(tree_phy)
}

head(AldousBetaTrees_nwk, 3)
writeLines(AldousBetaTrees_nwk, "AldousBetaTrees_n16_b1.nwk")
