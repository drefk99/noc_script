#Active args
args = commandArgs(trailingOnly=TRUE)


#Load every csv files
CPU<-read.csv(paste(args[1],"'palomar - CPU Usage'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

Nu0<-read.csv(paste(args[1],"'palomar - Traffic - Nu0'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

Vl1<-read.csv(paste(args[1],"'palomar - Traffic - Vl1'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

A12<-read.csv(paste(args[1],"'_A12_ - Traffic - Gi1_0_10'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

A1<-read.csv(paste(args[1],"'_A1_ - Traffic - Gi1_0_1'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

A2<-read.csv(paste(args[1],"'_A2_ - Traffic - Gi1_0_2'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

A3<-read.csv(paste(args[1],"'_A3_ - Traffic - Gi1_0_3'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

A4<-read.csv(paste(args[1],"'_A4_ - Traffic - Gi1_0_4'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

A421<-read.csv(paste(args[1],"'_A421_ - Traffic - Gi1_0_5'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

A6<-read.csv(paste(args[1],"'_A6_ - Traffic - Gi1_0_6'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

A7<-read.csv(paste(args[1],"'_A7_ - Traffic - Gi1_0_7'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

A8<-read.csv(paste(args[1],"'_A8_ - Traffic - Gi1_0_8'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

A9<-read.csv(paste(args[1],"'_A9_ - Traffic - Gi1_0_9'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

Almacen<-read.csv(paste(args[1],"'_ALMACEN_ - Traffic - Gi1_0_12'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

ApoDoc<-read.csv(paste(args[1],"'_ApoyoDocencia_ - Traffic - Gi1_0_21'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

Cajas<-read.csv(paste(args[1],"'_Cajas_ - Traffic - Gi1_0_13'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

CCA<-read.csv(paste(args[1],"'_CCA_ - Traffic - Gi1_0_20'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

CETED<-read.csv(paste(args[1],"'_CETED_ - Traffic - Gi1_0_23'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

Core1<-read.csv(paste(args[1],"'_Core1_ - Traffic - Gi1_0_24'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

Gobierno<-read.csv(paste(args[1],"'_Gobierno_ - Traffic - Gi1_0_22'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

Idiomas<-read.csv(paste(args[1],"'_IDIOMAS_ - Traffic - Gi1_0_11'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

Libreria<-read.csv(paste(args[1],"'_Libreria_ - Traffic - Gi1_0_19'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

Posgrado1<-read.csv(paste(args[1],"'_Posgrado1_ - Traffic - Gi1_0_16'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

Posgrado2<-read.csv(paste(args[1],"'_Posgrado2_ - Traffic - Gi1_0_17'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

Seminarios<-read.csv(paste(args[1],"'_Seminarios_ - Traffic - Gi1_0_14'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)

UIM<-read.csv(paste(args[1],"'_UIM_ - Traffic - Gi1_0_15'.csv", sep="/"),sep = ',', header = TRUE, skip = 9)


#Load History files
INhisto<-read.csv(paste(args[1],"'INhistorico'.csv", sep="/"),sep = ',', header = TRUE, skip = 0)

OUThisto<-read.csv(paste(args[1],"'OUThistorico'.csv", sep="/"),sep = ',', header = TRUE, skip = 0)

#Drop index
INhisto$X<-NULL
OUThisto$X<-NULL

#Join every files in dataframes for Outbound and Inbound
OUTtotal<-cbind(Nu0[,1:3],Vl1[,3], A12[,3], A1[,3], A2[,3], A3[,3], A4[,3], A421[,3], A6[,3], A7[,3], A8[,3], A9[,3], Almacen[,3], ApoDoc[,3], Cajas[,3], CCA[,3], CETED[,3], Gobierno[,3], Idiomas[,3], Libreria[,3], Posgrado1[,3], Posgrado2[,3], Seminarios[,3], UIM[,3] )
INtotal<-cbind(Nu0[,1:2],Vl1[,2], A12[,2], A1[,2], A2[,2], A3[,2], A4[,2], A421[,2], A6[,2], A7[,2], A8[,2], A9[,2], Almacen[,2], ApoDoc[,2], Cajas[,2], CCA[,2], CETED[,2], Gobierno[,2], Idiomas[,2], Libreria[,2], Posgrado1[,2], Posgrado2[,2], Seminarios[,2], UIM[,2] )

#Drop Inbound column
OUTtotal$Inbound<-NULL

#Add names for columns
names(OUTtotal)=c("Nu0", "Vl1","A12", "A1", "A2", "A3", "A4", "A421", "A6", "A7", "A8", "A9", "Almacen", "ApoDoc", "Cajas", "SUM", "CCA", "CETED", "Gobierno", "Idiomas", "Libreria", "Posgrado1", "Posgrado2", "Seminarios", "UIM" )
names(INtotal)=c("Nu0", "Vl1","A12", "A1", "A2", "A3", "A4", "A421", "A6", "A7", "A8", "A9", "Almacen", "ApoDoc", "Cajas", "SUM", "CCA", "CETED", "Gobierno", "Idiomas", "Libreria", "Posgrado1", "Posgrado2", "Seminarios", "UIM" )

#Join the new information with history
INNhist<-rbind(INhisto, INtotal)

OUTNhist<-rbind(OUThisto, OUTtotal)

#Create a CSV files to inbound and Outbound
write.csv(INNhist,file = paste(args[1],"'INhistorico'.csv", sep="/"), row.names = TRUE)

write.csv(OUTNhist,file = paste(args[1],"'OUThistorico'.csv", sep="/"), row.names = TRUE)