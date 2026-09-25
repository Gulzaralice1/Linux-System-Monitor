#!/bin/bash

function get_memory_usage {

	total_memory=$(free -m | awk '/Mem:/ {print $2}')

	used_memory=$(free -m | awk '/Mem:/ {print $3}')

	memory_usage=$((used_memory * 100 / total_memory))


	echo "$memory_usage"
}


