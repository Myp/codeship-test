#!/bin/bash


if [[ "$CI_BRANCH" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
 echo "Publish release $CI_BRANCH"
 curl https://20669c2b.ngrok.io/publish/release/$CI_BRANCH 
else  
 echo "It's just commit. Nothing to do"
fi 
