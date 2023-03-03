#!/usr/bin/env bash 
# sleep 10000

# https://guides.micronaut.io/latest/creating-your-first-micronaut-app-maven-kotlin.html
# https://micronaut-projects.github.io/micronaut-starter/latest/guide/#commands

cd /cre/mn-apps
## --build=gradle|maven
## --lang=java|kotlin

#for now cleanup dir first
rm -Rf /cre/mn-apps/mn-init

/cre/micronaut.sh create-app --list-features

/cre/micronaut.sh create-app mn-init --build=maven --lang=kotlin
##/cre/micronaut.sh create-app domain.www.mn-init  -> domain.subdomain = namespace;  xx-yy => subdirs??


cp /home/kmicha/code/creDocker/creMicronaut/cre/mn-apps/hello-kotlin/HelloController.kt /home/kmicha/code/tambora/compose/volumes/spring/mn-init/src/main/kotlin/mn/init
cp /home/kmicha/code/creDocker/creMicronaut/cre/mn-apps/hello-kotlin/ HelloControllerTest.kt /home/kmicha/code/tambora/compose/volumes/spring/mn-init/src/test/kotlin/mn/init

./mvnw test

##ls -l /cre/mn-apps/mn-init

