#!/usr/bin/env bash 
# sleep 10000

cd /cre/mn-apps
/cre/micronaut.sh create-app mn-init --build maven 
ls -l /cre/mn-apps/mn-init

