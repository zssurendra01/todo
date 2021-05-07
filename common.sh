#!/bin/bash

OS_PREREQ(){
    set-hostname $ {COMPONENT}
    apt update
}

# main program
OS_PREREQ