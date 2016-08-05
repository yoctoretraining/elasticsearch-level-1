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

info "2" ": : rechercher les films ayant les mots clés « dark », « vador », « etoile », « noire » dans leur « synopsis »"
echo -e "${prt} url : localhost:/movies/description/_search [ POST ]

{
  "query" : {
    "match" : {
      "synopsis"    : "Dark Vador Obi-Wan Kenobi"
    }
  }
}
"
