---
description: Create an IPv4 Subnet Pool.
---

# New-HPOVAddressPoolSubnet

## Syntax

```text
New-HPOVAddressPoolSubnet
    [-NetworkId] <IPAddress>
    [-SubnetMask] <String>
    [-Gateway] <IPAddress>
    [-Domain] <String>
    [-DNSServers] <Array>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will assist with creating a new IPv4 address pool. When creating a new IPv4 Address Subnet, you must provide the Network ID, Subnet Mask \(CIDR \[e.g. 24\] or IPv4 Address Value \[e.g. 255.255.255.0\]\), Gateway and Domain Name. DNS Servers are optional.

To add IPv4 Address Ranges to a Subnet after creating it, please use the New-HPOVAddressPoolRange Cmdlet.

## Examples

### Example 1

```text
PS C:> New-HPOVAddressPoolSubnet -NetworkID 192.168.10.0 -Subnetmask 24 -Gateway 192.168.10.254 -Domain vlan10.domain.com -DNSServers 10.250.33.12,10.250.34.80
```

Create a new IPv4 address pool with the specified values.

## Parameters

### -NetworkId &lt;IPAddress&gt;

The IPv4 Network ID value of the subnet.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SubnetMask &lt;String&gt;

CIDR `[e.g`. 24\] or IPv4 Address Value `[e.g`. 255.255.255.0\]

| Aliases | PrefixLength |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Gateway &lt;IPAddress&gt;

IPv4 Address of the default gateway for the subnet.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Domain &lt;String&gt;

DNS Domain Name of the subnet.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DNSServers &lt;Array&gt;

An array of DNS Server IPv4 Addresses.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.IPAddressSubnet \[System.Management.Automation.PSCustomObject\]**_

Newly created IPv4 Address Subnet

## Related Links

* [Get-HPOVAddressPoolSubnet](get-hpovaddresspoolsubnet.md)
* [Remove-HPOVAddressPoolSubnet](remove-hpovaddresspoolsubnet.md)
* [Set-HPOVAddressPoolSubnet](set-hpovaddresspoolsubnet.md)

