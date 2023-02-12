#!/usr/bin/env bash 

MICRONAUT_PATH=$(/cre/sdk.sh home micronaut current)/bin
${MICRONAUT_PATH}/mn $@
