---
description: Delete address pool range from an appliance.
---

# Remove-OVAddressPoolRange

## Syntax

```powershell
Remove-OVAddressPoolRange
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to remove one or more IPv4 Subnet Pools and associated address pool ranges from one or more appliances.

## Examples

###  Example 1 

```powershell
Get-OVAddressPoolRange | Remove-OVAddressPoolSubnet
```

Remove all address pool ranges the default connected appliance.

###  Example 2 

```powershell
Get-OVAddressPoolSubnet | Where startAddress -eq "11:11:11:11:11:11" | Remove-OVAddressPoolSubnet
```

Remove "192.168.20.0" IPv4 Subnet address pool from `[MyAppliance.domain.com]`.

## Parameters

### -InputObject &lt;Object&gt;

The address pool range resource Object.  Can be accepted via pipeline input.

| Aliases | AddressPool |
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

=== "HPEOneView.Appliance.AddressPoolRange [System.Management.Automation.PSCustomObject]"
    address pool range from Get-OVAddressPoolRange
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Result of resource removal
    

## Related Links

* [Get-OVAddressPoolRange](get-ovaddresspoolrange.md)
* [New-OVAddressPoolRange](new-ovaddresspoolrange.md)
