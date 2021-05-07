#!/bin/bash

COMPONENT = $1
export LOG=/tmp/${COMPONENT}.LOG

source components/common.sh

if [! -f components/${COMPONENT}.sh]; then
 ERROR "invalid component Name is Provided"
 exit 1
fi

USER_NAME=$(pwd,whoami)

if ["${USER_NAME}" != "root" ]; then
 ERROR "you should be a root user to perform this script,try with sudo"
 exit 1
fi 

export COMPONENT

bash -s components/${COMPONENT}.sh