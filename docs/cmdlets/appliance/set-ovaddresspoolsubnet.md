---
description: Update an IPv4 Subnet Pool configuration.
---

# Set-OVAddressPoolSubnet

## Syntax

```powershell
Set-OVAddressPoolSubnet
    [-InputObject] <Object>
    [-SubnetMask <IPAddress>]
    [-Gateway <IPAddress>]
    [-Domain <String>]
    [-DNSServers <Array>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will assist with updating an existing IPv4 address pool.  When updating an IPv4 Address Subnet, you must provide the Subnet Object or Name to modify. Only the Gateway, Domain Name, and DNS Servers can be updated once an IPv4 Subnet has been assigned to a resource.

## Examples

###  Example 1 

```powershell
PS C:> Get-OVAddressPoolSubnet 192.168.20.0 | Set-OVAddressPoolSubnet -Gateway 192.168.20.1
```

Update the IPv4 Subnet address pool"s default gateway to the new address.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-Subnet, `-IPv4Subnet`]

The IPv4 Subnet resource object to update.

| Aliases | Subnet, IPv4Subnet |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Gateway &lt;IPAddress&gt;

IPv4 Address of the default gateway for the subnet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SubnetMask &lt;IPAddress&gt;

IPv4 Subnet Mask of the subnet.  Please know that if the Subnet is associated with another resource (Ethernet Network, Logical Enclosure or Deployment Server), there will be an error as the mask cannot be changed until it is unassociated with the resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Domain &lt;String&gt;

DNS Domain Name of the subnet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DNSServers &lt;Array&gt;

An array of DNS Server IPv4 Addresses.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.IPAddressSubnet [System.Management.Automation.PSCustomObject]"
    IPv4 Address Subnet
    

## Return Values

=== "HPEOneView.Appliance.IPAddressSubnet [System.Management.Automation.PSCustomObject]"
    Updated IPv4 Address Subnet
    

## Related Links

* [Get-OVAddressPoolSubnet](get-ovaddresspoolsubnet.md)
* [New-OVAddressPoolSubnet](new-ovaddresspoolsubnet.md)
* [Remove-OVAddressPoolSubnet](remove-ovaddresspoolsubnet.md)
