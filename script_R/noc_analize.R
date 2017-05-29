#Load History files
#CPU<-read.csv(paste(args[1],"'palomar - CPU Usage'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

INhisto<-read.csv(paste(args[1],"'INhistorico'.csv", sep="/"),sep = ',', header = TRUE, skip = 0)

OUThisto<-read.csv(paste(args[1],"'OUThistorico'.csv", sep="/"),sep = ',', header = TRUE, skip = 0)


trapru<-t(data.pru)
fit<-kmeans(trapru[2:29,],3)
plot(trapru[2:29,1:1],col=fit$cluster)
#res<-NbClust(trapru[1:28,2:10],distance="euclidean", min.nc=2, max.nc=6, method="kmeans")
mat.pru<-matrix(trapru,nrow = 28, ncol = 820)


#res<-NbClust(as.matrix(trapru[2:29,]),distance="euclidean", min.nc=2, max.nc=6, method="kmeans")