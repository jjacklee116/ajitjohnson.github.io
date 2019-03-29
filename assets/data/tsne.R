
# Learning t-SNE Plotting

## Load dataset
IR <- iris # Loading the iris dataset into a object called IR

## Split IR into two objects: 1) containing measurements 2) containing species type




library(Rtsne)
ts <- Rtsne(ir,dims=2, perplexity=5, check_duplicates = FALSE)
plot(ts$Y, col = iris$Species, pch = 16)

ir = iris
ir = iris[,1:4]
