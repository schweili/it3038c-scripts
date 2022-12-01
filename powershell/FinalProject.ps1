## Script that displays storage space information about the drives on your computer.


## Grabs all the information about the logical drives within your computer
Get-WmiObject -Class Win32_LogicalDisk |

## Grabs the DeviceID and Volume name from each drive on the computer
Select-Object -Property DeviceID, VolumeName, 

## Below are created lables that provide more information about the storage space on your drives
@{Label='Free Storage (Gb)'; expression={($_.FreeSpace/1GB).ToString('F2')}},
@{Label='Total Capacity (Gb)'; expression={($_.Size/1GB).ToString('F2')}},
@{label='Free Storage (%)'; expression={[Math]::Round(($_.freespace / $_.size) * 100, 2)}}|ft

