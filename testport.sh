#!/bin/bas

echo "quel protocole souhaitez vous controler?"
	select i in TCP UDP; do

		if [[ $i =  UDP  ]];then

echo $i "choisi"
		echo "En attente de récupération des ports ouverts avec le protocole UDP"
		 nc -v -u -z 127.0.0.1 1-65535
		break

		elif [[ $i = TCP ]];then
echo $i "choisi"
		echo "En attente de récupération des ports ouverts avec le protocole TCP"
		 nc -v -z 127.0.0.1  01-65535 2>&1 | grep  succeeded
		break

		else
		echo " ERREUR, CHOISIR 1 OU 2 POUR CE SCRIPT" 
		fi
done
