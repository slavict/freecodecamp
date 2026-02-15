#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=users -t --no-align -c"
let MIN=1
let MAX=1000

 MAIN_MENU(){ 
  echo "Enter your username:"
  read USER_NAME

  USER_INFO=$($PSQL "SELECT user_id, name, games_played, best_game FROM users WHERE name = '$USER_NAME';")
  
  if [[ -z $USER_INFO ]]; then
    echo "Welcome, $USER_NAME! It looks like this is your first time here."
    INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES('$USER_NAME');")
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USER_NAME';")
    GAMES_PLAYED=0
    BEST_GAME=0
  else
    IFS='|' read USER_ID NAME GAMES_PLAYED BEST_GAME <<< "$USER_INFO"
    NAME=$(echo $NAME | xargs)
    GAMES_PLAYED=$(echo $GAMES_PLAYED | xargs)
    BEST_GAME=$(echo $BEST_GAME | xargs)
    NAME=$(echo $NAME | sed 's/ //g')
    echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi

  local -i SCORE=0
  local -i RAND_INT=$(($MIN + RANDOM % ($MAX - $MIN + 1)))
  echo "Guess the secret number between 1 and 1000:"
  while true;do
    read USER_GUESS
    (( SCORE++ ))
    if [[ ! $USER_GUESS =~ ^[0-9]+$ ]] || (( USER_GUESS > MAX || USER_GUESS < MIN ));then
      echo "That is not an integer, guess again:"
      continue
    fi
    if (( USER_GUESS == RAND_INT ));then
      echo "You guessed it in $SCORE tries. The secret number was $RAND_INT. Nice job!"
      break
    fi
    (( USER_GUESS > RAND_INT  )) && echo "It's lower than that, guess again:"
    (( USER_GUESS < RAND_INT  )) && echo "It's higher than that, guess again:"
  done
  INSERT_GAME=$($PSQL "INSERT INTO games(user_id, score) VALUES($USER_ID, $SCORE);")
  (( GAMES_PLAYED++ ))
  if (( BEST_GAME == 0 || SCORE < BEST_GAME )); then
    UPDATE_RESULT=$($PSQL "UPDATE users SET games_played = $GAMES_PLAYED, best_game = $SCORE WHERE user_id = $USER_ID;")
  else
    UPDATE_RESULT=$($PSQL "UPDATE users SET games_played = $GAMES_PLAYED WHERE user_id = $USER_ID;")
  fi
}

 MAIN_MENU

