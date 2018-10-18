#!/bin/bash

TEMPLATEDIRS="$@"

if [[ -z $TEMPLATEDIRS ]]; then
  TEMPLATEDIRS="$(find -not -type f -and -not -name ".git" -and -not -name "." -maxdepth 1 | sed 's/.\///g;')"
fi

for TEMPLATEDIR in $TEMPLATEDIRS; do 
  if [[ -d ${TEMPLATEDIR} ]]; then  
    grep -ERh  '#<-- .* -->#' ${TEMPLATEDIR}/* | perl -pe 's/.*#<-- (.*) -->#.*/$1=\"\"/g;' | sort -h
  fi
done

