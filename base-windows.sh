#!/usr/bin/env bash
set -e
set -x

if [[ -n $DEBUG ]]; then
  DEBUGSNIP="-debug"
else
  DEBUGSNIP=""
fi

# XXX TODO lookup image based on region- right now everything is hardcoded for us-west-2
# current AMI is windows-2012r2 updated 03/15/2017
AMI=ami-09f47d69
GITREV=`git describe --all |sed -e 's/\//-/g'`

PACKER_LOG=1 packer build ${DEBUGSNIP} --var git_rev=${GITREV} --var source_ami=${AMI} base-windows.json 
