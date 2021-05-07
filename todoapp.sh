#!/bin/bash

COMPONENT =$1

if [! -f components/${COMPONENT}.sh]; then
    echo "invalid component name is provider"

fi

export COMPONENT