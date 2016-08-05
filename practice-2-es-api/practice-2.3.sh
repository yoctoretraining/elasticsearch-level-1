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

info "3.1" ": Rechercher les films de type « comedy »"
echo -e "${prt} url : localhost:10200/movies [ POST ]
{
  "query" : {
    "term" : {
      "gender" : "comedy"
    }
  }
}
"

info "3.2" ": Rechercher les films qui sont sorti le « 2016-08-03 »"
echo -e "${prt} url : localhost:10200/movies/description/_search [ POST ]
{
  "query" : {
    "term" : {
      "release_date"    : "2016-08-03"
    }
  }
}
"

info "3.3" ": Rechercher les films qui sont sorti le « 2016-08-01 » et le « 2016-08-15 »"
echo -e "${prt} url : localhost:10200/movies/description/_search [ POST ]
{
  "query" : {
    "range" : {
      "release_date" : {
         "gte" : "2016-08-01",
         "lte" : "2016-08-15"
      }
    }
  }
}
"

info "3.4" ": Recherche des films qui ont couté moins cher que 150000000"
echo -e "${prt} url : localhost:10200/movies/description/_search [ POST ]
{
  "query" : {
    "range" : {
      "cost" : {
         "gte" : 0,
         "lte" : 150000000
      }
    }
  }
}
"
