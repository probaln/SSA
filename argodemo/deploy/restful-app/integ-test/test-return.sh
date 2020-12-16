#!/bin/bash
SERVER_URL=$1/api
CURL=/usr/bin/curl
JQ=/usr/bin/jq

# Get the count of All books
${CURL} -s -X POST --header 'Content-Type: application/json' --header 'Accept: */*' -d '{"authors": [  { "firstName": "Probal",  "lastName": "Nandy"  }  ],  "description": "My Java 11 book",  "isbn": "123-1234567890",  "publisher": "Addison",  "title": "My Java Book"  }' ${SERVER_URL}'/books'

val=`${CURL} -s -X GET --header 'Accept: application/json' ${SERVER_URL}'/books/123-1234567890' | ${JQ} -r '.isbn'`
if [ "${val}"  != "123-1234567890" ] ; then
  echo "Test is failing..${val}"
  exit 1
else
  echo ${val}
  exit 0
fi

