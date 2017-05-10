#!/bin/bash
# -*- ENCODING: UTF-8 -*-

#Interval to increment the dates
contador=604800

#To get the last date to start and finished
inicio=$(cat script_perl/dati)
fin=$(cat script_perl/datf)

#To Download the CSV files from cacti to Downloads directory
cd /home/drst/Downloads


#CPU
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=31&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - CPU Usage.csv' "'palomar - CPU Usage'.csv"

#Nu0
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=32&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - StackSub-St1-2.csv' "'palomar - Traffic - Nu0'.csv"

#vl1
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=6&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Vl1.csv' "'palomar - Traffic - Vl1'.csv"

#A12
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=15&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_10.csv' "'_A12_ - Traffic - Gi1_0_10'.csv"

#A1
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=7&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_1.csv' "'_A1_ - Traffic - Gi1_0_1'.csv"

#A2
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=8&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_2.csv' "'_A2_ - Traffic - Gi1_0_2'.csv"

#A3
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=9&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_3.csv' "'_A3_ - Traffic - Gi1_0_3'.csv"

#A4
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=10&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_4.csv' "'_A4_ - Traffic - Gi1_0_4'.csv"

#A421
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=30&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_5.csv' "'_A421_ - Traffic - Gi1_0_5'.csv"

#A6
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=11&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_6.csv' "'_A6_ - Traffic - Gi1_0_6'.csv"

#A7
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=12&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_7.csv' "'_A7_ - Traffic - Gi1_0_7'.csv"

#A8
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=13&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_8.csv' "'_A8_ - Traffic - Gi1_0_8'.csv"

#A9
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=14&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_9.csv' "'_A9_ - Traffic - Gi1_0_9'.csv"

#Almacen
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=17&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_12.csv' "'_ALMACEN_ - Traffic - Gi1_0_12'.csv"

#Apoyo a la Docencia
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=26&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_21.csv' "'_ApoyoDocencia_ - Traffic - Gi1_0_21'.csv"

#Cajas 
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=18&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_13.csv' "'_Cajas_ - Traffic - Gi1_0_13'.csv"

#CCA
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=25&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_20.csv' "'_CCA_ - Traffic - Gi1_0_20'.csv"

#CETED
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=28&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_23.csv' "'_CETED_ - Traffic - Gi1_0_23'.csv"

#Core1
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=29&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_24.csv' "'_Core1_ - Traffic - Gi1_0_24'.csv"

#Gobierno
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=27&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_22.csv' "'_Gobierno_ - Traffic - Gi1_0_22'.csv"

#Idiomas 
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=16&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_11.csv' "'_IDIOMAS_ - Traffic - Gi1_0_11'.csv"

#Libreria
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=24&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_19.csv' "'_Libreria_ - Traffic - Gi1_0_19'.csv"

#Posgrado1
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=21&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_16.csv' "'_Posgrado1_ - Traffic - Gi1_0_16'.csv"

#Posgrado2
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=22&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_17.csv' "'_Posgrado2_ - Traffic - Gi1_0_17'.csv"

#Seminarios
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=19&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_14.csv' "'_Seminarios_ - Traffic - Gi1_0_14'.csv"

#UIM
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=20&rra_id=0&graph_start=$inicio&graph_end=$fin"
mv 'palomar - Traffic - Gi1_0_15.csv' "'_UIM_ - Traffic - Gi1_0_15'.csv"

#Format of date to compare 
datemon=$(date +%b)

#Transform the month in numbers to words
if [[ "$datemon" == "ene" ]];
then
	datemon=01
elif [[ "$datemon" == "feb" ]];
then
	datemon=02
elif [[ "$datemon" == "mar" ]];
then
	datemon=03
elif [[ "$datemon" == "abr" ]];
then
	datemon=04
elif [[ "$datemon" == "may" ]];
then
	datemon=05
elif [[ "$datemon" == "jun" ]];
then
	datemon=06
elif [[ "$datemon" == "jul" ]];
then
	datemon=07
elif [[ "$datemon" == "ago" ]];
then
	datemon=08
elif [[ "$datemon" == "sep" ]];
then
	datemon=09
elif [[ "$datemon" == "oct" ]];
then
	datemon=10
elif [[ "$datemon" == "nov" ]];
then
	datemon=11
elif [[ "$datemon" == "dic" ]];
then 
	datemon=12
fi

#Join between the day an month with new format
dateto=$(date +$datemon-%d)

#Dates for diferents events
dateins1a=$(cat ins1.txt)
dateins2a=$(cat ins2.txt)

#dateins1b=01-18
#dateins2b=02-03

dateido1a=$(cat ido1.txt)
dateido2a=$(cat ido2.txt)

#dateido1b=01-20
#dateido2b=02-17

dateext1a=$(cat ext1.txt)
dateext2a=$(cat ext2.txt)

#dateext1b=06-12
#dateext2b=06-16

datefin1a=$(cat fin1.txt)
datefin2a=$(cat fin2.txt)

#datefin1b=
#datefin2b=

#To move the CSV files to the specific directory 
cd $whereisnocsistem

if (( "$dateins1a" <= "$dateto"  &&  "$dateto" <= "$dateins2a" )) ; then     mv /home/drst/Downloads/*.csv datos/inscripciones/;     CACTIG=datos/inscripciones; fi  

#if (( "$dateins1b" <= "$dateto"  &&  "$dateto" <= "$dateins2b" )) ; then     mv /home/drst/Downloads/*.csv datos/inscripciones/; fi


if (( "$dateido1a" <= "$dateto"  &&  "$dateto" <= "$dateido2a" )) ; then     mv /home/drst/Downloads/*.csv datos/ins_ido/;     CACTIG=datos/ins_ido; fi

#if (( "$dateido1b" <= "$dateto"  &&  "$dateto" <= "$dateido2b" )) ; then     mv /home/drst/Downloads/*.csv datos/ins_ido/; fi


if (( "$dateext1a" <= "$dateto"  &&  "$dateto" <= "$dateext2a" )) ; then     mv /home/drst/Downloads/*.csv datos/extras/;     CACTIG=datos/extras; fi

#if (( "$dateext1b" <= "$dateto"  &&  "$dateto" <= "$dateext2b" )) ; then     mv /home/drst/Downloads/*.csv datos/extras/; fi


if (( "$datefin1a" <= "$dateto"  &&  "$dateto" <= "$datefin2a" )) ; then     mv /home/drst/Downloads/*.csv datos/finales/;     CACTIG=datos/finales; fi

#if (( "$datefin1b" <= "$dateto"  &&  "$dateto" <= "$datefin2b" )) ; then     mv /home/drst/Downloads/*.csv datos/finales/; fi

#Incease the date for the next session
inicio=`expr inicio + contador`
fin=`expr fin + contador`

#Save the dates in files
echo inicio > script_perl/dati
echo fin > script_perl/datf 

#R script to clean and join the CSV files
Rscript script_R/noc_clean.R $CACTIG

exit