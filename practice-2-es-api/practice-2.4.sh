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

info "4" ": modifier la date de sortie du film « Age de glace » au « 10 aout 2016 » et vérifier avec la requête de l’exercice 3 que le film est bien retourné"
echo -e "${prt}

info : la philosophie d'elastic lors de l'update d'un document, est de le retrouver, puis de le mettre à jour
afin de le réindexer, pour cela il faut envoyé integralement l'objet
NB : il existe également un processus de \"partial update\" --> niveau 2

url : localhost:10200/movies/description/:id_doc [ PUT ]
{
  "movie_id"  : "mov123456783",
  "cost"      : 100000,
  "gender" : [ "comedy", "animation"],
  "synopsis" : "L’éternelle quête de Scrat pour attraper son insaisissable gland le catapulte dans l’espace, où il déclenche accidentellement une série d’événements cosmiques qui vont transformer et menacer le monde de l’Âge de Glace.",
  "title"   : {
    "original"  : "Ice Age : Collision Course",
    "french"    : "L’âge de glace : les lois de l’univers"
  },
  "release_date" : "2016-08-10"
}
"
