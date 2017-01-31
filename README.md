# IP-Quit-Trigger

####:scroll: Instructions: 

1. Test devices connected to network by running the script. They shall show up in the 'Active IPs' section.
2. Connect a new device to the network. The corresponding IP address will now show up in the 'Active IPs' section.
3. Disconnect the new device from the network and run the script again.
4. You will now see that device's IP address & MAC address listed in the 'Trigger IPs' & 'Trigger MACs' section.
5. Edit the commented portion of the script to take desired relevant action over those IP addresses & MAC addresses.
6. Rerun the script and now the disconneted device will disappear from all sections.

####:package: Package(s) to install:

* fping: Click [here](http://fping.org) to visit fping's website.

####:heavy_plus_sign: Arguments:
Argument 1: Byte 1,2 & 3 in decimal [0-255].[0-255].[0-255]</br>
Argument 2: Byte 4 starting address in decimal [0-255]</br>
Argument 3: Byte 4 ending address in decimal [0-255]</br>
####:triangular_flag_on_post: Example:
```$ sh ipquit.sh 192.168.0 100 110```</br></br>
This will inspect for IPs:</br>
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
