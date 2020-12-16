#!/bin/bash
SERVER_URL=$1/api
CURL=/usr/bin/curl
JQ=/usr/bin/jq

echo "Running Integration ${0}"
echo "Checking if the book is present - if present delete it"
${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books/123-1234567890' | ${JQ} '{id,isbn,title}'
val=`${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books/123-1234567890' | ${JQ} -r '.isbn'`
if [ "${val}"  != "123-1234567890" ] ; then
  echo "Book with isbn: 123-1234567890 does not exist. Nothing to do."
else
  echo "Deleting book with isbn: 123-1234567890.."
  ${CURL} -sq -X DELETE --header 'Accept: */*' ${SERVER_URL}'/books/123-1234567890' 
fi
echo "Test is passing.."
exit 0

