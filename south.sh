#!/bin/bash

if [ $# -eq 0 ]; then exit 0; fi

if [ ! -x "$1" ]; then chmod u+x $1; fi

tmp=".tmp-out"
rm -f $tmp
./$@ 1>${tmp}
echo -ne "\e[7m"
cat $tmp
echo -ne "\e[27m"
rm -f $tmp
