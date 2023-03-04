#!/usr/bin/env bash 
# sleep 10000

# https://guides.micronaut.io/latest/creating-your-first-micronaut-app-maven-kotlin.html
# https://micronaut-projects.github.io/micronaut-starter/latest/guide/#commands

cd /cre/mn-apps
## --build=gradle|maven
## --lang=java|kotlin

##ls -l

#for now cleanup dir first
rm -Rf /cre/mn-apps/mn-init/

## /cre/micronaut.sh create-app --list-features

/cre/micronaut.sh create-app mn-init --build=maven --lang=kotlin \
  --features=data-jdbc,liquibase,vertx-pg-client,postgres,serialization-jsonp,kotlin-extension-functions,email-javamail,rabbitmq,rss,views-thymeleaf,management
##/cre/micronaut.sh create-app domain.www.mn-init  -> domain.subdomain = namespace;  xx-yy => subdirs??


# copy files for hello world init...
echo "cp hello"
cp /cre/mn-init/hello-kotlin/HelloController.kt /cre/mn-apps/mn-init/src/main/kotlin/mn/init
cp /cre/mn-init/hello-kotlin/HelloControllerTest.kt /cre/mn-apps/mn-init/src/test/kotlin/mn/init

cd /cre/mn-apps/mn-init
./mvnw test

##ls -l /cre/mn-apps/mn-init

