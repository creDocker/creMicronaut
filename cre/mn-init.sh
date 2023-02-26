#!/usr/bin/env bash 
# sleep 10000

# https://guides.micronaut.io/latest/creating-your-first-micronaut-app-maven-kotlin.html

cd /cre/mn-apps
## --build=gradle|maven
## --lang=java|kotlin

/cre/micronaut.sh create-app mn-init --build maven --lang=kotlin
##/cre/micronaut.sh create-app domain.mn-init  -> domain = namespace

ls -l /cre/mn-apps/mn-init

