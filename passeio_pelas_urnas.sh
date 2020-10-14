#!/bin/bash

URL=https://www.ifsp.edu.br/cabinesdevotacao

for lista in $(curl -s ${URL} | grep urna | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i'  | awk -F/ '{print $6}'); do
	echo Urna ${lista}:
	bash print_resultados.sh ${lista}
	echo
done
