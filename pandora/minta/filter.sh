#!/bin/bash


cat | while read line
      do

	  echo $line | grep '\([1-9][0-9]\{3\}\)\.\(0[1-9]\|1[0-2]\)\.\(0[1-9]\|[12][0-9]\|3[01]\)'
	  if [ $? -eq 0 ]
	  then
	      echo "Eredeti sor: $line"
	      echo "Modositott sor: $(echo $line | sed 's/\([1-9][0-9]\{3\}\)\.\(0[1-9]\|1[0-2]\)\.\(0[1-9]\|[12][0-9]\|3[01]\)/Év: \1, Honap: \2, Nap: \3/g')"
	  else
	      echo $line
	  fi
      done
exit 0
