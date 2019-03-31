# Learning t-SNE Plotting
## Load dataset
IR <- iris # Loading the iris dataset into a object called IR

## Split IR into two objects: 1) containing measurements 2) containing species type
IR_data <- IR[ ,1:4]
IR_species <- IR[ ,5]

## Load the t-SNE library
library(Rtsne)

## Run the t-SNE algorithm and store the results into an object called tsne_results
tsne_results <- Rtsne(IR_data, perplexity=30, check_duplicates = FALSE)

## Generate the t_SNE plot
par(mfrow=c(1,2))
plot(tsne_results$Y, col = "blue", pch = 19, cex = 1.5)
plot(tsne_results$Y, col = "black", bg= IR_species, pch = 21, cex = 1.5)


## Set working directory
setwd("C:/Users/ajn16/Desktop/tsne_tutorial")

## Load the data
expression_data <- read.table(file = "exp.csv", row.names = 1, sep=',', header = T)
meta_data <- read.table(file = "meta.csv", row.names = 1, sep=',', header = T)


## Run the t-SNE algorithm and store the results into an object called tsne_results
tsne_realData <- Rtsne(expression_data, perplexity=30, check_duplicates = FALSE)

## Generate the t_SNE plot
par(mfrow=c(1,2))
plot(tsne_realData$Y, col = "blue", pch = 19, cex = 1.5)
plot(tsne_realData$Y, col = "black", bg= meta_data$louvain, pch = 21, cex = 1.5)
