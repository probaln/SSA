#!/bin/bash
SERVER_URL=$1/api
CURL=/usr/bin/curl
JQ=/usr/bin/jq

echo "Running Integration ${0}"
echo "Updating the book with isbn : 123-1234567890, title ='Complete Java11 Guide' author = Probal Nandy, Description='My Java 11 book' "
${CURL} -X PUT --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{  "authors": [  {  "firstName": "Probal",  "lastName": "Nandy"  } ],  "description": "Authorative Java11 Guide",  "isbn": "123-1234567890",  "publisher": "Addison", "title": "Complete Java11 Guide" }' ${SERVER_URL}'/books/123-1234567890'

echo " "
echo "Checking if the book is now has updated title and description with PUT - print the Changed Values"
${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books/123-1234567890' | ${JQ} '{id,isbn,title, description}'
val=`${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books/123-1234567890' | ${JQ}  -r '.title'`
if [ "${val}"  != "Complete Java11 Guide" ] ; then
  echo "Test is failing..${val}"
  exit 1
else
  echo "Test is passing.."
  exit 0
fi

