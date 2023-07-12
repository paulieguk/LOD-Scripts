# This script can be used in an LCA to set the IPAddress of a VM on startup.  This will pick a random forth octect ans set the IP Address.  
# If the IP Address state does not switch to preferred then the script will loop until an IP address does get set as prefered.
# Author: Paul.Gregory@skillable.com

function fn-setip{

# Set the base IPAddress and the fourth Octet value range.  The range should be atleast twice the concurrect class size.
# The bigger the range the less chance of conflicts.
$IPAddress = '192.168.10.' + (Get-Random -Minimum 10 -Maximum 250)

# Get Interface name
$interface = (Get-NetIPAddress)[0].interfacealias


# Set IP Address
New-NetIPAddress -InterfaceAlias $interface -AddressFamily IPv4 -IPAddress $IPAddress -PrefixLength 24
sleep 2
}

do{
    fn-setip

   }
until (($nictest = Get-NetIPAddress)[0].AddressState -eq 'Preferred')
