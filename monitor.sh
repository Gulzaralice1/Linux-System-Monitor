#!/bin/bash


set -e

source functions/cpu.sh      #access cpu file
source functions/memory.sh   #access memory file 
source functions/disk.sh     #access disk memeory 
source functions/network.sh  #access network file
source functions/processes.sh
source functions/system.sh
source confi.sh
source functions/status.sh
source functions/logger.sh




echo "================================================"
echo "                LINUX SYSTEM MONITOR"
echo "================================================="
echo ""


cpu_usage=$(get_cpu_usage)
memory_usage=$(get_memory_usage)
disk_usage=$(get_disk_val)
network_usage=$(get_network_stats)
process_usage=$(get_processes_usage)
system_info=$(get_system_info)



cpu_status=$(check_status "$cpu_usage" "$CPU_THRESHOLD")
memory_status=$(check_status "$memory_usage" "$MEMORY_THRESHOLD")
disk_status=$(check_status "$disk_usage" "DISK_THRESHOLD")

echo "SYSTEM INFO"
echo "$system_info"

echo ""
echo "RESOURCE USAGE"
echo "Cpu   : $cpu_usage [ $cpu_status ]"
echo "Memory: $memory_usage  [ $memory_status ]"
echo "Disk  : $disk_usage  [ $disk_status ]"

echo ""
echo "NETWORK"
echo "Network Usage: $network_usage"

echo ""
echo ""
echo "TOP PROCESSES"
echo "$process_usage"




write_log "CPU: $cpu_usage% | RAM: $memory_usage% | Disk: $disk_usage%"

echo "======================================================================"

