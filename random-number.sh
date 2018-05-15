#!/bin/bash
# Threshold number
NUMBER=$1
# cicle time interval
INTERVAL=$2

if [ -z "$NUMBER" ]
then
  NUMBER=90
fi

if [ -z "$INTERVAL" ]
then
  INTERVAL=1
fi
echo "Started test with $NUMBER% chances to die and an interval of $INTERVAL seconds" | tee $0.log
while true; do
sleep $INTERVAL
ROULETTE=$(echo $RANDOM | cut -c 1-2)
  if [ "$ROULETTE" -lt $NUMBER ]; then
    echo "Hello $(date) - $ROULETTE"
  else
    echo "I'm dying :(... - $ROULETTE"
    exit 1
  fi
done >> $0.log
