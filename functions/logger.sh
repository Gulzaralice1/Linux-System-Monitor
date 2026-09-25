#!/bin/bash

function write_log {

	echo "$(date '+%Y-%m-%d %H:%M:%S') | $1"  >> logs/monitor.log

}


