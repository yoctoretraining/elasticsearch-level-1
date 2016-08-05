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

info "10" ": modifier la requête n°9 pour ne retourner que deux réponses à chaque requête"
echo -e "${prt} url : localhost:/movies/description/_search [ POST ]

{
  "sort" : [
    {
        "release_date" : "desc"
    }, "_score"
  ],
  "query" : {
    "bool" : {
      "minimum_should_match"  : 0 ,
      "should"                : [

      ],
      "must"                  : [
        {
          "match_phrase_prefix" : {
            "title.french"  : {
              "query"     : "sta",
              "operator"  : "or"
            }
          }
        }
      ],
      "must_not"                  : [
      ]
    }
  },
  "from" : 0,
  "size" : 2
}
"
