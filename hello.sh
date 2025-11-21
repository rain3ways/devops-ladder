#!/bin/bash

NAME="$1"

if [[ "$#" -lt 1 ]];
then
	echo "Usage: ${0} <name>"
	exit 1
else
	echo "Hello, ${NAME}!"
fi
