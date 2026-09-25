#!/bin/bash


function get_disk_val {
	disk_usage=$(df -h  | awk '$6 == "/" {print $5}' | tr -d '%')

	echo  "$disk_usage"

}

