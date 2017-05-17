#Load History files
#CPU<-read.csv(paste(args[1],"'palomar - CPU Usage'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

INhisto<-read.csv(paste(args[1],"'INhistorico'.csv", sep="/"),sep = ',', header = TRUE, skip = 0)

OUThisto<-read.csv(paste(args[1],"'OUThistorico'.csv", sep="/"),sep = ',', header = TRUE, skip = 0)

fit<-kmeans(data.pru[,2:31],3)
trapru<-t(data.pru)
plot(trapru[2:29,1:1],col=fit$cluster)