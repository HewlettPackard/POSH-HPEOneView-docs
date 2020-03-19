---
description: 
---

# Get-HPOVApplianceCurrentSecurityMode

## Syntax

```text
Get-HPOVApplianceCurrentSecurityMode
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Return the current security mode of the appliance.
## Examples

###  Example 1 

```text
Get-HPOVApplianceCurrentSecurityMode

```

Get the appliances current security mode.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_



## Return Values

_**HPOneView.Appliance.SecurityMode**_

The current appliance security mode.


## Related Links

* [Set-HPOVApplianceCurrentSecurityMode](set-hpovappliancecurrentsecuritymode.md)
