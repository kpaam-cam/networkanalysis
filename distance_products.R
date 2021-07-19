# multiple language comparison in alineR
# generating visualizations
# mantel test for comparing distance matrices

library(phangorn)

output #the output of your multiple language comparison

#UPGMA rooted and unrooted trees

output.upgma <- upgma(output)

#basic rooted tree
plot(output.upgma)

#unrooted tree with formatting for better readability
plot(unroot(output.upgma), type="unrooted", no.margin=TRUE,lab4ut="axial", edge.width=2)

#NeighborNet

plot(neighborNet(output))

#multidimensional scaling

output.mds <- cmdscale(output,eig=TRUE, k=2)

#visualization

library(ggplot2)
library(ggrepel)

output.df <- as.data.frame(output.mds$points)
output.df <- cbind(rownames(output.df), data.frame(output.df, row.names=NULL))
colnames(output.df) <- c("language","V1","V2")
p <- ggplot(output.df, aes(V1, V2, label = language)) + geom_point(color = "red")
p1 <- p + geom_text_repel(min.segment.length = 0, seed = 42, box.padding = 0.5)
p1

#mantel test
library(ade4)

matrix #distance matrix you want to compare with

#convert a list of pairwise distances to matrix form using list2dist
library(spaa) #for list2dist

mantel.rtest(output, matrix, nrepet = 9999)