#!/bin/bash

OS_PERREQ(){
    set-hostname ${COMPONENT}
    apt update
}

## main program

OS_PREREQ