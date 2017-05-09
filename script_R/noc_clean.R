CPU<-read.csv("cacti_graph/'palomar - CPU Usage'.csv",sep = ',', header = TRUE, skip = 9)

Nu0<-read.csv("cacti_graph/'palomar - Traffic - Nu0'.csv",sep = ',', header = TRUE, skip = 9)

Vl1<-read.csv("cacti_graph/'palomar - Traffic - Vl1'.csv",sep = ',', header = TRUE, skip = 9)

A12<-read.csv("cacti_graph/'_A12_ - Traffic - Gi1_0_10'.csv",sep = ',', header = TRUE, skip = 9)

A1<-read.csv("cacti_graph/'_A1_ - Traffic - Gi1_0_1'.csv",sep = ',', header = TRUE, skip = 9)

A2<-read.csv("cacti_graph/'_A2_ - Traffic - Gi1_0_2'.csv",sep = ',', header = TRUE, skip = 9)

A3<-read.csv("cacti_graph/'_A3_ - Traffic - Gi1_0_3'.csv",sep = ',', header = TRUE, skip = 9)

A4<-read.csv("cacti_graph/'_A4_ - Traffic - Gi1_0_4'.csv",sep = ',', header = TRUE, skip = 9)

A421<-read.csv("cacti_graph/'_A421_ - Traffic - Gi1_0_5'.csv",sep = ',', header = TRUE, skip = 9)

A6<-read.csv("$CACTIG/'_A6_ - Traffic - Gi1_0_6'.csv",sep = ',', header = TRUE, skip = 9)

A7<-read.csv("$CACTIG/'_A7_ - Traffic - Gi1_0_7'.csv",sep = ',', header = TRUE, skip = 9)

A8<-read.csv("$CACTIG/'_A8_ - Traffic - Gi1_0_8'.csv",sep = ',', header = TRUE, skip = 9)

A9<-read.csv("$CACTIG/'_A9_ - Traffic - Gi1_0_9'.csv",sep = ',', header = TRUE, skip = 9)

Almacen<-read.csv("$CACTIG/'_ALMACEN_ - Traffic - Gi1_0_12'.csv",sep = ',', header = TRUE, skip = 9)

ApoDoc<-read.csv("$CACTIG/'_ApoyoDocencia_ - Traffic - Gi1_0_21'.csv",sep = ',', header = TRUE, skip = 9)

Cajas<-read.csv("$CACTIG/'_Cajas_ - Traffic - Gi1_0_13'.csv",sep = ',', header = TRUE, skip = 9)

CCA<-read.csv("$CACTIG/'_CCA_ - Traffic - Gi1_0_20'.csv",sep = ',', header = TRUE, skip = 9)

CETED<-read.csv("$CACTIG/'_CETED_ - Traffic - Gi1_0_23'.csv",sep = ',', header = TRUE, skip = 9)

Core1<-read.csv("$CACTIG/'_Core1_ - Traffic - Gi1_0_24'.csv",sep = ',', header = TRUE, skip = 9)

Gobierno<-read.csv("$CACTIG/'_Gobierno_ - Traffic - Gi1_0_22'.csv",sep = ',', header = TRUE, skip = 9)

Idiomas<-read.csv("$CACTIG/'_IDIOMAS_ - Traffic - Gi1_0_11'.csv",sep = ',', header = TRUE, skip = 9)

Libreria<-read.csv("$CACTIG/'_Libreria_ - Traffic - Gi1_0_19'.csv",sep = ',', header = TRUE, skip = 9)

Posgrado1<-read.csv("$CACTIG/'_Posgrado1_ - Traffic - Gi1_0_16'.csv",sep = ',', header = TRUE, skip = 9)

Posgrado2<-read.csv("$CACTIG/'_Posgrado2_ - Traffic - Gi1_0_17'.csv",sep = ',', header = TRUE, skip = 9)

Seminarios<-read.csv("$CACTIG/'_Seminarios_ - Traffic - Gi1_0_14'.csv",sep = ',', header = TRUE, skip = 9)

UIM<-read.csv("$CACTIG/'_UIM_ - Traffic - Gi1_0_15'.csv",sep = ',', header = TRUE, skip = 9)

INhisto<-read.csv("$CACTIG/'INhistorico'.csv",sep = ',', header = TRUE, skip = 0)

OUThisto<-read.csv("$CACTIG/'OUThistorico'.csv",sep = ',', header = TRUE, skip = 0)

INhisto$X<-NULL
OUThisto$X<-NULL

OUTtotal<-cbind(Nu0[,1:3],Vl1[,3], A12[,3], A1[,3], A2[,3], A3[,3], A4[,3], A421[,3], A6[,3], A7[,3], A8[,3], A9[,3], Almacen[,3], ApoDoc[,3], Cajas[,3], CCA[,3], CETED[,3], Gobierno[,3], Idiomas[,3], Libreria[,3], Posgrado1[,3], Posgrado2[,3], Seminarios[,3], UIM[,3] )
OUTtotal$Inbound<-NULL

names(OUTtotal)=c("Nu0", "Vl1","A12", "A1", "A2", "A3", "A4", "A421", "A6", "A7", "A8", "A9", "Almacen", "ApoDoc", "Cajas", "SUM", "CCA", "CETED", "Gobierno", "Idiomas", "Libreria", "Posgrado1", "Posgrado2", "Seminarios", "UIM" )

INtotal<-cbind(Nu0[,1:2],Vl1[,2], A12[,2], A1[,2], A2[,2], A3[,2], A4[,2], A421[,2], A6[,2], A7[,2], A8[,2], A9[,2], Almacen[,2], ApoDoc[,2], Cajas[,2], CCA[,2], CETED[,2], Gobierno[,2], Idiomas[,2], Libreria[,2], Posgrado1[,2], Posgrado2[,2], Seminarios[,2], UIM[,2] )

names(INtotal)=c("Nu0", "Vl1","A12", "A1", "A2", "A3", "A4", "A421", "A6", "A7", "A8", "A9", "Almacen", "ApoDoc", "Cajas", "SUM", "CCA", "CETED", "Gobierno", "Idiomas", "Libreria", "Posgrado1", "Posgrado2", "Seminarios", "UIM" )

INNhist<-rbind(INhisto, INtotal)

OUTNhist<-rbind(OUThisto, OUTtotal)

write.csv(INNhist,file = "$CACTIG/'INhistorico'.csv", row.names = TRUE)

write.csv(OUTNhist,file = "$CACTIG/'OUThistorico'.csv", row.names = TRUE)