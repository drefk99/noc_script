#!/bin/bash
# -*- ENCODING: UTF-8 -*-

contador=604800

inicio=`cat dati`
fin=`cat datf`


#CPU
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=94&rra_id=0&graph_start=$inicio&graph_end=$fin"
#Nu0
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=93&rra_id=0&graph_start=$inicio&graph_end=$fin"
#vl1
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=70&rra_id=0&graph_start=$inicio&graph_end=$fin"
#A12
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=79&rra_id=0&graph_start=$inicio&graph_end=$fin"
#A1
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=71&rra_id=0&graph_start=$inicio&graph_end=$fin"
#A2
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=72&rra_id=0&graph_start=$inicio&graph_end=$fin"
#A3
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=73&rra_id=0&graph_start=$inicio&graph_end=$fin"
#A4
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=74&rra_id=0&graph_start=$inicio&graph_end=$fin"
#A5
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=75&rra_id=0&graph_start=$inicio&graph_end=$fin"
#A6
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=76&rra_id=0&graph_start=$inicio&graph_end=$fin"
#A7
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=77&rra_id=0&graph_start=$inicio&graph_end=$fin"
#A8
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=78&rra_id=0&graph_start=$inicio&graph_end=$fin"
#Almacen
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=81&rra_id=0&graph_start=$inicio&graph_end=$fin"
#Apoyo a la Docencia
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=89&rra_id=0&graph_start=$inicio&graph_end=$fin"
#Cajas 
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=82&rra_id=0&graph_start=$inicio&graph_end=$fin"
#CCA
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=88&rra_id=0&graph_start=$inicio&graph_end=$fin"
#CETED
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=91&rra_id=0&graph_start=$inicio&graph_end=$fin"
#Core1
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=92&rra_id=0&graph_start=$inicio&graph_end=$fin"
#Gobierno
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=90&rra_id=0&graph_start=$inicio&graph_end=$fin"
#Idiomas 
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=80&rra_id=0&graph_start=$inicio&graph_end=$fin"
#Libreria
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=87&rra_id=0&graph_start=$inicio&graph_end=$fin"
#Posgrado1
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=85&rra_id=0&graph_start=$inicio&graph_end=$fin"
#Posgrado2
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=86&rra_id=0&graph_start=$inicio&graph_end=$fin"
#Seminarios
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=83&rra_id=0&graph_start=$inicio&graph_end=$fin"
#UIM
firefox "http://192.168.50.13/cacti/graph_xport.php?local_graph_id=84&rra_id=0&graph_start=$inicio&graph_end=$fin"

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
elif [[ "$datemon" == "arb" ]];
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
