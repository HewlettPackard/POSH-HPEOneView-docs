---
description: 
---

# Get-HPOVAddressPool

## Syntax

```text
Get-HPOVAddressPool
    [-Type] <Array>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This cmdlet will get the avilable and configured Address Pools, and their associated Ranges from the appliance.  Currently, the appliance supports the following Address Pools:
    
	* VMAC
	* VWWN
	* VSN
	* IPv4
    
You can specify one, some or all of the Pool types.  A Range switch is provided to include the associated Range objects.  A report switch is provided to display a report of each Address Pool type.
## Examples

###  Example 1 

```text
Get-HPOVAddressPool

```

Get the address pools.

###  Example 2 

```text
Get-HPOVAddressPool -type vmac

```

Get the vmac address pool.

## Parameters

### -Type &lt;Array&gt;

The Address Pool type.  Accepted values are VMAC, VWWN, VSN, IPv4, or All.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | all |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_



## Return Values

_**HPOneView.Appliance.AddressPool [System.Management.Automation.PSCustomObject]**_

Single Address Pool and its contents.


_**System.Collections.ArrayList <HPOneView.Appliance.AddressPool>**_

Collection of Address Pools and their contents.


## Related Links

* [Get-HPOVAddressPoolRange](get-hpovaddresspoolrange.md)
* [Get-HPOVAddressPoolSubnet](get-hpovaddresspoolsubnet.md)
* [New-HPOVAddressPoolRange](new-hpovaddresspoolrange.md)
* [New-HPOVAddressPoolSubnet](new-hpovaddresspoolsubnet.md)
* [Remove-HPOVAddressPoolRange](remove-hpovaddresspoolrange.md)
* [Remove-HPOVAddressPoolSubnet](remove-hpovaddresspoolsubnet.md)
* [Set-HPOVAddressPoolSubnet](set-hpovaddresspoolsubnet.md)
