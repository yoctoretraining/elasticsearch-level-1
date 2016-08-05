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

info "2" ": Insérer via Postman trois document du type « description » avec des valeurs au choix en respectant le mapping défini :

 - Film 1 :
    •	movie_id : mov123456781
    •	cost : 120000000
    •	people 1 :
      •	account_id : abc123456780
      •	salary : 5000
      •	role    : « actor »
    •	people 2 :
      •	account_id : abc123456781
      •	salary : 6000
      •	role    : « actor »
    •	gender :
      •	« action »
      •	« Thriller »
    •	synopsis : « La traque de Jason Bourne par les services secrets américains se poursuit. Des îles Canaries à Londres en passant par Las Vegas. »
    •	« title » :
      •	original : « Jason Bourne »
      •	french : « Jason Bourne »
    •	release_date : 10 aout 2016

  - Film 2 :
    •	movie_id : mov123456782
    •	people 1 :
    •	account_id : peo123456782
    •	salary : 6985
    •	role    : « actor »
    •	gender :
      •	« action »
      •	« comedy »
    •	cost : 154000000
    •	synopsis: « S.O.S. FANTÔMES est de retour, revisité et dynamisé avec un casting féminin et de tout nouveaux personnages plus hilarants les uns que les autres»
    •	« title » :
      •	original : « Ghostbuster »
      •	french : « S.O.S Fantômes»
    •	release_date : 03 aout 2016

  - Film 3 :
    •	movie_id : mov123456783
    •	gender :
      •	« animation »
      •	« comedy »
    •	synopsis: « L’éternelle quête de Scrat pour attraper son insaisissable gland le catapulte dans l’espace, où il déclenche accidentellement une série d’événements cosmiques qui vont transformer et menacer le monde de l’Âge de Glace.»
    •	« title » :
      •	original : « Ice Age : Collision Course »
      •	french : « L’âge de glace : les lois de l’univers»
    •	release_date : 23 aout 2016
"

echo -e "${prt} Film 1 - url localhost:10200/movies/description [POST]
{
  "movie_id"  : "mov123456781",
  "cost"      : 120000000,
  "people"    : [
    {
      "account_id"  : "peo123456780",
      "salary"      : 5000,
      "role"        : "actor"
    },
    {
      "account_id"  : "peo123456781",
      "salary"      : 6000,
      "role"        : "actor"
    }
  ],
  "gender" : [ "action", "thriller"],
  "synopsis" : "La traque de Jason Bourne par les services secrets américains se poursuit. Des îles Canaries à Londres en passant par Las Vegas.",
  "title"   : {
    "original"  : "Jason Bourne",
    "french"    : "Jason Bourne"
  },
  "release_date" : "2016-08-10"
}
"

echo -e "${prt} Film 1 - url localhost:10200/movies/description [POST]
{
  "movie_id"  : "mov123456782",
  "cost"      : 154000000,
  "people"    : [
    {
      "account_id"  : "peo123456782",
      "salary"      : 6985,
      "role"        : "actor"
    }
  ],
  "gender" : [ "action", "comedy"],
  "synopsis" : "S.O.S. FANTÔMES est de retour, revisité et dynamisé avec un casting féminin et de tout nouveaux personnages plus hilarants les uns que les autres",
  "title"   : {
    "original"  : "Ghostbuster",
    "french"    : "S.O.S Fantômes"
  },
  "release_date" : "2016-08-03"
}
"


echo -e "${prt} Film 3 - url localhost:10200/movies/description [POST]
{
  "movie_id"  : "mov123456783",
  "cost"      : 100000,
  "gender" : [ "comedy", "animation"],
  "synopsis" : "L’éternelle quête de Scrat pour attraper son insaisissable gland le catapulte dans l’espace, où il déclenche accidentellement une série d’événements cosmiques qui vont transformer et menacer le monde de l’Âge de Glace.",
  "title"   : {
    "original"  : "Ice Age : Collision Course",
    "french"    : "L’âge de glace : les lois de l’univers"
  },
  "release_date" : "2016-08-23"
}
"
