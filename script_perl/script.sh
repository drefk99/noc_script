#!/bin/bash
# -*- ENCODING: UTF-8 -*-

contador=604800

inicio=`cat dati`
fin=`cat datf`


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


#A7
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=12&rra_id=0&graph_start=$inicio&graph_end=$fin"


#A8
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=14&rra_id=0&graph_start=$inicio&graph_end=$fin"


#Almacen
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=17&rra_id=0&graph_start=$inicio&graph_end=$fin"


#Apoyo a la Docencia
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=26&rra_id=0&graph_start=$inicio&graph_end=$fin"


#Cajas 
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=18&rra_id=0&graph_start=$inicio&graph_end=$fin"


#CCA
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=25&rra_id=0&graph_start=$inicio&graph_end=$fin"


#CETED
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=28&rra_id=0&graph_start=$inicio&graph_end=$fin"


#Core1
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=29&rra_id=0&graph_start=$inicio&graph_end=$fin"


#Gobierno
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=27&rra_id=0&graph_start=$inicio&graph_end=$fin"


#Idiomas 
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=16&rra_id=0&graph_start=$inicio&graph_end=$fin"


#Libreria
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=24&rra_id=0&graph_start=$inicio&graph_end=$fin"


#Posgrado1
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=21&rra_id=0&graph_start=$inicio&graph_end=$fin"


#Posgrado2
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=22&rra_id=0&graph_start=$inicio&graph_end=$fin"


#Seminarios
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=19&rra_id=0&graph_start=$inicio&graph_end=$fin"


#UIM
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=20&rra_id=0&graph_start=$inicio&graph_end=$fin"



datemon=$(date +%b)

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

dateto=$(date +$datemon-%d)

dateins1a=
dateins2a=

dateins1b=01-18
dateins2b=02-03

dateido1a=
dateido2a=

dateido1b=01-20
dateido2b=02-17

dateext1a=
dateext2a=

dateext1b=06-12
dateext2b=06-16

#datefin1a=
#datefin2a=

#datefin1b=
#datefin2b=



if (( "$dateins1a" <= "$dateto"  &&  "$dateto" <= "$dateins2a" )) ; then     mv /home/drst/Downloads/*.csv datos/inscripciones/; fi  

if (( "$dateins1b" <= "$dateto"  &&  "$dateto" <= "$dateins2b" )) ; then     mv /home/drst/Downloads/*.csv datos/inscripciones/; fi


if (( "$dateido1a" <= "$dateto"  &&  "$dateto" <= "$dateido2a" )) ; then     mv /home/drst/Downloads/*.csv datos/ins_ido/; fi

if (( "$dateido1b" <= "$dateto"  &&  "$dateto" <= "$dateido2b" )) ; then     mv /home/drst/Downloads/*.csv datos/ins_ido/; fi


if (( "$dateext1a" <= "$dateto"  &&  "$dateto" <= "$dateext2a" )) ; then     mv /home/drst/Downloads/*.csv datos/extras/; fi

if (( "$dateext1b" <= "$dateto"  &&  "$dateto" <= "$dateext2b" )) ; then     mv /home/drst/Downloads/*.csv datos/extras/; fi


if (( "$datefin1a" <= "$dateto"  &&  "$dateto" <= "$datefin2a" )) ; then     mv /home/drst/Downloads/*.csv datos/finales/; fi

if (( "$datefin1b" <= "$dateto"  &&  "$dateto" <= "$datefin2b" )) ; then     mv /home/drst/Downloads/*.csv datos/finales/; fi


inicio=`expr inicio + contador`
fin=`expr inicio + contador`

echo inicio > dati
echo inicio > datf 

#R

exit
