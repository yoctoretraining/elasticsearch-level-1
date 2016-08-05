#!/bin/bash

# utility function
bldred='\033[1;31m'
bldgrn='\033[1;32m'
bldblu='\033[1;34m'
bldylw='\033[1;33m'
txtrst='\033[0m'

info () {
  printf "%b\n" "\n${bldblu}[ Exercice n° $1 ]${txtrst} $2"
}

task () {
  printf "%b\n" "${bldylw}[ Task n° $1 ]${txtrst} $2"
}

prt="${bldgrn}$>${txtrst}"

info "1" ": Installer Elasticsearch et démarrer le serveur"
echo -e "${prt} Go to https://www.elastic.co/guide/en/elasticsearch/reference/current/_installation.html  and follow instructions for download"

info "2" ": Effectuer une requête sur le serveur pour récupéré la santé du cluster par défaut "
echo -e "${prt} Route d’appel http://localhost:9200/_cluster/health  [GET] "

info "3" ": Modifier le fichier de config dans « config/elasticsearch.yml »
Redémarrer le serveur en changeant les paramètres suivants :
  - Modifier le port sur « 10200 »
  - Modifier path data
  - Modifier path logs"

info "4" : "installer le plugin elasticsearch-head "
echo -e "${prt} Commande d’installation : « ./bin/plugin install mobz/elasticsearch-head »
Remarque : il n’y a pas de « - » avant le install
url du plugin : http://localhost:10200/_plugin/head/"
