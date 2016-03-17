#!/bin/bash

if [ $# -eq 0 ]; then exit 0; fi

if [ ! -x "$1" ]; then chmod u+x $1; fi

echo -ne "\e[7m"; ./$@; echo -ne "\e[27m"
