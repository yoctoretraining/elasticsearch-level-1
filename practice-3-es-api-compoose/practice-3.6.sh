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

info "6" ": modifier la requête numéro 4 pour que les films du genre « action », « fantasy » et « adventure » soit en dernière position et que « action » et « fantasy » soit retourner en premier"
echo -e "${prt} url : localhost:/movies/description/_search [ POST ]

{
  "query" : {
    "bool" : {
      "minimum_should_match"  : 0 ,
      "should"                : [
        {
          "term" : {
            "gender" : "fantasy",
            "boost"  : 2
          }
        },
        {
          "term" : {
            "gender" : "adventure",
            "boost"  : -1
          }
        }
      ],
      "must"                  : [
        {
          "term" : {
            "gender" : "action"
          }
        }
      ],
      "must_not"                  : [
      ]
    }
  }
}
"
