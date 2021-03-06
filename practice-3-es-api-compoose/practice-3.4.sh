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

info "4" ": : rechercher avec une requête composée tout les films de type « action » sortie après 2010 qui ne sont pas d’origine française"
echo -e "${prt} url : localhost:/movies/description/_search [ POST ]

{
  "query" : {
    "bool" : {
      "minimum_should_match"  : 1 ,
      "should"                : [
      ],
      "must"                  : [
        {
          "term" : {
            "gender" : "action"
          }
        },
        {
         "range" : {
           "release_date" : {
             "lte" : "2010-01-01"
           }
         }
       }
      ],
      "must_not"                  : [
        {
          "term" : {
            "origin" : "french"
          }
        }
      ]
    }
  }
}
"
