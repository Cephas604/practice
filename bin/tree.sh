#!/bin/bash

list_recursive ()
{
	local filepath=$1
	local indent="  "
	echo "${indent}${filepath##*/}"	
	if [ -d "$filepath" ]; then
		local fname
		_IFS=$IFS	
		IFS=$'\n'
		for fname in $(ls "$filepath")
		do
			next_fpl=$(echo "$filepath" | sed -e "s/\// /g" | wc -w)
			indent_fpl=$(seq -s "$indent" 0 $(( $next_fpl - $first_fpl + 1)) | tr -d '[0-9]')
			echo "${indent_fpl}$(list_recursive "${filepath}/${fname}")"
		done
		IFS=$_IFS
	fi
}
first_fpl=$(echo "$1" | sed -e "s/\// /g" | wc -w)
list_recursive "$1"
