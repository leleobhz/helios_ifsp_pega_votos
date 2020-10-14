# helios_ifsp_pega_votos
Pequeno sistema que a partir do nome da urna, imprime uma lista CSV dos resultados da votação. Próprio para eleição de 2020.

## Requisitos

Este script exige a aplicação jq. Para instalar:

### Ubuntu
```apt install -y jq```

### Fedora/CentOS (Epel)
```yum install -y jq```

## Exemplo

```
$ ./print_resultados.sh urna_020_cmp_di
Antônio Augusto Teixeira Pinto de Moraes (Antônio),16
Edson d'Ávila (d'Ávila),2
Elaine Inácio Bueno (Elaininha),70
Maurício França Silva (Prof. França),3
Rovílson Dias da Silva (Rovílson),3
Silmário Batista dos Santos (Professor Silmário),7
Wilson de Andrade Matos (Wilson Matos),11
Branco,7
Nulo,11
$
```

## Passeio pelas Urnas
Há um script que percorre todas as urnas. Um exemplo parcial:

```
$ ./passeio_pelas_urnas.sh 
Urna urna_001_arq_do:
Antônio Augusto Teixeira Pinto de Moraes (Antônio),1
Edson d'Ávila (d'Ávila),5
Elaine Inácio Bueno (Elaininha),9
Maurício França Silva (Prof. França),1
Rovílson Dias da Silva (Rovílson),1
Silmário Batista dos Santos (Professor Silmário),24
Wilson de Andrade Matos (Wilson Matos),22
Branco,1
Nulo,3

Urna urna_002_arq_di:
Antônio Augusto Teixeira Pinto de Moraes (Antônio),9
Edson d'Ávila (d'Ávila),20
Elaine Inácio Bueno (Elaininha),52
Maurício França Silva (Prof. França),8
Rovílson Dias da Silva (Rovílson),1
Silmário Batista dos Santos (Professor Silmário),29
Wilson de Andrade Matos (Wilson Matos),17
Branco,24
Nulo,48

Urna urna_003_arq_te:
Antônio Augusto Teixeira Pinto de Moraes (Antônio),1
Edson d'Ávila (d'Ávila),0
Elaine Inácio Bueno (Elaininha),3
Maurício França Silva (Prof. França),0
Rovílson Dias da Silva (Rovílson),0
Silmário Batista dos Santos (Professor Silmário),12
Wilson de Andrade Matos (Wilson Matos),18
Branco,2
Nulo,4

Urna urna_004_avr_do:
Antônio Augusto Teixeira Pinto de Moraes (Antônio),2
Edson d'Ávila (d'Ávila),1
Elaine Inácio Bueno (Elaininha),2
Maurício França Silva (Prof. França),0
Rovílson Dias da Silva (Rovílson),0
Silmário Batista dos Santos (Professor Silmário),45
Wilson de Andrade Matos (Wilson Matos),4
Branco,0
Nulo,3

Urna urna_005_avr_di:
Antônio Augusto Teixeira Pinto de Moraes (Antônio),11
Edson d'Ávila (d'Ávila),1
Elaine Inácio Bueno (Elaininha),30
Maurício França Silva (Prof. França),2
Rovílson Dias da Silva (Rovílson),0
Silmário Batista dos Santos (Professor Silmário),77
Wilson de Andrade Matos (Wilson Matos),5
Branco,9
Nulo,14

Urna urna_006_avr_te:
Antônio Augusto Teixeira Pinto de Moraes (Antônio),3
Edson d'Ávila (d'Ávila),0
Elaine Inácio Bueno (Elaininha),3
Maurício França Silva (Prof. França),0
Rovílson Dias da Silva (Rovílson),0
Silmário Batista dos Santos (Professor Silmário),28
Wilson de Andrade Matos (Wilson Matos),4
Branco,0
Nulo,0

```
