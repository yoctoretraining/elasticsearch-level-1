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

info "7" ": effectuer une recherche des films étant du genre action, cependant le mot clé rechercher contient une faute de frappe et est « actoon » "
echo -e "${prt} url : localhost:/movies/description/_search [ POST ]

{
  "query" : {
    "bool" : {
      "minimum_should_match"  : 0 ,
      "should"                : [
      ],
      "must"                  : [
        {
          "fuzzy" : {
            "gender" : {
              "value"          : "actoon",
              "boost"          : 0.5,
              "fuzziness"      : 2,
              "prefix_length"  : 2,
              "max_expansions" : 100
            }
          }
        }
      ],
      "must_not"                  : [
      ]
    }
  }
}
"
