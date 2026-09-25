#!/bin/bash

function get_network_stats {
	rx_bytes=$(cat /proc/net/dev | grep enp0s3 | awk '{print $2}')
	tx_bytes=$(cat /proc/net/dev | grep enp0s3 | awk '{print $10}')
	
	echo "RX: $rx_bytes bytes    TX: $tx_bytes  bytes"
	
}
