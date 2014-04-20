# DNS-Scripts
DNS-Scripts was created to simplify the process of dynamic DNS updates with certain provides like [FreeDNS](http://freedns.afraid.org) which are not supported directly by [DDclient](http://sourceforge.net/p/ddclient/wiki/Home/). As long as your provider allows you to make a GET request to a URL with the new IP Address as a parameter, this script should solve your problem

## Requirements/Dependencies
Debian/Ubuntu/Raspbian
Python 2
python-requests, python-netifaces (Handled during the install process)

## Usage
1. Download [Zip archive](https://github.com/rohankapoorcom/dns-scripts/archive/master.zip) and Unzip
2. Execute install.sh as root

## License

Copyright (c) 2014 Rohan Kapoor, http://rohankapoor.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.