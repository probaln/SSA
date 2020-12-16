#!/bin/bash
SERVER_URL=$1/api
CURL=/usr/bin/curl
JQ=/usr/bin/jq

echo "Running Integration ${0}"
echo "Initializing..."

# Get the count of All books
echo "Running..."
echo "Adding a book with isbn : 123-1234567890, title =My Java Book author = Probal Nandy, Description='My Java 11 book' "
${CURL} -s -X POST --header 'Content-Type: application/json' --header 'Accept: */*' -d '{"authors": [  { "firstName": "Probal",  "lastName": "Nandy"  }  ],  "description": "My Java 11 book",  "isbn": "123-1234567890",  "publisher": "Addison",  "title": "My Java Book"  }' ${SERVER_URL}'/books'

echo " "
echo "Checking if the book is now added in the list - print the added record"
${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books/123-1234567890' | ${JQ} '{id,isbn,title}'
val=`${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books/123-1234567890' | ${JQ} -r '.isbn'`
if [ "${val}"  != "123-1234567890" ] ; then
  echo "Test is failing..${val}"
  exit 1
else
  echo "Test is passing.."
  exit 0
fi

