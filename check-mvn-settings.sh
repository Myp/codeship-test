#!/bin/bash

m2settings=~/.m2/settings.xml

if [ ! -f "$m2settings" ]; then
 echo "Maven settings not found. Create settings for nexus"

mkdir -p ~/.m2

cat > $m2settings <<- EOF
 <?xml version="1.0" encoding="UTF-8"?> 
 <settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"> 
  <servers>
   <server>
    <id>nexus</id>
    <username>\${nexus.user}</username>
    <password>\${nexus.password}</password>
   </server>
  </servers> 
 </settings>
EOF
 
fi
