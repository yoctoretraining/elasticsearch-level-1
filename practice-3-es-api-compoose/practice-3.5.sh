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

info "5" ": : effectuer une recherche pour que tout les films de genre « action » soit retourné, et que les films ayant également le genre « fantasy » soit en premier"
echo -e "${prt} url : localhost:/movies/description/_search [ POST ]

{
  "query" : {
    "bool" : {
      "minimum_should_match"  : 1 ,
      "should"                : [
        {
          "term" : {
            "gender" : "fantasy",
            "boost"  : 2
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
