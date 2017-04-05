#!/usr/bin/env bash
set -e
set -x

if [[ -n $DEBUG ]]; then
  DEBUGSNIP="-debug"
else
  DEBUGSNIP=""
fi

# XXX TODO lookup image based on region- right now everything is hardcoded for us-west-2
GITREV=`git describe --all |sed -e 's/\//-/g'`

for i in 2008 2012; do
  PACKER_LOG=1 packer build ${DEBUGSNIP} --var git_rev=${GITREV} --var source_ami=${AMI} base-windows-${i}.json 
end
