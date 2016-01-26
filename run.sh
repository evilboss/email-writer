#!/usr/bin/env bash

# This .sh file will be sourced before starting your application.
# You can use it to put environment variables you want accessible
# to the server side of your app by using process.env.MY_VAR
#
# Example:
# export MONGO_URL="mongodb://localhost:27017/myapp-development"
# export ROOT_URL="http://localhost:3000"

#export VELOCITY_DEBUG=0

# these are about to get canned
export JASMINE_CLIENT_UNIT=0
export JASMINE_SERVER_UNIT=0
export JASMINE_CLIENT_INTEGRATION=0
export JASMINE_SERVER_INTEGRATION=0
export CUCUMBER=1
export CUCUMBER_TAIL=1;

cd app
meteor $1 --settings ../environments/local/settings.json --release velocity:METEOR@1.1.0.2_3 --raw-logs
