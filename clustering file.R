# install packages
#install.packages("stats")
#install.packages("dplyr")
#install.packages("ggplot2")
#install.packages("ggfortify")
#install.packages("factoextra")
# load required libraries
library(stats)
library(dplyr)
library(ggplot2)
library(ggfortify)
library(factoextra)
library(cluster)
grp <- read.csv("D:/WordsSimilarity.csv")
str(grp)
z <- select(grp,c(2:19))
m<-apply(z,2,mean)
s<- apply(z,2,sd)
#z <- scale(z,m,s)
distance <- dist(z)
print(distance,digits = 3)
#Hierarchical clustering
hc.c <- hclust(distance)
plot(hc.c,labels = grp$ï..)
# K means ckustering
kc <- kmeans(z,4)
kc
pam.res <- pam(grp,4)
autoplot(kc,grp,frame = TRUE)
fviz_cluster(pam.res,data = grp,ellipse.type = "convex", palette = "jco",ggtheme = theme_minimal())
pam.res
