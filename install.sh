#! /bin/bash

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

# Get the current directory of the install script
SCRIPT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing Dependencies"
apt-get install python-requests python-netifaces

echo "Installing DNS-Scripts"

echo "Paste in URL For Afraid.org Dynamic Update:"
read PROVIDED_URL
sed -i -e "s/blah/$PROVIDED_URL/" $SCRIPT_DIRECTORY/ddns/ddns.py

echo "Copying dns from $SCRIPT_DIRECTORY to /etc/init.d/"
cp $SCRIPT_DIRECTORY/dns /etc/init.d/dns
chmod +x /etc/init.d/dns

echo "Copying ddns.py from $SCRIPT_DIRECTORY/ddns to /etc/ddns/ddns.py"
mkdir -p /etc/ddns/
cp $SCRIPT_DIRECTORY/ddns/ddns.py /etc/ddns/ddns.py
chmod +x /etc/ddns/ddns.py