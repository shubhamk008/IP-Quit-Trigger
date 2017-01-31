# IP-Quit-Trigger

####:package: Package(s) necessary:

* fping: Click [here](http://fping.org) to visit fping's website.

####:wrench: Usage:

Arguments are IPv4 address fields. To test your IP, check your current IP address.</br>
Then provide arguments as the starting & ending IP to scan. These boundary values allow multiple IPs to be pinged & monitored. Say your connected device has the IP 192.168.0.103 . You could test all devices of interest having IPs ranging from 192.168.0.100 to 192.168.0.110 like this:</br>

>sh ipquit.sh 192.168.0 100 110</br>

Range: sh ipquit.sh [0-255].[0-255].[0-255] [0-255] [0-255]

####:scroll: Instructions: 

1. Test devices connected to network by running the script. They shall show up in the 'Active IPs' section.
2. Connect a new device to the network. The corresponding IP address will now show up in the 'Active IPs' section.
3. Disconnect the new device from the network and run the script again.
4. You will now see that device's IP address & MAC address are listed in the 'Trigger IPs' & 'Trigger MACs' section.
5. Edit the commented portion of the script to take desired  action over those IP addresses & MAC addresses.
6. Rerun the script and now the disconneted device will disappear from all sections.

####:triangular_flag_on_post: Example:
```$ sh ipquit.sh 192.168.0 100 110```</br></br>
This will inspect IPs from 192.168.0 to 192.168.0.110:</br>
>192.168.0.100</br>
192.168.0.101</br>
192.168.0.102</br>
192.168.0.103</br>
192.168.0.104</br>
192.168.0.105</br>
192.168.0.106</br>
192.168.0.107</br>
192.168.0.108</br>
192.168.0.109</br>
192.168.0.110

####:mag_right: Screenshots:

![Alttext](https://github.com/shubhamk008/IP-Quit-Trigger/raw/master/Screenshots/1.png "Screen 1")
![Alttext](https://github.com/shubhamk008/IP-Quit-Trigger/raw/master/Screenshots/2.png "Screen 2")
![Alttext](https://github.com/shubhamk008/IP-Quit-Trigger/raw/master/Screenshots/3.png "Screen 3")
![Alttext](https://github.com/shubhamk008/IP-Quit-Trigger/raw/master/Screenshots/4.png "Screen 4")
