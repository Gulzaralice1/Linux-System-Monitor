#!/bin/bash


function check_status {

	if [[ $1 -ge $2 ]]
	then
		echo "warning"
	else
		echo "ok"
	fi 

}

check_status 50 80
