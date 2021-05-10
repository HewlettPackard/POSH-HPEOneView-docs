---
description: GRetrieve Appliance SNMP Read Community.
---

# Get-HPOVSnmpReadCommunity

## Syntax

```text
Get-HPOVSnmpReadCommunity
    [<CommonParameters>]
```

## Description

Get the configured appliance SNMP Read Community string.

## Examples

###  Example 1 

```text
Get-HPOVSnmpReadCommunity

```

Retrieve the SNMP Read Community string the appliance is configured to use from all connected sessions.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

The SNMP Read Community

## Related Links

* [Set-HPOVSnmpReadCommunity](set-hpovsnmpreadcommunity.md)
