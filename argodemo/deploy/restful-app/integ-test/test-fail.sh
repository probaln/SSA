#!/bin/bash
SERVER_URL=$1/api
CURL=/usr/bin/curl
JQ=/usr/bin/jq

echo "Running Integration ${0}"
echo "Initializing..."
# Pre test - make sure delete if exists - but do not check the results
${CURL} -sq -X DELETE --header 'Accept: */*' ${SERVER_URL}'/books/123-1234567890' 
echo " "
# Now it should always fail
echo "Running..."
val=`${CURL} -sq -X DELETE --header 'Accept: */*' ${SERVER_URL}'/books/123-1234567890'` 
echo "Test is failing.. Got ${val}"
exit 1


