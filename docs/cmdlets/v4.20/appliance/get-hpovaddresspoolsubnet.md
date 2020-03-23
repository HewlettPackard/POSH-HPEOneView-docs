---
description: Retrieve Address Subnet Pool information.
---

# Get-HPOVAddressPoolSubnet

## Syntax

```text
Get-HPOVAddressPoolSubnet
    [-NetworkId] <String>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Using this Cmdlet will display the configured IPv4 Subnet Address Pool(s) configured on an HPE OneView appliance.

## Examples

###  Example 1 

```text
Get-HPOVAddressPoolSubnet
Appliance            Network ID   Subnet Mask   Gateway        DNS Server                   Domain Name       Ranges
---------            ----------   -----------   -------        ----------                   -----------       ------
hpov-tot1.domain.com 172.20.0.0   255.255.0.0   172.20.0.1     {10.250.33.12, 10.250.34.80} domain.com        Prod1
hpov-tot1.domain.com 192.168.20.0 255.255.255.0 192.168.20.254 {10.250.33.12, 10.250.34.80} vlan20.domain.lab VLAN20Prod
hpov-tot1.domain.com 192.168.10.0 255.255.255.0 192.168.10.254 {10.250.33.12, 10.250.34.80} domain.lab        VLAN10 Prod
```

Get the configured IPv4 Address Pools from all appliances.

###  Example 2 

```text
Get-HPOVAddressPoolSubnet -NetworkId 192.168.20.0
Appliance            Network ID   Subnet Mask   Gateway        DNS Server                   Domain Name       Ranges
---------            ----------   -----------   -------        ----------                   -----------       ------
hpov-tot1.domain.com 192.168.20.0 255.255.255.0 192.168.20.254 {10.250.33.12, 10.250.34.80} vlan20.domain.lab VLAN20Prod
```

Get the specified IPv4 Address Pool from all appliances.

## Parameters

### -NetworkId &lt;String&gt;

Specify the Network ID of the subnet in order to filter the results.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  This Cmdlet does not support pipeline operations.**_

## Return Values

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

Single IPv4 Subnet Address Pool Range.

_**System.Collections.ArrayList <HPOneView.Appliance.IPv4AddressSubnet>**_

Collection of IPv4 Subnet Address Pool Range(s).

## Related Links

* [New-HPOVAddressPoolSubnet](new-hpovaddresspoolsubnet.md)
* [Remove-HPOVAddressPoolSubnet](remove-hpovaddresspoolsubnet.md)
* [Set-HPOVAddressPoolSubnet](set-hpovaddresspoolsubnet.md)
