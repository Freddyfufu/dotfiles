#!/usr/bin/env bash

# NEEDS TO BE GLOBALLY ACCESSIBLE


# interprete files with no extension as bash script

file=$(echo $(basename $1) | cut -c 2-)
file_ending=$(echo $(basename $1) | cut -d "." -f2)
if [[ ! $file =~ "." ]]; then
    bat --language=bash --color=always $1
elif [[ $file_ending == "conf" ]]; then
    bat --language="Apache Conf" --color=always $1
else
    bat --color=always $1
fi
