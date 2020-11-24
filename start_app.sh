#!/bin/bash
set -e
env
echo "***** Setting Environment Variables *****"
TEST=Gangadhar
echo $TEST

echo "Starting server....."
$JAVA_HOME/bin/java -jar server.jar