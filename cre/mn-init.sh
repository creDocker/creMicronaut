#!/usr/bin/env bash 
sleep 2

# https://guides.micronaut.io/latest/creating-your-first-micronaut-app-maven-kotlin.html
# https://micronaut-projects.github.io/micronaut-starter/latest/guide/#commands

## cd /cre/mn-app
cd /cre/mn-create

## --build=gradle|maven
## --lang=java|kotlin

##ls -l

#### for now cleanup dir firstmn-config
###  rm -Rf /cre/mn-app

## /cre/micronaut.sh create-app --list-features
#postgres fails, but vertx-pg-client works

mnFeatures=serialization-jsonp,kotlin-extension-functions,rss,views-thymeleaf,management
mnFeatures=${mnFeatures},data-jdbc,liquibase,vertx-pg-client,postgres
mnFeatures=${mnFeatures},rabbitmq
mnFeatures=${mnFeatures},email-javamail

## /cre/micronaut.sh create-app cre.micronaut.app --build=maven --lang=kotlin \
##   --features=data-jdbc,liquibase,vertx-pg-client,serialization-jsonp,kotlin-extension-functions,email-javamail,rabbitmq,rss,views-thymeleaf,management

/cre/micronaut.sh create-app cre.micronaut.app --build=maven --lang=kotlin --features=${mnFeatures}
##/cre/micronaut.sh create-app domain.www.mn-init  -> domain.subdomain = namespace;  xx-yy => subdirs??
python3 /cre/mn-config.py


# copy files for hello world init...
echo "cp template files"

ls -l /cre/mn-create/
ls -l /cre/mn-create/app/src/main/kotlin/app
cp /cre/mn-template/hello-kotlin/HelloController.kt /cre/mn-create/app/src/main/kotlin/app
cp /cre/mn-template/hello-kotlin/HelloControllerTest.kt /cre/mn-create/app/src/test/kotlin/mn/init
cp /cre/mn-template/hello-kotlin/DbController.kt /cre/mn-create/app/src/main/kotlin/mn/app

cd /cre/mn-create/mn-init
./mvnw test


echo "cp to app dir"
# TODO: cp some files only once, some always
cp -R /cre/mn-create/init/src/main/kotlin/init/* /cre/mn-app





##ls -l /cre/mn-apps/mn-init

