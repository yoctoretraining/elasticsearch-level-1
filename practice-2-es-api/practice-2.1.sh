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

info "1" ": Créer un index « movies » qui contiens deux types :

  o	Le type « desrciption » qui à le mapping suivant :
    -	« movie_id » : « string »
    -	« cost » : « integer »
    -	« people » : un « array d’objet » qui à le mapping suivant :
      •	« account_id » :  « string »
      •	« salary » : « integer »
      •	« role » : « string »
    -	« gender » : un « array de string »
    -	« synopsis » : « string »
    -	« title » : un « objet » qui à le mapping suivant :
      •	« original » : « string »
      •	« french » : « string »
    -	« release_date » : « date »
  o	Le type « coments » qui a le mapping suivant :
    -	« movie_id » : « string »
    -	« message » : « string »
    -	« like » : « boolean »
    -	« stars » : « integer »
    -	« created_date » : « date »
    -	« account_id » : « string »"

echo -e "${prt} url : localhost:10200/movies [ POST ]
{
  "mappings" : {
    "description" : {
      "properties" : {
        "movie_id"  : { "type" : "string" },
        "cost"      : { "type" : "integer" },
        "people" : {
          "type"        : "nested",
          "properties"  : {
            "role"        : { "type" : "string" },
            "salary"      : { "type" : "integer" },
            "account_id"  : { "type" : "string" }
          }
        },
        "gender"      : { "type" : "string" },
        "synopsis"    : { "type" : "string" },
        "title"       : {
          "type"        : "object",
          "properties"  : {
            "original"    : { "type" : "string" },
            "french"      : { "type" : "string" }
          }
        },
        "release_date" : { "type" : "date" }
      }
    },
    "comments" : {
      "properties" : {
        "movie_id"      : { "type" : "string" },
        "message"       : { "type" : "string" },
        "like"          : { "type" : "integer" },
        "stars"         : { "type" : "boolean" },
        "created_date"  : { "type" : "boolean" },
        "account_id"    : { "type" : "string" }
      }
    }
  }
}"
