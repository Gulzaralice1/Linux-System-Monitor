#!/bin/bash


function get_cpu_usage {
	cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
	echo "$cpu_usage"
}



