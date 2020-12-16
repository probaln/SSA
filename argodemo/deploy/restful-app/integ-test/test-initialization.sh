#!/bin/bash
SERVER_URL=$1/api
CURL=/usr/bin/curl
JQ=/usr/bin/jq

echo "Running Integration ${0}"
echo "Initializing..."
# Pre test - make sure delete if exists - but do not check the results
${CURL} -sq -X DELETE --header 'Accept: */*' ${SERVER_URL}'/books/123-1234567890' 
echo " "
# Get the count of All books
echo "Running..."
${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books?sort=id&order=asc' | ${JQ} '.[] | {id, isbn, title, publisher}'
t=`${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books?sort=id&order=asc' | ${JQ} length`
if [ "${t}"  != 4 ] ; then
  echo "Test is failing.. Got ${t}"
  exit 1
else
  echo "Test is passing.."
  exit 0
fi


