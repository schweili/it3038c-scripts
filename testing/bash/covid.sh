#!/bin/bash
# This script downloads covid data and displays it

DATA=$(curl https://api.covidtracking.com/v1/us/current.json)
POSITIVE=$(echo $DATA | jq '.[0].positive')
TODAY=$(date)
NEGATIVE=$(echo $DATA | jq '.[0].negative')
PENDING=$(echo $DATA | jq '.[0].pending')
DEATH=$(echo $DATA | jq '.[0].death')
echo "On $TODAY, there were $POSITIVE positive COVID cases, $NEGATIVE negative cases, $PENDING pending cases, and $DEATH deaths."

