 # Script that tells you Total and Free space on your Drive.

 Get-WmiObject -Class Win32_LogicalDisk | 
 # Gets Device ID and then converts bytes to GBs for both total size and free space
 
 select DeviceID, {$_.Size /1GB}, {$_.FreeSpace /1GB}

 #gonna work on making output look cleaner and maybe add option to input what drive you want to see. 
