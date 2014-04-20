#!/usr/bin/python
import getopt, sys, os, socket, requests

from netifaces import interfaces, ifaddresses, AF_INET

URL = "blah"


# get the current IP address
currentIP = -1
for ifaceName in interfaces():
    addresses = [i['addr'] for i in ifaddresses(ifaceName).setdefault(AF_INET, [{'addr':'No IP addr'}])]
    for ip in addresses:
        if ip.find("127.") == -1:
            currentIP = ip

if currentIP == -1:
    print("IP Address not found")
    exit(1)

# Send the data to the afraid.org dns server
requests.get(URL,
	params={'address': currentIP})