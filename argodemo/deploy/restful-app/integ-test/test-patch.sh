#!/bin/bash
SERVER_URL=$1/api
CURL=/usr/bin/curl
JQ=/usr/bin/jq

echo "Running Integration ${0}"
${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books/123-1234567890' | jq '{id,isbn,description}'
echo "Updating the book with isbn : 123-1234567890, description='Java11 - An authorative guide' "
${CURL} --data 'Java11 - An authorative guide'  -X PATCH --header 'Content-Type: application/json' --header 'Accept: application/json' ${SERVER_URL}'/books/123-1234567890'

echo " "
echo "Checking if the book is now has updated publisher with PATCH - print the Changed Values"
${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books/123-1234567890' | ${JQ} '{id,isbn,description}'
val=`${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books/123-1234567890' | ${JQ} -r '.description'`
if [ "${val}"  != "Java11 - An authorative guide" ] ; then
  echo "Test is failing..${val}"
  exit 1
else
  echo "Test is passing.."
  exit 0
fi

