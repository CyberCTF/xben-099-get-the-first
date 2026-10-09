#!/bin/sh
# /info reads the user count from MongoDB and the application's start time.
curl -fsS --max-time 15 http://app:3000/info | grep -q 'Total users:'
