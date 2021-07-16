#!/bin/bash
while read line
do ls --color=auto -l $line
done
