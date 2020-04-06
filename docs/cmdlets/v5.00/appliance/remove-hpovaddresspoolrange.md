---
description: Delete address pool range from an appliance.
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

This Cmdlet provides the ability to remove one or more IPv4 Subnet Pools and associated address pool ranges from one or more appliances.

## Examples

###  Example 1 

```text
Get-HPOVAddressPoolRange | Remove-HPOVAddressPoolSubnet
```

Remove all address pool ranges the default connected appliance.

###  Example 2 

```text
Get-HPOVAddressPoolSubnet | Where startAddress -eq "11:11:11:11:11:11" | Remove-HPOVAddressPoolSubnet
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

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

_**HPOneView.Appliance.AddressPoolRange [System.Management.Automation.PSCustomObject]**_

address pool range from [`Get-HPOVAddressPoolRange`](get-hpovaddresspoolrange.md)

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Result of resource removal

## Related Links

* [Get-HPOVAddressPoolRange](get-hpovaddresspoolrange.md)
* [New-HPOVAddressPoolRange](new-hpovaddresspoolrange.md)
