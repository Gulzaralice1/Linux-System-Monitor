#!/bin/bash

function get_processes_usage {

	process_usage=$(ps aux --sort=-%cpu | head -n 3 | tail -n 2 | awk '{print $2 $3 $14 $11}')
	
	echo "$process_usage"
}

