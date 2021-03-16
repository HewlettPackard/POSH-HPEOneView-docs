---
description: Delete an IPv4 Subnet Pool from an appliance.
---

# Remove-HPOVAddressPoolSubnet

## Syntax

```text
Remove-HPOVAddressPoolSubnet
    [-IPv4Subnet] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to remove one or more IPv4 Subnet Pools and associated Address Pool Ranges from one or more appliances.

## Examples

###  Example 1 

```text
Get-HPOVAddressPoolSubnet | Remove-HPOVAddressPoolSubnet

```

Remove all IPv4 Subnet Address Pools from any connected appliance.

###  Example 2 

```text
Get-HPOVAddressPoolSubnet 192.168.20.0 | Remove-HPOVAddressPoolSubnet

```

Remove "192.168.20.0" IPv4 Subnet Address Pool from `[MyAppliance.domain.com]`.

## Parameters

### -IPv4Subnet &lt;Object&gt;

Aliases [-Subnet]
The IPv4 Subnet Pool resource Object.  Can be accepted via pipeline input.

| Aliases | Subnet |
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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

IPv4 Subnet Pool from Get-HPOVAddressPoolSubnet


## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Result of resource removal

## Related Links

* [Get-HPOVAddressPoolSubnet](get-hpovaddresspoolsubnet.md)
* [New-HPOVAddressPoolSubnet](new-hpovaddresspoolsubnet.md)
* [Set-HPOVAddressPoolSubnet](set-hpovaddresspoolsubnet.md)
