---
description: Delete an IPv4 Subnet Pool from an appliance.
---

# Remove-OVAddressPoolSubnet

## Syntax

```powershell
Remove-OVAddressPoolSubnet
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to remove one or more IPv4 Subnet Pools and associated address pool ranges from one or more appliances.

## Examples

###  Example 1 

```powershell
Get-OVAddressPoolSubnet | Remove-OVAddressPoolSubnet
```

Remove all IPv4 Subnet address pools from any connected appliance.

###  Example 2 

```powershell
Get-OVAddressPoolSubnet 192.168.20.0 | Remove-OVAddressPoolSubnet
```

Remove "192.168.20.0" IPv4 Subnet address pool from `[MyAppliance.domain.com]`.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-Subnet, `-IPv4Subnet`]
The IPv4 Subnet Pool resource Object.  Can be accepted via pipeline input.

| Aliases | Subnet, IPv4Subnet |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Appliance.IPAddressSubnet [System.Management.Automation.PSCustomObject]**_

IPv4 or IPv6 Subnet Pool from Get-OVAddressPoolSubnet

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Result of resource removal

## Related Links

* [Get-OVAddressPoolSubnet](get-ovaddresspoolsubnet.md)
* [New-OVAddressPoolSubnet](new-ovaddresspoolsubnet.md)
* [Set-OVAddressPoolSubnet](set-ovaddresspoolsubnet.md)
