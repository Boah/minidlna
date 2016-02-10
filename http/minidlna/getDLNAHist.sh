#!/bin/sh

#cp "/var/tmp/minidlna.xml" "/srv/http/server/minidlna.xml"

echo '<?xml version="1.0" encoding="UTF-8"?>' > dlnaHistory.xml
echo '<?xml-stylesheet type="text/xsl" href="style/dlnaHistStyle.xsl"?>' >> dlnaHistory.xml
echo '<History>' >> dlnaHistory.xml
#Adapt your path here
cat "minidlna.xml" >> dlnaHistory.xml
echo '</History>' >> dlnaHistory.xml

