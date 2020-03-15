#!/bin/sh

set -e

# adds yarn`s global binaries folder to $PATH
export PATH=$PATH:$(yarn global bin)

# ensure ZEIT_TOKEN environment variable is not empty
[ -z $ZEIT_TOKEN ] && echo -n "ZEIT_TOKEN environment variable is required, please provide it" && exit 1

sh -c "now --token $ZEIT_TOKEN $*"