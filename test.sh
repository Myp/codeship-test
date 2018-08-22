#!/bin/bash

echo "Custom deployment"
echo "Test"

curl "https://cc1d34cd.ngrok.io/from/codeship/$CI_COMMIT_ID"
