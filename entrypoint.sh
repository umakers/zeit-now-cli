#!/bin/sh

set -e

# adds yarn`s global binaries folder to $PATH
export PATH=$PATH:$(yarn global bin)

# ensure ZEIT_TOKEN environment variable is not empty
[ -z $VERCEL_TOKEN ] && echo -n "VERCEL_TOKEN environment variable is required, please provide it" && exit 1

sh -c "vercel --token $VERCEL_TOKEN $*"
