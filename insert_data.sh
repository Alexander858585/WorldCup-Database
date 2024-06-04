#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
TRUNCATE=$($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND NAME_WINNER NAME_OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then
    CHECK_EXISTENCE=$($PSQL "SELECT team_id FROM teams WHERE name = '$NAME_WINNER' AND name = '$NAME_OPPONENT'")
      if [[ -z $CHECK_EXISTENCE ]]
      then
      INSERT_NAME_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$NAME_WINNER') ON CONFLICT (name) DO NOTHING")
      INSERT_NAME_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$NAME_OPPONENT') ON CONFLICT (name) DO NOTHING")
      echo Inserted...
      fi
      WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$NAME_WINNER'")
      OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$NAME_OPPONENT'")
      INSERT_IN_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_TEAM_ID, $OPPONENT_TEAM_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
      if [[ $INSERT_IN_GAMES = 'INSERT 0 1' ]]
      then
      echo Inserted in games
      fi
  fi
done