#!/bin/bash

#amit kap azt rendezi
cat | while read line
      do
	  echo "$line" | sed 's/ /\n/g' | sort
      done

exit 0
