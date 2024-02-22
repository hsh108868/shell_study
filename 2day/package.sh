#! /bin/bash

list="installed_packages.txt"

yum list installed > "${list}"

echo "The file has been saved to ${list}."
