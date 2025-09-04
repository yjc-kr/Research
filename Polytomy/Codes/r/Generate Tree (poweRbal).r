library("poweRbal")
library("ape")

num <- 1024
n_param <- 16

# AldousBetaTree_n16_b1
BETA_param <- 1

AldousBetaTrees_nwk <- character(num)

for(i in 1:num){
    tree_phy <- genAldousBetaTree(n = n_param, BETA = BETA_param)
    AldousBetaTrees_nwk[i] <- write.tree(tree_phy)
}

writeLines(AldousBetaTrees_nwk, "Polytomy/Codes/nwk/AldousBetaTrees_n16_b1.nwk")

# AldousBetaTree_n16_b0 (Yule)
BETA_param <- 0

AldousBetaTrees_nwk <- character(num)

for(i in 1:num){
    tree_phy <- genAldousBetaTree(n = n_param, BETA = BETA_param)
    AldousBetaTrees_nwk[i] <- write.tree(tree_phy)
}

writeLines(AldousBetaTrees_nwk, "Polytomy/Codes/nwk/AldousBetaTrees_n16_b0.nwk")

# AldousBetaTree_n16_b-1.5 (PDA model)
BETA_param <- -1.5

AldousBetaTrees_nwk <- character(num)

for(i in 1:num){
    tree_phy <- genAldousBetaTree(n = n_param, BETA = BETA_param)
    AldousBetaTrees_nwk[i] <- write.tree(tree_phy)
}

writeLines(AldousBetaTrees_nwk, "Polytomy/Codes/nwk/AldousBetaTrees_n16_b-1.5.nwk")

# AldousBetaTree_n16_b-2 (Comb Tree)
BETA_param <- -2

AldousBetaTrees_nwk <- character(num)

for(i in 1:num){
    tree_phy <- genAldousBetaTree(n = n_param, BETA = BETA_param)
    AldousBetaTrees_nwk[i] <- write.tree(tree_phy)
}

writeLines(AldousBetaTrees_nwk, "Polytomy/Codes/nwk/AldousBetaTrees_n16_b-2.nwk")

