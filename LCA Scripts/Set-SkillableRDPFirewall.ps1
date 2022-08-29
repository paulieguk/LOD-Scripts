#  This script will set the firewall rules to the Public IP Addresses used by Skillable for the RDP service.  
#  This can be useful when configuring VM images in the cloud either as part of the image build or to be used as an LCA to apply the rules on startup.
#  NOTE:  This will replace any current RemoteAddress Source values for the RDP firewall rules: Remote Desktop - User Mode (TCP-In) & Remote Desktop - User Mode (UDP-In) 


$nfwAddressFilter = (Get-NetFirewallRule -DisplayName "Remote Desktop - User Mode (TCP-In)" | Get-NetFirewallAddressFilter )
Set-NetFirewallAddressFilter -InputObject $nfwAddressFilter -RemoteAddress 104.214.106.0/25, 185.254.59.0/24, 103.18.85.0/24, 163.47.101.0/25, 168.245.203.241-168.245.203.254, 206.196.30.1-206.196.30.56
$nfwAddressFilter = (Get-NetFirewallRule -DisplayName "Remote Desktop - User Mode (UDP-In)" | Get-NetFirewallAddressFilter )
Set-NetFirewallAddressFilter -InputObject $nfwAddressFilter -RemoteAddress 104.214.106.0/25, 185.254.59.0/24, 103.18.85.0/24, 163.47.101.0/25, 168.245.203.241-168.245.203.254, 206.196.30.1-206.196.30.56
