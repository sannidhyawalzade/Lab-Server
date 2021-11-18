#Connectiing Connect-AzAccount
#Resouce group creation
New-AzResourceGroup -Name firstyear-cs-rg-01 -Location 'East US' New-AzResourceGroup -Name firstyear-it-rg-01 -Location 'East US 2' New-AzResourceGroup -Name firstyear-ec-rg-01 -Location 'Australia Central' New-AzResourceGroup -Name firstyear-mech-rg-01 -Location 'Australia East'
New-AzResourceGroup -Name secondyear-cs-rg-01 -Location 'Australia Southeast' New-AzResourceGroup -Name secondyear-it-rg-01 -Location 'Brazil South' New-AzResourceGroup -Name secondyear-ec-rg-01 -Location 'Canada Central' New-AzResourceGroup -Name secondyear-mech-rg-01 -Location 'Canada East'
New-AzResourceGroup -Name thirdyear-cs-rg-01 -Location 'Korea South' New-AzResourceGroup -Name thirdyear-it-rg-01 -Location 'Central US' New-AzResourceGroup -Name thirdyear-ec-rg-01 -Location 'East Asia' New-AzResourceGroup -Name thirdyear-mech-rg-01 -Location 'France Central'
New-AzResourceGroup -Name fourthyear-cs-rg-01 -Location 'Germany West Central' New-AzResourceGroup -Name fourthyear-it-rg-01 -Location 'Japan East' New-AzResourceGroup -Name fourthyear-ec-rg-01 -Location 'Japan West' New-AzResourceGroup -Name fourthyear-mech-rg-01 -Location 'Korea Central'
#Network Security group
$nsg1 = New-AzNetworkSecurityGroup -Name "firstyear-cs-nsg-01" -ResourceGroupName firstyear-cs-rg-01 -Location 'East US'
$nsg2 = New-AzNetworkSecurityGroup -Name "firstyear-it-nsg-01" -ResourceGroupName firstyear-it-rg-01 -Location 'East US 2'
$nsg3 = New-AzNetworkSecurityGroup -Name "firstyear-ec-nsg-01" -ResourceGroupName firstyear-ec-rg-01 -Location 'Australia Central'
$nsg4 = New-AzNetworkSecurityGroup -Name "firstyear-mech-nsg-01" -ResourceGroupName firstyear-mech-rg-01 -Location 'Australia East'
$nsg5 = New-AzNetworkSecurityGroup -Name "secondtyear-cs-nsg-01" -ResourceGroupName secondyear-cs-rg-01 -Location 'Australia Southeast' $nsg6 = New-AzNetworkSecurityGroup -Name "secondtyear-it-nsg-01" -ResourceGroupName secondyear-it-rg-01 -Location 'Brazil South'
$nsg7 = New-AzNetworkSecurityGroup -Name "secondtyear-ec-nsg-01" -ResourceGroupName secondyear-ec-rg-01 -Location 'Canada Central' $nsg8 = New-AzNetworkSecurityGroup -Name "secondtyear-mech-nsg-01" -ResourceGroupName secondyear-mech-rg-01 -Location 'Canada East'
$nsg9 = New-AzNetworkSecurityGroup -Name "thirdyear-cs-nsg-01" -ResourceGroupName thirdyear-cs-rg-01 -Location 'Korea South' $nsg10 = New-AzNetworkSecurityGroup -Name "thirdyear-it-nsg-01" -ResourceGroupName thirdyear-it-rg-01 -Location 'Central US' $nsg11 = New-AzNetworkSecurityGroup -Name "thirdyear-ec-nsg-01" -ResourceGroupName thirdyear-ec-rg-01 -Location 'East Asia'
 
 $nsg12 = New-AzNetworkSecurityGroup -Name "thirdyear-mech-nsg-01" -ResourceGroupName thirdyear-mech-rg-01 -Location 'France Central'
$nsg13 = New-AzNetworkSecurityGroup -Name "fourthyear-cs-nsg-01" -ResourceGroupName fourthyear-cs-rg-01 -Location 'Germany West Central' $nsg14 = New-AzNetworkSecurityGroup -Name "fourthyear-it-nsg-01" -ResourceGroupName fourthyear-it-rg-01 -Location 'Japan East'
$nsg15 = New-AzNetworkSecurityGroup -Name "fourthyear-ec-nsg-01" -ResourceGroupName fourthyear-ec-rg-01 -Location 'Japan West'
$nsg16 = New-AzNetworkSecurityGroup -Name "fourthyear-mech-nsg-01" -ResourceGroupName fourthyear-mech-rg-01 -Location 'Korea Central'
#Resource Subnet
$subnet1config = New-AzVirtualNetworkSubnetConfig -Name cs-lab-sn-01 -AddressPrefix "10.0.0.0/26" -NetworkSecurityGroup $nsg1
$subnet2config = New-AzVirtualNetworkSubnetConfig -Name it-lab-sn-01 -AddressPrefix "20.0.0.0/26" -NetworkSecurityGroup $nsg2
$subnet3config = New-AzVirtualNetworkSubnetConfig -Name ec-lab-sn-01 -AddressPrefix "30.0.0.0/26" -NetworkSecurityGroup $nsg3
$subnet4config = New-AzVirtualNetworkSubnetConfig -Name mech-lab-sn-01 -AddressPrefix "40.0.0.0/26" -NetworkSecurityGroup $nsg4
$subnet5config = New-AzVirtualNetworkSubnetConfig -Name cs-lab-sn-02 -AddressPrefix "10.0.0.64/26" -NetworkSecurityGroup $nsg1
$subnet6config = New-AzVirtualNetworkSubnetConfig -Name it-lab-sn-02 -AddressPrefix "20.0.0.64/26" -NetworkSecurityGroup $nsg2
$subnet7config = New-AzVirtualNetworkSubnetConfig -Name ec-lab-sn-02 -AddressPrefix "30.0.0.64/26" -NetworkSecurityGroup $nsg3
$subnet8config = New-AzVirtualNetworkSubnetConfig -Name mech-lab-sn-02 -AddressPrefix "40.0.0.64/26" -NetworkSecurityGroup $nsg4
$subnet9config = New-AzVirtualNetworkSubnetConfig -Name cs-lab-sn-03 -AddressPrefix "50.0.0.0/26" -NetworkSecurityGroup $nsg5
$subnet10config = New-AzVirtualNetworkSubnetConfig -Name it-lab-sn-03 -AddressPrefix "60.0.0.0/26" -NetworkSecurityGroup $nsg6
$subnet11config = New-AzVirtualNetworkSubnetConfig -Name ec-lab-sn-03 -AddressPrefix "70.0.0.0/26" -NetworkSecurityGroup $nsg7
$subnet12config = New-AzVirtualNetworkSubnetConfig -Name mech-lab-sn-03 -AddressPrefix "80.0.0.0/26" -NetworkSecurityGroup $nsg8
$subnet13config = New-AzVirtualNetworkSubnetConfig -Name cs-lab-sn-04 -AddressPrefix "50.0.0.64/26" -NetworkSecurityGroup $nsg5
$subnet14config = New-AzVirtualNetworkSubnetConfig -Name it-lab-sn-04 -AddressPrefix "60.0.0.64/26" -NetworkSecurityGroup $nsg6
$subnet15config = New-AzVirtualNetworkSubnetConfig -Name ec-lab-sn-04 -AddressPrefix "70.0.0.64/26" -NetworkSecurityGroup $nsg7
$subnet16config = New-AzVirtualNetworkSubnetConfig -Name mech-lab-sn-04 -AddressPrefix "80.0.0.64/26" -NetworkSecurityGroup $nsg8
$subnet17config = New-AzVirtualNetworkSubnetConfig -Name cs-lab-sn-05 -AddressPrefix "90.0.0.0/26" -NetworkSecurityGroup $nsg9
$subnet18config = New-AzVirtualNetworkSubnetConfig -Name it-lab-sn-05 -AddressPrefix "100.0.0.0/26" -NetworkSecurityGroup $nsg10

 $subnet19config = New-AzVirtualNetworkSubnetConfig -Name -AddressPrefix "110.0.0.0/26" -NetworkSecurityGroup $nsg11 $subnet20config = New-AzVirtualNetworkSubnetConfig -Name -AddressPrefix "120.0.0.0/26" -NetworkSecurityGroup $nsg12 $subnet21config = New-AzVirtualNetworkSubnetConfig -Name -AddressPrefix "90.0.0.64/26" -NetworkSecurityGroup $nsg9 $subnet22config = New-AzVirtualNetworkSubnetConfig -Name "100.0.0.64/26" -NetworkSecurityGroup $nsg10 $subnet23config = New-AzVirtualNetworkSubnetConfig -Name -AddressPrefix "110.0.0.64/26" -NetworkSecurityGroup $nsg11 $subnet24config = New-AzVirtualNetworkSubnetConfig -Name -AddressPrefix "120.0.0.64/26" -NetworkSecurityGroup $nsg12
$subnet25config = New-AzVirtualNetworkSubnetConfig -Name -AddressPrefix "130.0.0.0/26" -NetworkSecurityGroup $nsg13 $subnet26config = New-AzVirtualNetworkSubnetConfig -Name "140.0.0.0/26" -NetworkSecurityGroup $nsg14 $subnet27config = New-AzVirtualNetworkSubnetConfig -Name -AddressPrefix "150.0.0.0/26" -NetworkSecurityGroup $nsg15 $subnet28config = New-AzVirtualNetworkSubnetConfig -Name -AddressPrefix "160.0.0.0/26" -NetworkSecurityGroup $nsg16 $subnet29config = New-AzVirtualNetworkSubnetConfig -Name -AddressPrefix "130.0.0.64/26" -NetworkSecurityGroup $nsg13 $subnet30config = New-AzVirtualNetworkSubnetConfig -Name "140.0.0.64/26" -NetworkSecurityGroup $nsg14 $subnet31config = New-AzVirtualNetworkSubnetConfig -Name -AddressPrefix "150.0.0.64/26" -NetworkSecurityGroup $nsg15 $subnet32config = New-AzVirtualNetworkSubnetConfig -Name -AddressPrefix "160.0.0.64/26" -NetworkSecurityGroup $nsg16
ec-lab-sn-05 mech-lab-sn-05 cs-lab-sn-06
it-lab-sn-06 -AddressPrefix ec-lab-sn-06 mech-lab-sn-06
cs-lab-sn-07
it-lab-sn-07 -AddressPrefix ec-lab-sn-07 mech-lab-sn-07 cs-lab-sn-08
it-lab-sn-08 -AddressPrefix ec-lab-sn-08 mech-lab-sn-08
#Virtual Network
$vnet1 = New-AzVirtualNetwork -Name "firstyear-cs-vn-01" -ResourceGroupName firstyear-cs-rg-01 -Location 'East US' -AddressPrefix "10.0.0.0/25" -Subnet $subnet1config,$subnet5config
$vnet2 = New-AzVirtualNetwork -Name "firstyear-it-vn-01" -ResourceGroupName firstyear- it-rg-01 -Location 'East US 2' -AddressPrefix "20.0.0.0/25" -Subnet $subnet2config, $subnet6config
$vnet3 = New-AzVirtualNetwork -Name "firstyear-ec-vn-01" -ResourceGroupName firstyear-ec-rg-01 -Location 'Australia Central' -AddressPrefix "30.0.0.0/25" -Subnet $subnet3config,$subnet7config
$vnet4 = New-AzVirtualNetwork -Name "firstyear-mech-vn-01" -ResourceGroupName firstyear-mech-rg-01 -Location 'Australia East' -AddressPrefix "40.0.0.0/25" -Subnet $subnet4config,$subnet8config
$vnet5 = New-AzVirtualNetwork -Name "secondyear-cs-vn-01" -ResourceGroupName secondyear-cs-rg-01 -Location 'Australia Southeast' -AddressPrefix "50.0.0.0/25" -Subnet $subnet9config,$subnet13config
$vnet6 = New-AzVirtualNetwork -Name "secondyear-it-vn-01" -ResourceGroupName secondyear-it-rg-01 -Location 'Brazil South' -AddressPrefix "60.0.0.0/25" -Subnet $subnet10config,$subnet14config

 $vnet7 = New-AzVirtualNetwork -Name "secondyear-ec-vn-01" -ResourceGroupName secondyear-ec-rg-01 -Location 'Canada Central' -AddressPrefix "70.0.0.0/25" -Subnet $subnet11config,$subnet15config
$vnet8 = New-AzVirtualNetwork -Name "secondyear-mech-vn-01" -ResourceGroupName secondyear-mech-rg-01 -Location 'Canada East' -AddressPrefix "80.0.0.0/25" -Subnet $subnet12config,$subnet16config
$vnet9 = New-AzVirtualNetwork -Name "thirdyear-cs-vn-01" -ResourceGroupName thirdyear-cs-rg-01 -Location 'Korea South' -AddressPrefix "90.0.0.0/25" -Subnet $subnet17config,$subnet21config
$vnet10 = New-AzVirtualNetwork -Name "thirdyear-it-vn-01" -ResourceGroupName thirdyear-it-rg-01 -Location 'Central US' -AddressPrefix "100.0.0.0/25" -Subnet $subnet18config,$subnet22config
$vnet11 = New-AzVirtualNetwork -Name "thirdyear-ec-vn-01" -ResourceGroupName thirdyear-ec-rg-01 -Location 'East Asia' -AddressPrefix "110.0.0.0/25" -Subnet $subnet19config,$subnet23config
$vnet12 = New-AzVirtualNetwork -Name "thirdyear-mech-vn-01" -ResourceGroupName thirdyear-mech-rg-01 -Location 'France Central' -AddressPrefix "120.0.0.0/25" -Subnet $subnet20config,$subnet24config
$vnet13 = New-AzVirtualNetwork -Name "fourthyear-cs-vn-01" -ResourceGroupName fourthyear-cs-rg-01 -Location 'Germany West Central' -AddressPrefix "130.0.0.0/25" -Subnet $subnet25config,$subnet29config
$vnet14 = New-AzVirtualNetwork -Name "fourthyear-it-vn-01" -ResourceGroupName fourthyear-it-rg-01 -Location 'Japan East' -AddressPrefix "140.0.0.0/25" -Subnet $subnet26config,$subnet30config
$vnet15 = New-AzVirtualNetwork -Name "fourthyear-ec-vn-01" -ResourceGroupName fourthyear-ec-rg-01 -Location 'Japan West' -AddressPrefix "150.0.0.0/25" -Subnet $subnet27config,$subnet31config
$vnet16 = New-AzVirtualNetwork -Name "fourthyear-mech-vn-01" -ResourceGroupName fourthyear-mech-rg-01 -Location 'Korea Central' -AddressPrefix "160.0.0.0/25" -Subnet $subnet28config,$subnet32config
#Public IP Address
$Address1 = New-AzPublicIpAddress -Name "W-fy-cs-vm-01-pip-01" -ResourceGroupName firstyear-cs-rg-01 -Location 'East US' -AllocationMethod Dynamic $Address2 = New-AzPublicIpAddress -Name "W-fy-it-vm-01-pip-01" -ResourceGroupName firstyear-it-rg-01 -Location 'East US 2' -AllocationMethod Dynamic $Address3 = New-AzPublicIpAddress -Name "W-fy-ec-vm-01-pip-01" -ResourceGroupName firstyear-ec-rg-01 -Location 'Australia Central' -AllocationMethod Dynamic
$Address4 = New-AzPublicIpAddress -Name "W-fy-mech-vm-01-pip-01" -ResourceGroupName firstyear-mech-rg-01 -Location 'Australia East' -AllocationMethod Dynamic
$Address5 = New-AzPublicIpAddress -Name "L-fy-cs-vm-02-pip-02" -ResourceGroupName firstyear-cs-rg-01 -Location 'East US' -AllocationMethod Dynamic $Address6 = New-AzPublicIpAddress -Name "L-fy-it-vm-02-pip-02" -ResourceGroupName firstyear-it-rg-01 -Location 'East US 2' -AllocationMethod Dynamic
$Address7 = New-AzPublicIpAddress -Name "L-fy-ec-vm-02-pip-02" -ResourceGroupName firstyear-ec-rg-01 -Location 'Australia Central' -AllocationMethod Dynamic

 $Address8 = New-AzPublicIpAddress -Name "L-fy-mech-vm-02-pip-02" -ResourceGroupName firstyear-mech-rg-01 -Location 'Australia East' -AllocationMethod Dynamic
$Address9 = New-AzPublicIpAddress -Name "W-sy-cs-vm-01-pip-01" -ResourceGroupName secondyear-cs-rg-01 -Location 'Australia Southeast' -AllocationMethod Dynamic
$Address10 = New-AzPublicIpAddress -Name "W-sy-it-vm-01-pip-01" -ResourceGroupName secondyear-it-rg-01 -Location 'Brazil South' -AllocationMethod Dynamic
$Address11 = New-AzPublicIpAddress -Name "W-sy-ec-vm-01-pip-01" -ResourceGroupName secondyear-ec-rg-01 -Location 'Canada Central' -AllocationMethod Dynamic
$Address12 = New-AzPublicIpAddress -Name "W-sy-mech-vm-01-pip-01" -ResourceGroupName secondyear-mech-rg-01 -Location 'Canada East' -AllocationMethod Dynamic
$Address13 = New-AzPublicIpAddress -Name "L-sy-cs-vm-02-pip-02" -ResourceGroupName secondyear-cs-rg-01 -Location 'Australia Southeast' -AllocationMethod Dynamic
$Address14 = New-AzPublicIpAddress -Name "L-sy-it-vm-02-pip-02" -ResourceGroupName secondyear-it-rg-01 -Location 'Brazil South' -AllocationMethod Dynamic
$Address15 = New-AzPublicIpAddress -Name "L-sy-ec-vm-02-pip-02" -ResourceGroupName secondyear-ec-rg-01 -Location 'Canada Central' -AllocationMethod Dynamic
$Address16 = New-AzPublicIpAddress -Name "L-sy-mech-vm-02-pip-02" -ResourceGroupName secondyear-mech-rg-01 -Location 'Canada East' -AllocationMethod Dynamic
$Address17 = New-AzPublicIpAddress -Name "W-ty-cs-vm-01-pip-01" -ResourceGroupName thirdyear-cs-rg-01 -Location 'Korea South' -AllocationMethod Dynamic
$Address18 = New-AzPublicIpAddress -Name "W-ty-it-vm-01-pip-01" -ResourceGroupName thirdyear-it-rg-01 -Location 'Central US' -AllocationMethod Dynamic $Address19 = New-AzPublicIpAddress -Name "W-ty-ec-vm-01-pip-01" -ResourceGroupName thirdyear-ec-rg-01 -Location 'East Asia' -AllocationMethod Dynamic $Address20 = New-AzPublicIpAddress -Name "W-ty-mech-vm-01-pip-01" -ResourceGroupName thirdyear-mech-rg-01 -Location 'France Central' -AllocationMethod Dynamic
$Address21 = New-AzPublicIpAddress -Name "L-ty-cs-vm-02-pip-02" -ResourceGroupName thirdyear-cs-rg-01 -Location 'Korea South' -AllocationMethod Dynamic
$Address22 = New-AzPublicIpAddress -Name "L-ty-it-vm-02-pip-02" -ResourceGroupName thirdyear-it-rg-01 -Location 'Central US' -AllocationMethod Dynamic $Address23 = New-AzPublicIpAddress -Name "L-ty-ec-vm-02-pip-02" -ResourceGroupName thirdyear-ec-rg-01 -Location 'East Asia' -AllocationMethod Dynamic $Address24 = New-AzPublicIpAddress -Name "L-ty-mech-vm-02-pip-02" -ResourceGroupName thirdyear-mech-rg-01 -Location 'France Central' -AllocationMethod Dynamic

 $Address25 = New-AzPublicIpAddress -Name "W-foy-cs-vm-01-pip-01" -ResourceGroupName fourthyear-cs-rg-01 -Location 'Germany West Central' -AllocationMethod Dynamic
$Address26 = New-AzPublicIpAddress -Name "W-foy-it-vm-01-pip-01" -ResourceGroupName fourthyear-it-rg-01 -Location 'Japan East' -AllocationMethod Dynamic
$Address27 = New-AzPublicIpAddress -Name "W-foy-ec-vm-01-pip-01" -ResourceGroupName fourthyear-ec-rg-01 -Location 'Japan West' -AllocationMethod Dynamic
$Address28 = New-AzPublicIpAddress -Name "W-foy-mech-vm-01-pip-01" -ResourceGroupName fourthyear-mech-rg-01 -Location 'Korea Central' -AllocationMethod Dynamic
$Address29 = New-AzPublicIpAddress -Name "L-foy-cs-vm-02-pip-02" -ResourceGroupName fourthyear-cs-rg-01 -Location 'Germany West Central' -AllocationMethod Dynamic
$Address30 = New-AzPublicIpAddress -Name "L-foy-it-vm-02-pip-02" -ResourceGroupName fourthyear-it-rg-01 -Location 'Japan East' -AllocationMethod Dynamic
$Address31 = New-AzPublicIpAddress -Name "L-foy-ec-vm-02-pip-02" -ResourceGroupName fourthyear-ec-rg-01 -Location 'Japan West' -AllocationMethod Dynamic
$Address32= New-AzPublicIpAddress -Name "L-foy-mech-vm-02-pip-02" -ResourceGroupName fourthyear-mech-rg-01 -Location 'Korea Central' -AllocationMethod Dynamic
#Network Interface Card
$servernic01 = New-AzNetworkInterface -Name "W-fy-cs-vm-01-nic-01" -ResourceGroupName firstyear-cs-rg-01 -Location 'East US' -Subnet $vnet1.Subnets[0] -PublicIpAddress $Address1 -NetworkSecurityGroup $nsg1 -PrivateIpAddress "10.0.0.5" $servernic02 = New-AzNetworkInterface -Name "W-fy-it-vm-01-nic-01" -ResourceGroupName firstyear-it-rg-01 -Location 'East US 2' -Subnet $vnet2.Subnets[0] -PublicIpAddress $Address2 -NetworkSecurityGroup $nsg2 -PrivateIpAddress "20.0.0.5" $servernic03 = New-AzNetworkInterface -Name "W-fy-ec-vm-01-nic-01" -ResourceGroupName firstyear-ec-rg-01 -Location 'Australia Central' -Subnet $vnet3.Subnets[0] -PublicIpAddress $Address3 -NetworkSecurityGroup $nsg3 -PrivateIpAddress "30.0.0.5"
$servernic04 = New-AzNetworkInterface -Name "W-fy-mech-vm-01-nic-01" -ResourceGroupName firstyear-mech-rg-01 -Location 'Australia East' -Subnet $vnet4.Subnets[0] -PublicIpAddress $Address4 -NetworkSecurityGroup $nsg4 -PrivateIpAddress "40.0.0.5"
$servernic05 = New-AzNetworkInterface -Name "L-fy-cs-vm-02-nic-01" -ResourceGroupName firstyear-cs-rg-01 -Location 'East US' -Subnet $vnet1.Subnets[1] -PublicIpAddress $Address5 -NetworkSecurityGroup $nsg1 -PrivateIpAddress "10.0.0.71" $servernic06 = New-AzNetworkInterface -Name "L-fy-it-vm-02-nic-01" -ResourceGroupName firstyear-it-rg-01 -Location 'East US 2' -Subnet $vnet2.Subnets[1] -PublicIpAddress $Address6 -NetworkSecurityGroup $nsg2 -PrivateIpAddress "20.0.0.71" $servernic07 = New-AzNetworkInterface -Name "L-fy-ec-vm-02-nic-01" -ResourceGroupName firstyear-ec-rg-01 -Location 'Australia Central' -Subnet $vnet3.Subnets[1] -PublicIpAddress $Address7 -NetworkSecurityGroup $nsg3 -PrivateIpAddress "30.0.0.71"

 $servernic08 = New-AzNetworkInterface -Name "L-fy-mech-vm-02-nic-01" -ResourceGroupName firstyear-mech-rg-01 -Location 'Australia East' -Subnet $vnet4.Subnets[1] -PublicIpAddress $Address8 -NetworkSecurityGroup $nsg4 -PrivateIpAddress "40.0.0.71"
$servernic09 = New-AzNetworkInterface -Name "W-sy-cs-vm-01-nic-01" -ResourceGroupName secondyear-cs-rg-01 -Location 'Australia Southeast' -Subnet $vnet5.Subnets[0] -PublicIpAddress $Address9 -NetworkSecurityGroup $nsg5 -PrivateIpAddress "50.0.0.5"
$servernic10 = New-AzNetworkInterface -Name "W-sy-it-vm-01-nic-01" -ResourceGroupName secondyear-it-rg-01 -Location 'Brazil South' -Subnet $vnet6.Subnets[0] -PublicIpAddress $Address10 -NetworkSecurityGroup $nsg6 -PrivateIpAddress "60.0.0.5"
$servernic11 = New-AzNetworkInterface -Name "W-sy-ec-vm-01-nic-01" -ResourceGroupName secondyear-ec-rg-01 -Location 'Canada Central' -Subnet $vnet7.Subnets[0] -PublicIpAddress $Address11 -NetworkSecurityGroup $nsg7 -PrivateIpAddress "70.0.0.5"
$servernic12 = New-AzNetworkInterface -Name "W-sy-mech-vm-01-nic-01" -ResourceGroupName secondyear-mech-rg-01 -Location 'Canada East' -Subnet $vnet8.Subnets[0] -PublicIpAddress $Address12 -NetworkSecurityGroup $nsg8 -PrivateIpAddress "80.0.0.5"
$servernic13 = New-AzNetworkInterface -Name "L-sy-cs-vm-02-nic-01" -ResourceGroupName secondyear-cs-rg-01 -Location 'Australia Southeast' -Subnet $vnet5.Subnets[1] -PublicIpAddress $Address13 -NetworkSecurityGroup $nsg5 -PrivateIpAddress "50.0.0.71"
$servernic14 = New-AzNetworkInterface -Name "L-sy-it-vm-02-nic-01" -ResourceGroupName secondyear-it-rg-01 -Location 'Brazil South' -Subnet $vnet6.Subnets[1] -PublicIpAddress $Address14 -NetworkSecurityGroup $nsg6 -PrivateIpAddress "60.0.0.71"
$servernic15 = New-AzNetworkInterface -Name "L-sy-ec-vm-02-nic-01" -ResourceGroupName secondyear-ec-rg-01 -Location 'Canada Central' -Subnet $vnet7.Subnets[1] -PublicIpAddress $Address15 -NetworkSecurityGroup $nsg7 -PrivateIpAddress "70.0.0.71"
$servernic16 = New-AzNetworkInterface -Name "L-sy-mech-vm-02-nic-01" -ResourceGroupName secondyear-mech-rg-01 -Location 'Canada East' -Subnet $vnet8.Subnets[1] -PublicIpAddress $Address16 -NetworkSecurityGroup $nsg8 -PrivateIpAddress "80.0.0.71"
$servernic17 = New-AzNetworkInterface -Name "W-ty-cs-vm-01-nic-01" -ResourceGroupName thirdyear-cs-rg-01 -Location 'Korea South' -Subnet $vnet9.Subnets[0] -PublicIpAddress $Address17 -NetworkSecurityGroup $nsg9 -PrivateIpAddress "90.0.0.5"
$servernic18 = New-AzNetworkInterface -Name "W-ty-it-vm-01-nic-01" -ResourceGroupName thirdyear-it-rg-01 -Location 'Central US' -Subnet $vnet10.Subnets[0] -PublicIpAddress $Address18 -NetworkSecurityGroup $nsg10 -PrivateIpAddress "100.0.0.5"
$servernic19 = New-AzNetworkInterface -Name "W-ty-ec-vm-01-nic-01" -ResourceGroupName thirdyear-ec-rg-01 -Location 'East Asia' -Subnet $vnet11.Subnets[0] -PublicIpAddress $Address19 -NetworkSecurityGroup $nsg11 -PrivateIpAddress "110.0.0.5"
$servernic20 = New-AzNetworkInterface -Name "W-ty-mech-vm-01-nic-01" -ResourceGroupName thirdyear-mech-rg-01 -Location 'France Central' -Subnet

 $vnet12.Subnets[0] -PublicIpAddress $Address20 -NetworkSecurityGroup $nsg12 -PrivateIpAddress "120.0.0.5"
$servernic21 = New-AzNetworkInterface -Name "L-ty-cs-vm-02-nic-01" -ResourceGroupName thirdyear-cs-rg-01 -Location 'Korea South' -Subnet $vnet9.Subnets[1] -PublicIpAddress $Address21 -NetworkSecurityGroup $nsg9 -PrivateIpAddress "90.0.0.71"
$servernic22 = New-AzNetworkInterface -Name "L-ty-it-vm-02-nic-01" -ResourceGroupName thirdyear-it-rg-01 -Location 'Central US' -Subnet $vnet10.Subnets[1] -PublicIpAddress $Address22 -NetworkSecurityGroup $nsg10 -PrivateIpAddress "100.0.0.71"
$servernic23 = New-AzNetworkInterface -Name "L-ty-ec-vm-02-nic-01" -ResourceGroupName thirdyear-ec-rg-01 -Location 'East Asia' -Subnet $vnet11.Subnets[1] -PublicIpAddress $Address23 -NetworkSecurityGroup $nsg11 -PrivateIpAddress "110.0.0.71"
$servernic24 = New-AzNetworkInterface -Name "L-ty-mech-vm-02-nic-01" -ResourceGroupName thirdyear-mech-rg-01 -Location 'France Central' -Subnet $vnet12.Subnets[1] -PublicIpAddress $Address24 -NetworkSecurityGroup $nsg12 -PrivateIpAddress "120.0.0.71"
$servernic25 = New-AzNetworkInterface -Name "W-foy-cs-vm-01-nic-01" -ResourceGroupName fourthyear-cs-rg-01 -Location 'Germany West Central' -Subnet $vnet13.Subnets[0] -PublicIpAddress $Address25 -NetworkSecurityGroup $nsg13 -PrivateIpAddress "130.0.0.5"
$servernic26 = New-AzNetworkInterface -Name "W-foy-it-vm-01-nic-01" -ResourceGroupName fourthyear-it-rg-01 -Location 'Japan East' -Subnet $vnet14.Subnets[0] -PublicIpAddress $Address26 -NetworkSecurityGroup $nsg14 -PrivateIpAddress "140.0.0.5"
$servernic27 = New-AzNetworkInterface -Name "W-foy-ec-vm-01-nic-01" -ResourceGroupName fourthyear-ec-rg-01 -Location 'Japan West' -Subnet $vnet15.Subnets[0] -PublicIpAddress $Address27 -NetworkSecurityGroup $nsg15 -PrivateIpAddress "150.0.0.5"
$servernic28 = New-AzNetworkInterface -Name "W-foy-mech-vm-01-nic-01" -ResourceGroupName fourthyear-mech-rg-01 -Location 'Korea Central' -Subnet $vnet16.Subnets[0] -PublicIpAddress $Address28 -NetworkSecurityGroup $nsg16 -PrivateIpAddress "160.0.0.5"
$servernic29 = New-AzNetworkInterface -Name "L-foy-cs-vm-02-nic-01" -ResourceGroupName fourthyear-cs-rg-01 -Location 'Germany West Central' -Subnet $vnet13.Subnets[1] -PublicIpAddress $Address29 -NetworkSecurityGroup $nsg13 -PrivateIpAddress "130.0.0.71"
$servernic30 = New-AzNetworkInterface -Name "L-foy-it-vm-02-nic-01" -ResourceGroupName fourthyear-it-rg-01 -Location 'Japan East' -Subnet $vnet14.Subnets[1] -PublicIpAddress $Address30 -NetworkSecurityGroup $nsg14 -PrivateIpAddress "140.0.0.71"
$servernic31 = New-AzNetworkInterface -Name "L-foy-ec-vm-02-nic-01" -ResourceGroupName fourthyear-ec-rg-01 -Location 'Japan West' -Subnet $vnet15.Subnets[1] -PublicIpAddress $Address31 -NetworkSecurityGroup $nsg15 -PrivateIpAddress "150.0.0.71"
$servernic32 = New-AzNetworkInterface -Name "L-foy-mech-vm-02-nic-01" -ResourceGroupName fourthyear-mech-rg-01 -Location 'Korea Central' -Subnet $vnet16.Subnets[1] -PublicIpAddress $Address32 -NetworkSecurityGroup $nsg16 -PrivateIpAddress "160.0.0.71"

 #Network Peering
$NPv1v2 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet2" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet2.Id
$NPv1v3 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet3" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet3.Id
$NPv1v4 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet4" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet4.Id
$NPv1v5 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet5" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet5.Id
$NPv1v6 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet6" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet6.Id
$NPv1v7 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet7" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet7.Id
$NPv1v8 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet8" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet8.Id
$NPv1v9 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet9" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet9.Id
$NPv1v10 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet10" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet10.Id
$NPv1v11 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet11" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet11.Id
$NPv1v12 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet12" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet12.Id
$NPv1v13 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet13" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet13.Id
$NPv1v14 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet14" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet14.Id
$NPv1v15 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet15" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet15.Id
$NPv1v16 =Add-AzVirtualNetworkPeering -Name "Vnet1-to-Vnet16" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet16.Id
$NPv2v1 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet1" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet1.Id
$NPv2v3 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet3" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet3.Id
$NPv2v4 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet4" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet4.Id
$NPv2v5 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet5" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet5.Id
$NPv2v6 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet6" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet6.Id
$NPv2v7 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet7" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet7.Id
$NPv2v8 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet8" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet8.Id
$NPv2v9 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet9" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet9.Id
$NPv2v10 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet10" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet10.Id
$NPv2v11 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet11" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet11.Id

 $NPv2v12 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet12" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet12.Id
$NPv2v13 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet13" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet13.Id
$NPv2v14 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet14" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet14.Id
$NPv2v15 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet15" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet15.Id
$NPv2v16 =Add-AzVirtualNetworkPeering -Name "Vnet2-to-Vnet16" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet16.Id
$NPv3v1 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet1" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet1.Id
$NPv3v2 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet2" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet2.Id
$NPv3v4 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet4" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet4.Id
$NPv3v5 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet5" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet5.Id
$NPv3v6 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet6" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet6.Id
$NPv3v7 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet7" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet7.Id
$NPv3v8 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet8" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet8.Id
$NPv3v9 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet9" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet9.Id
$NPv3v10 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet10" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet10.Id
$NPv3v11 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet11" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet11.Id
$NPv3v12 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet12" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet12.Id
$NPv3v13 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet13" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet13.Id
$NPv3v14 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet14" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet14.Id
$NPv3v15 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet15" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet15.Id
$NPv3v16 =Add-AzVirtualNetworkPeering -Name "Vnet3-to-Vnet16" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet16.Id
$NPv4v1 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet1" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet1.Id
$NPv4v2 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet2" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet2.Id
$NPv4v3 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet3" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet3.Id
$NPv4v5 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet5" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet5.Id
$NPv4v6 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet6" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet6.Id

 $NPv4v7 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet7" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet7.Id
$NPv4v8 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet8" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet8.Id
$NPv4v9 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet9" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet9.Id
$NPv4v10 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet10" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet10.Id
$NPv4v11 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet11" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet11.Id
$NPv4v12 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet12" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet12.Id
$NPv4v13 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet13" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet13.Id
$NPv4v14 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet14" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet14.Id
$NPv4v15 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet15" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet15.Id
$NPv4v16 =Add-AzVirtualNetworkPeering -Name "Vnet4-to-Vnet16" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet16.Id
$NPv5v1 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet1" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet1.Id
$NPv5v2 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet2" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet2.Id
$NPv5v3 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet3" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet3.Id
$NPv5v4 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet4" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet4.Id
$NPv5v6 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet6" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet6.Id
$NPv5v7 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet7" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet7.Id
$NPv5v8 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet8" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet8.Id
$NPv5v9 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet9" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet9.Id
$NPv5v10 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet10" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet10.Id
$NPv5v11 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet11" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet11.Id
$NPv5v12 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet12" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet12.Id
$NPv5v13 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet13" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet13.Id
$NPv5v14 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet14" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet14.Id
$NPv5v15 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet15" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet15.Id
$NPv5v16 =Add-AzVirtualNetworkPeering -Name "Vnet5-to-Vnet16" -VirtualNetwork $vnet5 -RemoteVirtualNetworkId $vnet16.Id

 $NPv6v1 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet1" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet1.Id
$NPv6v2 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet2" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet2.Id
$NPv6v3 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet3" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet3.Id
$NPv6v4 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet4" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet4.Id
$NPv6v5 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet5" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet5.Id
$NPv6v7 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet7" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet7.Id
$NPv6v8 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet8" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet8.Id
$NPv6v9 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet9" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet9.Id
$NPv6v10 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet10" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet10.Id
$NPv6v11 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet11" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet11.Id
$NPv6v12 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet12" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet12.Id
$NPv6v13 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet13" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet13.Id
$NPv6v14 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet14" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet14.Id
$NPv6v15 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet15" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet15.Id
$NPv6v16 =Add-AzVirtualNetworkPeering -Name "Vnet6-to-Vnet16" -VirtualNetwork $vnet6 -RemoteVirtualNetworkId $vnet16.Id
$NPv7v1 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet1" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet1.Id
$NPv7v2 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet2" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet2.Id
$NPv7v3 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet3" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet3.Id
$NPv7v4 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet4" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet4.Id
$NPv7v5 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet5" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet5.Id
$NPv7v6 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet6" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet6.Id
$NPv7v8 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet8" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet8.Id
$NPv7v9 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet9" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet9.Id
$NPv7v10 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet10" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet10.Id
$NPv7v11 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet11" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet11.Id

 $NPv7v12 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet12" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet12.Id
$NPv7v13 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet13" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet13.Id
$NPv7v14 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet14" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet14.Id
$NPv7v15 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet15" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet15.Id
$NPv7v16 =Add-AzVirtualNetworkPeering -Name "Vnet7-to-Vnet16" -VirtualNetwork $vnet7 -RemoteVirtualNetworkId $vnet16.Id
$NPv8v1 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet1" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet1.Id
$NPv8v2 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet2" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet2.Id
$NPv8v3 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet3" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet3.Id
$NPv8v4 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet4" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet4.Id
$NPv8v5 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet5" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet5.Id
$NPv8v6 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet6" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet6.Id
$NPv8v7 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet7" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet7.Id
$NPv8v9 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet9" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet9.Id
$NPv8v10 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet10" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet10.Id
$NPv8v11 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet11" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet11.Id
$NPv8v12 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet12" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet12.Id
$NPv8v13 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet13" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet13.Id
$NPv8v14 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet14" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet14.Id
$NPv8v15 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet15" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet15.Id
$NPv8v16 =Add-AzVirtualNetworkPeering -Name "Vnet8-to-Vnet16" -VirtualNetwork $vnet8 -RemoteVirtualNetworkId $vnet16.Id
$NPv9v1 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet1" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet1.Id
$NPv9v2 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet2" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet2.Id
$NPv9v3 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet3" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet3.Id
$NPv9v4 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet4" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet4.Id
$NPv9v5 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet5" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet5.Id

 $NPv9v6 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet6" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet6.Id
$NPv9v7 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet7" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet7.Id
$NPv9v8 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet8" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet8.Id
$NPv9v10 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet10" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet10.Id
$NPv9v11 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet11" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet11.Id
$NPv9v12 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet12" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet12.Id
$NPv9v13 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet13" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet13.Id
$NPv9v14 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet14" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet14.Id
$NPv9v15 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet15" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet15.Id
$NPv9v16 =Add-AzVirtualNetworkPeering -Name "Vnet9-to-Vnet16" -VirtualNetwork $vnet9 -RemoteVirtualNetworkId $vnet16.Id
$NPv10v1 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet1" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet1.Id
$NPv10v2 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet2" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet2.Id
$NPv10v3 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet3" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet3.Id
$NPv10v4 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet4" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet4.Id
$NPv10v5 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet5" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet5.Id
$NPv10v6 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet6" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet6.Id
$NPv10v7 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet7" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet7.Id
$NPv10v8 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet8" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet8.Id
$NPv10v9 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet9" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet9.Id
$NPv10v11 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet11" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet11.Id
$NPv10v12 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet12" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet12.Id
$NPv10v13 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet13" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet13.Id
$NPv10v14 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet14" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet14.Id
$NPv10v15 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet15" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet15.Id
$NPv10v16 =Add-AzVirtualNetworkPeering -Name "Vnet10-to-Vnet16" -VirtualNetwork $vnet10 -RemoteVirtualNetworkId $vnet16.Id

 $NPv11v1 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet1" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet1.Id
$NPv11v2 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet2" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet2.Id
$NPv11v3 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet3" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet3.Id
$NPv11v4 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet4" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet4.Id
$NPv11v5 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet5" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet5.Id
$NPv11v6 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet6" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet6.Id
$NPv11v7 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet7" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet7.Id
$NPv11v8 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet8" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet8.Id
$NPv11v9 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet9" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet9.Id
$NPv11v10 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet10" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet10.Id
$NPv11v12 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet12" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet12.Id
$NPv11v13 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet13" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet13.Id
$NPv11v14 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet14" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet14.Id
$NPv11v15 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet15" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet15.Id
$NPv11v16 =Add-AzVirtualNetworkPeering -Name "Vnet11-to-Vnet16" -VirtualNetwork $vnet11 -RemoteVirtualNetworkId $vnet16.Id
$NPv12v1 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet1" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet1.Id
$NPv12v2 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet2" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet2.Id
$NPv12v3 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet3" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet3.Id
$NPv12v4 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet4" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet4.Id
$NPv12v5 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet5" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet5.Id
$NPv12v6 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet6" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet6.Id
$NPv12v7 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet7" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet7.Id
$NPv12v8 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet8" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet8.Id
$NPv12v9 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet9" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet9.Id
$NPv12v10 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet10" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet10.Id

 $NPv12v11 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet11" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet11.Id
$NPv12v13 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet13" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet13.Id
$NPv12v14 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet14" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet14.Id
$NPv12v15 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet15" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet15.Id
$NPv12v16 =Add-AzVirtualNetworkPeering -Name "Vnet12-to-Vnet16" -VirtualNetwork $vnet12 -RemoteVirtualNetworkId $vnet16.Id
$NPv13v1 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet1" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet1.Id
$NPv13v2 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet2" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet2.Id
$NPv13v3 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet3" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet3.Id
$NPv13v4 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet4" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet4.Id
$NPv13v5 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet5" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet5.Id
$NPv13v6 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet6" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet6.Id
$NPv13v7 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet7" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet7.Id
$NPv13v8 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet8" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet8.Id
$NPv13v9 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet9" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet9.Id
$NPv13v10 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet10" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet10.Id
$NPv13v11 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet11" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet11.Id
$NPv13v12 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet12" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet12.Id
$NPv13v14 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet14" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet14.Id
$NPv13v15 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet15" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet15.Id
$NPv13v16 =Add-AzVirtualNetworkPeering -Name "Vnet13-to-Vnet16" -VirtualNetwork $vnet13 -RemoteVirtualNetworkId $vnet16.Id
$NPv14v1 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet1" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet1.Id
$NPv14v2 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet2" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet2.Id
$NPv14v3 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet3" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet3.Id
$NPv14v4 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet4" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet4.Id
$NPv14v5 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet5" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet5.Id

 $NPv14v6 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet6" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet6.Id
$NPv14v7 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet7" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet7.Id
$NPv14v8 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet8" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet8.Id
$NPv14v9 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet9" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet9.Id
$NPv14v10 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet10" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet10.Id
$NPv14v11 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet11" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet11.Id
$NPv14v12 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet12" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet12.Id
$NPv14v13 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet13" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet13.Id
$NPv14v15 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet15" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet15.Id
$NPv14v16 =Add-AzVirtualNetworkPeering -Name "Vnet14-to-Vnet16" -VirtualNetwork $vnet14 -RemoteVirtualNetworkId $vnet16.Id
$NPv15v1 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet1" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet1.Id
$NPv15v2 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet2" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet2.Id
$NPv15v3 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet3" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet3.Id
$NPv15v4 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet4" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet4.Id
$NPv15v5 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet5" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet5.Id
$NPv15v6 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet6" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet6.Id
$NPv15v7 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet7" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet7.Id
$NPv15v8 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet8" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet8.Id
$NPv15v9 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet9" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet9.Id
$NPv15v10 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet10" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet10.Id
$NPv15v11 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet11" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet11.Id
$NPv15v12 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet12" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet12.Id
$NPv15v13 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet13" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet13.Id
$NPv15v14 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet14" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet14.Id
$NPv15v16 =Add-AzVirtualNetworkPeering -Name "Vnet15-to-Vnet16" -VirtualNetwork $vnet15 -RemoteVirtualNetworkId $vnet16.Id

 $NPv16v1 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet1" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet1.Id
$NPv16v2 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet2" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet2.Id
$NPv16v3 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet3" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet3.Id
$NPv16v4 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet4" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet4.Id
$NPv16v5 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet5" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet5.Id
$NPv16v6 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet6" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet6.Id
$NPv16v7 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet7" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet7.Id
$NPv16v8 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet8" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet8.Id
$NPv16v9 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet9" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet9.Id
$NPv16v10 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet10" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet10.Id
$NPv16v11 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet11" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet11.Id
$NPv16v12 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet12" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet12.Id
$NPv16v13 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet13" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet13.Id
$NPv16v14 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet14" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet14.Id
$NPv16v15 =Add-AzVirtualNetworkPeering -Name "Vnet16-to-Vnet15" -VirtualNetwork $vnet16 -RemoteVirtualNetworkId $vnet15.Id
#Storage Account
$Stacc01 = New-AzStorageAccount -ResourceGroupName firstyear-cs-rg-01 -AccountName "iiitpsa01" -Location 'East US' -SkuName Standard_GRS $Stacc02 = New-AzStorageAccount -ResourceGroupName firstyear-it-rg-01 -AccountName "iiitpsa02" -Location 'East US 2' -SkuName Standard_GRS $Stacc03 = New-AzStorageAccount -ResourceGroupName firstyear-ec-rg-01 -AccountName "iiitpsa03" -Location 'Australia Central' -SkuName Standard_GRS $Stacc04 = New-AzStorageAccount -ResourceGroupName firstyear-mech-rg-01 -AccountName "iiitpsa04" -Location 'Australia East' -SkuName Standard_GRS
$Stacc05 = New-AzStorageAccount -ResourceGroupName secondyear-cs-rg-01 -AccountName "iiitpsa05" -Location 'Australia Southeast' -SkuName Standard_GRS $Stacc06 = New-AzStorageAccount -ResourceGroupName secondyear-it-rg-01 -AccountName "iiitpsa06" -Location 'Brazil South' -SkuName Standard_GRS $Stacc07 = New-AzStorageAccount -ResourceGroupName secondyear-ec-rg-01 -AccountName "iiitpsa07" -Location 'Canada Central' -SkuName Standard_GRS $Stacc08 = New-AzStorageAccount -ResourceGroupName secondyear-mech-rg-01 -AccountName "iiitpsa08" -Location 'Canada East' -SkuName Standard_GRS

 $Stacc09 = New-AzStorageAccount -ResourceGroupName thirdyear-cs-rg-01 -AccountName "iiitpsa09" -Location 'Korea South' -SkuName Standard_GRS $Stacc10 = New-AzStorageAccount -ResourceGroupName thirdyear-it-rg-01 -AccountName "iiitpsa10" -Location 'Central US' -SkuName Standard_GRS $Stacc11 = New-AzStorageAccount -ResourceGroupName thirdyear-ec-rg-01 -AccountName "iiitpsa11" -Location 'East Asia' -SkuName Standard_GRS $Stacc12 = New-AzStorageAccount -ResourceGroupName thirdyear-mech-rg-01 -AccountName "iiitpsa12" -Location 'France Central' -SkuName Standard_GRS
$Stacc13 = New-AzStorageAccount -ResourceGroupName fourthyear-cs-rg-01 -AccountName "iiitpsa13" -Location 'Germany West Central' -SkuName Standard_GRS $Stacc14 = New-AzStorageAccount -ResourceGroupName fourthyear-it-rg-01 -AccountName "iiitpsa14" -Location 'Japan East' -SkuName Standard_GRS
$Stacc15 = New-AzStorageAccount -ResourceGroupName fourthyear-ec-rg-01 -AccountName "iiitpsa15" -Location 'Japan West' -SkuName Standard_GRS
$Stacc16 = New-AzStorageAccount -ResourceGroupName fourthyear-mech-rg-01 -AccountName "iiitpsa16" -Location 'Korea Central' -SkuName Standard_GRS
#Acquire Server Credentials
$Servercred1 = Get-Credential -Message "Please enter a username and password" $Servercred2 = Get-Credential -Message "Please enter a username and password" $Servercred3 = Get-Credential -Message "Please enter a username and password" $Servercred4 = Get-Credential -Message "Please enter a username and password" $Servercred5 = Get-Credential -Message "Please enter a username and password" $Servercred6 = Get-Credential -Message "Please enter a username and password" $Servercred7 = Get-Credential -Message "Please enter a username and password" $Servercred8 = Get-Credential -Message "Please enter a username and password" $Servercred9 = Get-Credential -Message "Please enter a username and password"
$Servercred10 $Servercred11 $Servercred12 $Servercred13 $Servercred14 $Servercred15 $Servercred16
#create Server
$serverconfig1
| Set-AzVMOperatingSystem -Windows -ComputerName "W-fy-cs-vm-01" -Credential $Servercred1 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName firstyear-cs-rg-01 -StorageAccountName "iiitpsa01" | Add- AzVMNetworkInterface -Id $servernic01.Id | Add-AzVMDataDisk -Name Disk01 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 0 -CreateOption Empty $serverconfig2 = New-AzVMConfig -vmname "W-fy-it-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-fy-it-vm-01" -Credential $Servercred2 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName firstyear-it-rg-01 -StorageAccountName "iiitpsa02" | Add- AzVMNetworkInterface -Id $servernic02.Id | Add-AzVMDataDisk -Name Disk02 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 1 -CreateOption Empty
= Get-Credential -Message "Please enter a username and password" = Get-Credential -Message "Please enter a username and password" = Get-Credential -Message "Please enter a username and password" = Get-Credential -Message "Please enter a username and password" = Get-Credential -Message "Please enter a username and password" = Get-Credential -Message "Please enter a username and password" = Get-Credential -Message "Please enter a username and password"
= New-AzVMConfig -vmname "W-fy-cs-vm-01" -VMSize "Standard_B2ms"

 $serverconfig3 = New-AzVMConfig -vmname "W-fy-ec-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-fy-ec-vm-01" -Credential $Servercred3 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName firstyear-ec-rg-01 -StorageAccountName "iiitpsa03"| Add- AzVMNetworkInterface -Id $servernic03.Id | Add-AzVMDataDisk -Name Disk03 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 2 -CreateOption Empty $serverconfig4 = New-AzVMConfig -vmname "W-fy-mech-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-fy-mech- vm-01" -Credential $Servercred4 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName firstyear-mech-rg-01 -StorageAccountName "iiitpsa04" | Add-AzVMNetworkInterface -Id $servernic04.Id | Add- AzVMDataDisk -Name Disk04 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 3 -CreateOption Empty
$serverconfig5 = New-AzVMConfig -vmname "L-fy-cs-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-fy-cs-vm-02" -Credential $Servercred1 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName firstyear-cs-rg-01 -StorageAccountName "iiitpsa01" | Add- AzVMNetworkInterface -Id $servernic05.Id | Add-AzVMDataDisk -Name Disk05 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 4 -CreateOption Empty $serverconfig6 = New-AzVMConfig -vmname "L-fy-it-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-fy-it-vm-02" -Credential $Servercred2 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName firstyear-it-rg-01 -StorageAccountName "iiitpsa02" | Add- AzVMNetworkInterface -Id $servernic06.Id | Add-AzVMDataDisk -Name Disk06 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 5 -CreateOption Empty $serverconfig7 = New-AzVMConfig -vmname "L-fy-ec-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-fy-ec-vm-02" -Credential $Servercred3 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName firstyear-ec-rg-01 -StorageAccountName "iiitpsa03" | Add- AzVMNetworkInterface -Id $servernic07.Id | Add-AzVMDataDisk -Name Disk07 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 6 -CreateOption Empty $serverconfig8 = New-AzVMConfig -vmname "L-fy-mech-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-fy-mech-vm-02" -Credential $Servercred4 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName firstyear-mech-rg-01 -StorageAccountName "iiitpsa04" | Add- AzVMNetworkInterface -Id $servernic08.Id | Add-AzVMDataDisk -Name Disk08 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 7 -CreateOption Empty
$serverconfig9 = New-AzVMConfig -vmname "W-sy-cs-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-sy-cs-vm-01" -Credential $Servercred5 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName secondyear-cs-rg-01 -StorageAccountName "iiitpsa05" | Add-AzVMNetworkInterface -Id $servernic09.Id | Add-AzVMDataDisk -Name Disk09 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 8 -CreateOption Empty

 $serverconfig10 = New-AzVMConfig -vmname "W-sy-it-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-sy-it-vm-01" -Credential $Servercred6 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName secondyear-it-rg-01 -StorageAccountName "iiitpsa06" | Add-AzVMNetworkInterface -Id $servernic10.Id | Add-AzVMDataDisk -Name Disk10 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 9 -CreateOption Empty $serverconfig11 = New-AzVMConfig -vmname "W-sy-ec-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-sy-ec- vm-01" -Credential $Servercred7 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName secondyear-ec-rg-01 -StorageAccountName "iiitpsa07"| Add-AzVMNetworkInterface -Id $servernic11.Id | Add- AzVMDataDisk -Name Disk11 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 10 -CreateOption Empty
$serverconfig12 = New-AzVMConfig -vmname "W-sy-mech-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-sy-mech- vm-01" -Credential $Servercred8 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName secondyear-mech-rg-01 -StorageAccountName "iiitpsa08" | Add-AzVMNetworkInterface -Id $servernic12.Id | Add- AzVMDataDisk -Name Disk12 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 11 -CreateOption Empty
$serverconfig13 = New-AzVMConfig -vmname "L-sy-cs-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-sy-cs-vm-02" -Credential $Servercred5 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName secondyear-cs-rg-01 -StorageAccountName "iiitpsa05" | Add- AzVMNetworkInterface -Id $servernic13.Id | Add-AzVMDataDisk -Name Disk13 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 12 -CreateOption Empty $serverconfig14 = New-AzVMConfig -vmname "L-sy-it-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-sy-it-vm-02" -Credential $Servercred6 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName secondyear-it-rg-01 -StorageAccountName "iiitpsa06" | Add- AzVMNetworkInterface -Id $servernic14.Id | Add-AzVMDataDisk -Name Disk14 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 13 -CreateOption Empty $serverconfig15 = New-AzVMConfig -vmname "L-sy-ec-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-sy-ec-vm-02" -Credential $Servercred7 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName secondyear-ec-rg-01 -StorageAccountName "iiitpsa07" | Add- AzVMNetworkInterface -Id $servernic15.Id | Add-AzVMDataDisk -Name Disk15 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 14 -CreateOption Empty $serverconfig16 = New-AzVMConfig -vmname "L-sy-mech-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-sy-mech- vm-02" -Credential $Servercred8 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName secondyear-mech-rg-01 -StorageAccountName "iiitpsa08" | Add-AzVMNetworkInterface -Id $servernic16.Id | Add-AzVMDataDisk -Name Disk16 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 15 -CreateOption Empty

 $serverconfig17 = New-AzVMConfig -vmname "W-ty-cs-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-ty-cs- vm-01" -Credential $Servercred9 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName thirdyear-cs-rg-01 -StorageAccountName "iiitpsa09" | Add-AzVMNetworkInterface -Id $servernic17.Id | Add- AzVMDataDisk -Name Disk17 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 16 -CreateOption Empty
$serverconfig18 = New-AzVMConfig -vmname "W-ty-it-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-ty-it-vm-01" -Credential $Servercred10 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName thirdyear-it-rg-01 -StorageAccountName "iiitpsa10" | Add- AzVMNetworkInterface -Id $servernic18.Id | Add-AzVMDataDisk -Name Disk18 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 17 -CreateOption Empty $serverconfig19 = New-AzVMConfig -vmname "W-ty-ec-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-ty-ec- vm-01" -Credential $Servercred11 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName thirdyear-ec-rg-01 -StorageAccountName "iiitpsa11" | Add-AzVMNetworkInterface -Id $servernic19.Id | Add- AzVMDataDisk -Name Disk19 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 18 -CreateOption Empty
$serverconfig20 = New-AzVMConfig -vmname "W-ty-mech-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-ty-mech- vm-01" -Credential $Servercred12 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName thirdyear-mech-rg-01 -StorageAccountName "iiitpsa12" | Add-AzVMNetworkInterface -Id $servernic20.Id | Add- AzVMDataDisk -Name Disk20 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 19 -CreateOption Empty
$serverconfig21 = New-AzVMConfig -vmname "L-ty-cs-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-ty-cs-vm-02" -Credential $Servercred9 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName thirdyear-cs-rg-01 -StorageAccountName "iiitpsa09" | Add- AzVMNetworkInterface -Id $servernic21.Id | Add-AzVMDataDisk -Name Disk21 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 20 -CreateOption Empty $serverconfig22 = New-AzVMConfig -vmname "L-ty-it-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-ty-it-vm-02" -Credential $Servercred10 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName thirdyear-it-rg-01 -StorageAccountName "iiitpsa10" | Add- AzVMNetworkInterface -Id $servernic22.Id | Add-AzVMDataDisk -Name Disk22 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 21 -CreateOption Empty $serverconfig23 = New-AzVMConfig -vmname "L-ty-ec-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-ty-ec-vm-02" -Credential $Servercred11 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName thirdyear-ec-rg-01 -StorageAccountName "iiitpsa11" | Add- AzVMNetworkInterface -Id $servernic23.Id | Add-AzVMDataDisk -Name Disk23 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 22 -CreateOption Empty

 $serverconfig24 = New-AzVMConfig -vmname "L-ty-mech-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-ty-mech-vm-02" -Credential $Servercred12 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName thirdyear-mech-rg-01 -StorageAccountName "iiitpsa12" | Add- AzVMNetworkInterface -Id $servernic24.Id | Add-AzVMDataDisk -Name Disk24 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 23 -CreateOption Empty
$serverconfig25 = New-AzVMConfig -vmname "W-foy-cs-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-foy-cs- vm-01" -Credential $Servercred13 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName fourthyear-cs-rg-01 -StorageAccountName "iiitpsa13" | Add-AzVMNetworkInterface -Id $servernic25.Id | Add- AzVMDataDisk -Name Disk25 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 24 -CreateOption Empty
$serverconfig26 = New-AzVMConfig -vmname "W-foy-it-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-foy-it- vm-01" -Credential $Servercred14 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName fourthyear-it-rg-01 -StorageAccountName "iiitpsa14" | Add-AzVMNetworkInterface -Id $servernic26.Id | Add- AzVMDataDisk -Name Disk26 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 25 -CreateOption Empty
$serverconfig27 = New-AzVMConfig -vmname "W-foy-ec-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-foy-ec- vm-01" -Credential $Servercred15 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName fourthyear-ec-rg-01 -StorageAccountName "iiitpsa15" | Add-AzVMNetworkInterface -Id $servernic27.Id | Add- AzVMDataDisk -Name Disk27 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 26 -CreateOption Empty
$serverconfig28 = New-AzVMConfig -vmname "W-foy-mec-vm-01" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Windows -ComputerName "W-foy-mec- vm-01" -Credential $Servercred16 | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName fourthyear-mech-rg-01 -StorageAccountName "iiitpsa16" | Add-AzVMNetworkInterface -Id $servernic28.Id | Add- AzVMDataDisk -Name Disk28 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 27 -CreateOption Empty
$serverconfig29 = New-AzVMConfig -vmname "L-foy-cs-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-foy-cs-vm-02" -Credential $Servercred13 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName fourthyear-cs-rg-01 -StorageAccountName "iiitpsa13" | Add- AzVMNetworkInterface -Id $servernic29.Id | Add-AzVMDataDisk -Name Disk29 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 28 -CreateOption Empty $serverconfig30 = New-AzVMConfig -vmname "L-foy-it-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-foy-it-vm-02" -Credential $Servercred14 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable

 -ResourceGroupName fourthyear-it-rg-01 -StorageAccountName "iiitpsa14" | Add- AzVMNetworkInterface -Id $servernic30.Id | Add-AzVMDataDisk -Name Disk30 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 29 -CreateOption Empty $serverconfig31 = New-AzVMConfig -vmname "L-foy-ec-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-foy-ec-vm-02" -Credential $Servercred15 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName fourthyear-ec-rg-01 -StorageAccountName "iiitpsa15" | Add- AzVMNetworkInterface -Id $servernic31.Id | Add-AzVMDataDisk -Name Disk31 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 30 -CreateOption Empty $serverconfig32 = New-AzVMConfig -vmname "L-foy-mech-vm-02" -VMSize "Standard_B2ms" | Set-AzVMOperatingSystem -Linux -ComputerName "L-foy-mech- vm-02" -Credential $Servercred16 | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -ResourceGroupName fourthyear-mech-rg-01 -StorageAccountName "iiitpsa16" | Add-AzVMNetworkInterface -Id $servernic32.Id | Add-AzVMDataDisk -Name Disk32 -DiskSizeInGB 80 -StorageAccountType Standard_LRS -Lun 31 -CreateOption Empty
#creating virtual machine
$machine1 = New-AzVM -ResourceGroupName firstyear-cs-rg-01 -Location 'East US' -VM $serverconfig1
$machine2 = New-AzVM -ResourceGroupName firstyear-it-rg-01 -Location 'East US 2' -VM $serverconfig2
$machine3 = New-AzVM -ResourceGroupName firstyear-ec-rg-01 -Location 'Australia Central' -VM $serverconfig3
$machine4 = New-AzVM -ResourceGroupName firstyear-mech-rg-01 -Location 'Australia East' -VM $serverconfig4
$machine5 = New-AzVM -ResourceGroupName firstyear-cs-rg-01 -Location 'East US' -VM $serverconfig5
$machine6 = New-AzVM -ResourceGroupName firstyear-it-rg-01 -Location 'East US 2' -VM $serverconfig6
$machine7 = New-AzVM -ResourceGroupName firstyear-ec-rg-01 -Location 'Australia Central' -VM $serverconfig7
$machine8 = New-AzVM -ResourceGroupName firstyear-mech-rg-01 -Location 'Australia East' -VM $serverconfig8
$machine9 = New-AzVM -ResourceGroupName secondyear-cs-rg-01 -Location 'Australia Southeast' -VM $serverconfig9
$machine10 = New-AzVM -ResourceGroupName secondyear-it-rg-01 -Location 'Brazil South' -VM $serverconfig10
$machine11 = New-AzVM -ResourceGroupName secondyear-ec-rg-01 -Location 'Canada Central' -VM $serverconfig11
$machine12 = New-AzVM -ResourceGroupName secondyear-mech-rg-01 -Location 'Canada East' -VM $serverconfig12
$machine13 = New-AzVM -ResourceGroupName secondyear-cs-rg-01 -Location 'Australia Southeast' -VM $serverconfig13
$machine14 = New-AzVM -ResourceGroupName secondyear-it-rg-01 -Location 'Brazil South' -VM $serverconfig14
$machine15 = New-AzVM -ResourceGroupName secondyear-ec-rg-01 -Location 'Canada Central' -VM $serverconfig15
$machine16 = New-AzVM -ResourceGroupName secondyear-mech-rg-01 -Location 'Canada East' -VM $serverconfig16

$machine17 = New-AzVM -ResourceGroupName thirdyear-cs-rg-01 -Location 'Korea South' -VM $serverconfig17
$machine18 = New-AzVM -ResourceGroupName thirdyear-it-rg-01 -Location 'Central US' -VM $serverconfig18
$machine19 = New-AzVM -ResourceGroupName thirdyear-ec-rg-01 -Location 'East Asia' -VM $serverconfig19
$machine20 = New-AzVM -ResourceGroupName thirdyear-mech-rg-01 -Location 'France Central' -VM $serverconfig20
$machine21 = New-AzVM -ResourceGroupName thirdyear-cs-rg-01 -Location 'Korea South' -VM $serverconfig21
$machine22 = New-AzVM -ResourceGroupName thirdyear-it-rg-01 -Location 'Central US' -VM $serverconfig22
$machine23 = New-AzVM -ResourceGroupName thirdyear-ec-rg-01 -Location 'East Asia' -VM $serverconfig23
$machine24 = New-AzVM -ResourceGroupName thirdyear-mech-rg-01 -Location 'France Central' -VM $serverconfig24
$machine25 = New-AzVM -ResourceGroupName fourthyear-cs-rg-01 -Location 'Germany West Central' -VM $serverconfig25
$machine26 = New-AzVM -ResourceGroupName fourthyear-it-rg-01 -Location 'Japan East' -VM $serverconfig26
$machine27 = New-AzVM -ResourceGroupName fourthyear-ec-rg-01 -Location 'Japan West' -VM $serverconfig27
$machine28 = New-AzVM -ResourceGroupName fourthyear-mech-rg-01 -Location 'Korea Central' -VM $serverconfig28
$machine29 = New-AzVM -ResourceGroupName fourthyear-cs-rg-01 -Location 'Germany West Central' -VM $serverconfig29
$machine30 = New-AzVM -ResourceGroupName fourthyear-it-rg-01 -Location 'Japan East' -VM $serverconfig30
$machine31 = New-AzVM -ResourceGroupName fourthyear-ec-rg-01 -Location 'Japan West' -VM $serverconfig31
$machine32 = New-AzVM -ResourceGroupName fourthyear-mech-rg-01 -Location 'Korea Central' -VM $serverconfig32