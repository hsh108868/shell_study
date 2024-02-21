#! /bin/bash

input=start

case $input in
	start)
		echo "Starting"
		;;
	stop)
		echo "Stopping"
		;;
	*)
		echo "Unknown Command"
		;;
esac
