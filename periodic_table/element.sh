#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
SEARCH_SELECT="SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements left join properties using(atomic_number) left join types using(type_Id)"

main(){
  [[ $# -eq 0 ]] && echo "Please provide an element as an argument." && return 0
  ELEM_TO_FIND="$1"
  ERR_MSG="I could not find that element in the database."
  if [[ $ELEM_TO_FIND =~ ^[0-9]+$ ]]
  then
    SELECTED_ELEMENT=$($PSQL "$SEARCH_SELECT where atomic_number = $ELEM_TO_FIND;")
  elif [[ ! -z $ELEM_TO_FIND ]]
  then
     SELECTED_ELEMENT=$($PSQL "$SEARCH_SELECT where name = '$ELEM_TO_FIND' or symbol = '$ELEM_TO_FIND';")
  fi
  if [[ -z $SELECTED_ELEMENT ]]
  then
    echo "$ERR_MSG"
    return 0
  fi
  echo "$SELECTED_ELEMENT" | while read ATOMIC_NUMBER BAR NAME BAR SYMBOL BAR TYPE BAR MASS BAR MELTING BAR BOILING
  do
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
  done 
}

main "$@"
