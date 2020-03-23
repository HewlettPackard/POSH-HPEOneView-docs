---
description: Delete Address Pool Range from an appliance.
---

# Remove-HPOVAddressPoolRange

## Syntax

```text
Remove-HPOVAddressPoolRange
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to remove one or more IPv4 Subnet Pools and associated Address Pool Ranges from one or more appliances.

## Examples

###  Example 1 

```text
Get-HPOVAddressPoolRange | Remove-HPOVAddressPoolSubnet

```

Remove all Address Pool ranges the default connected appliance.

###  Example 2 

```text
Get-HPOVAddressPoolSubnet | Where startAddress -eq "11:11:11:11:11:11" | Remove-HPOVAddressPoolSubnet

```

Remove "192.168.20.0" IPv4 Subnet Address Pool from `[MyAppliance.domain.com]`.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-AddressPool]
The Address Pool Range resource Object.  Can be accepted via pipeline input.

| Aliases | AddressPool |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
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

_**HPOneView.Appliance.AddressPoolRange [System.Management.Automation.PSCustomObject]
**_

Address Pool Range from [`Get-HPOVAddressPoolRange`](get-hpovaddresspoolrange.md)


## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]
**_

Result of resource removal

## Related Links

* [Get-HPOVAddressPoolRange](get-hpovaddresspoolrange.md)
* [New-HPOVAddressPoolRange](new-hpovaddresspoolrange.md)
