#!/bin/bash

# Spec https://documentation.heliosvoting.org/verification-specs/helios-v3-verification-specs
#
# Nota: De acordo com a documentação acima, os resultados sempre serão colocados em ordem alfabética
#
#Data Formats
#
#We begin with a description of the data types and their representations. All data made available by Helios is in JavaScript Object Notation (JSON) format, with keys in alphabetical order and no extraneous whitespace other than that specified by JSON. These two conditions are particularly important, as hashing data structures will only yield the same hash if the conditions are respected.
#
# Desta forma, assumo que a ordem sempre será a seguinte:
#
#
#Antônio Augusto Teixeira Pinto de Moraes (Antônio)
#Edson d'Ávila (d'Ávila)
#Elaine Inácio Bueno (Elaininha)
#Maurício França Silva (Prof. França)
#Rovílson Dias da Silva (Rovílson)
#Silmário Batista dos Santos (Professor Silmário)
#Wilson de Andrade Matos (Wilson Matos)
#Branco
#Nulo
#
# Sintaxe: script.sh <nome_da_urna>

HELIOS_REAL_URL=$(curl -si https://helios.ifsp.edu.br/helios/e/${1} | grep ^location | awk '{ print $2 }' | sed -e 's,/view,,' | tr -d '\r')

JSON=$(curl -s ${HELIOS_REAL_URL}/result)

itervoto=0
candidatos=( "Antônio Augusto Teixeira Pinto de Moraes (Antônio)" "Edson d'Ávila (d'Ávila)" "Elaine Inácio Bueno (Elaininha)" "Maurício França Silva (Prof. França)" "Rovílson Dias da Silva (Rovílson)" "Silmário Batista dos Santos (Professor Silmário)" "Wilson de Andrade Matos (Wilson Matos)" "Branco" "Nulo" )

for candidato in "${candidatos[@]}"; do 
	echo -n "${candidato},"
	echo ${JSON} | jq .[0][${itervoto}]
	itervoto=$((itervoto+1)) 
done

