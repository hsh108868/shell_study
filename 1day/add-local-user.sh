#! /bin/bash

# root check
if [ "$(id -u)" -ne 0 ]; then
	echo "Please run with sudo or as root." >&2
	exit 1
fi

# Get the username (login).
read -p "username:" name

# Get the real name (contents for the description field).

read -p "real name:" first last

# Get the password

read -p "password:" passwd

# Create the account

useradd ${name} -c "${first} ${last}"

# Check to see if the useradd command succeeded

if [ $? -eq 0 ]; then
	echo "Successfully created."
else
	echo "Command failed." >&2
	exit 2
fi

# Set the password

echo "${passwd}" | passwd --stdin ${name}

# Check to see if the passwd command succeeded.

if [ $? -eq 0 ]; then
	echo "Successfully set."
else
	echo "Command failed.">&2
	exit 3
fi

# Force password change on first login.

passwd -e ${name}

# Display the username, password, and the host where the user was created.

echo
echo "username: ${name}"
echo
echo "password: ${passwd}"
echo
echo "host: ${HOSTNAME}"



