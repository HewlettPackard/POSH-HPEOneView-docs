---
description: Modify the reserved VLAN range for HPE Synergy.
---

# Set-HPOVReservedVlanRange

## Syntax

```text
Set-HPOVReservedVlanRange
    [-Start] <int>
    [-Length] <int>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

By default, HPE Synergy reserves VLANs 3967-4095.  In order to modify the default range, Tunnel, untagged and FC networks must not exist.  The -Length parameter must not exceed 128.  The reserved VLAN range is concurrent.

{% hint style="info" %}
Minimum required privileges:  Network administrator, Infrastructure administrator
{% endhint %}

## Examples

###  Example 1 

```text
Set-HPOVReservedVlanRange -Start 2700 -Length 128

```

Change the reserved VLAN range to start at 2700, and end at 2828.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Length &lt;int&gt;

Must not exceed 128.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Start &lt;int&gt;

The starting VLAN ID.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

## Related Links

* [Get-HPOVReservedVlanRange](../networking/get-hpovreservedvlanrange.md)
