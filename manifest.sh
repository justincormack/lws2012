#!/bin/sh

FILE=cache.appcache
echo "CACHE MANIFEST" > $FILE
echo "#`date`" >> $FILE
echo >> $FILE
find index.html js/*.js d3/d3*.min.js styles/*.css data/* img/* src/prettify/* fonts/* >> $FILE
echo >> $FILE
echo "FALLBACK:" >> $FILE
echo 'http://fonts.googleapis.com/css?family=Droid+Sans|Droid+Sans+Mono fonts/fonts.css' >> $FILE
echo '/ null' >> $FILE

