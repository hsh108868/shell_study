#! /bin/bash

uptime | awk -F'[a-z]:' '{ print "Uptime: " $1 "\nLoad Average: " $2 }'

