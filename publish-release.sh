#!/bin/bash


if [[ "$CI_BRANCH" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
 echo "Publish release $CI_BRANCH"
 mvn deploy:deploy-file -DgroupId=test.testcompany \
                        -DartifactId=test-file \
                        -Dversion=$CI_BRANCH \
                        -DgeneratePom=true \
                        -Dpackaging=jar \
                        -DrepositoryId=nexus \
                        -Durl=$NEXUS_URL \
                        -Dfile=test-codeship.jar \
                        -Dnexus.user=$NEXUS_USER \
                        -Dnexus.password=$NEXUS_PASSWORD
 
else  
 echo "It's just commit. Nothing to do"
fi 
