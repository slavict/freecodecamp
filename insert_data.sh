#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
declare -A UNIQUE_TEAMS
GAMES_VALUES=()

{
  read 
  while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
  do
    UNIQUE_TEAMS["$WINNER"]=1
    UNIQUE_TEAMS["$OPPONENT"]=1
    
    GAMES_VALUES+=("($YEAR, '$ROUND', (SELECT team_id FROM teams WHERE name='$WINNER'), (SELECT team_id FROM teams WHERE name='$OPPONENT'), $WINNER_GOALS, $OPPONENT_GOALS)")
  done 
} < games.csv


TEAM_VALUES_STRING=""
for TEAM in "${!UNIQUE_TEAMS[@]}"; do
  TEAM_VALUES_STRING+="('$TEAM'),"
done

if [[ -n $TEAM_VALUES_STRING ]]; then
  $PSQL "INSERT INTO teams(name) VALUES ${TEAM_VALUES_STRING%?} ON CONFLICT (name) DO NOTHING;"
fi

GAMES_STRING=$(IFS=, ; echo "${GAMES_VALUES[*]}")

$PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES $GAMES_STRING;"

