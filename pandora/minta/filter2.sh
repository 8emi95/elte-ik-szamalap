#!/bin/bash

cat | while read line
      do
	  echo $line | grep '\(+36\|06\)[\t/ -]*[237]0[\t/ -]*[0-9]\{3\}[\t/ -]*[0-9]\{4\}'
	  if [ $? -eq 0 ]
	  then
	      echo "Eredeti sor: $line"
	      echo "Modositott sor: $(echo $line | sed 's/\(+36\|06\)[\t/ -]*\([237]0\)[\t/ -]*\([0-9]\{3\}\)[\t/ -]*\([0-9]\{4\}\)/+36 \2 \3-\4/g')"
	  else
	      echo $line
	  fi
      done

exit 0
