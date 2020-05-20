---
description: (Reserved for future use) Update appliance global settings.
---

# Set-HPOVApplianceGlobalSetting

## Syntax

```text
Set-HPOVApplianceGlobalSetting
    [-Name] <>
    [-Value] <>
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

```text
Set-HPOVApplianceGlobalSetting
    [-InputObject] <>
    [-Value] <>
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

(Reserved for future use) Updates the value for an existing global parameter.

## Examples

###  Example 1 

```text
Set-HPOVApplianceGlobalSetting alertMax 75000
```

Returns the "alertMax" setting object with the updated value of 75000

## Parameters

### -InputObject &lt;&gt;

Aliases [-Object]

The Appliance Global Setting object from `Get-HPOVApplianceGlobalSetting`.

| Aliases | Object |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;&gt;

The name of the global parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Value &lt;&gt;

The updated value for the global parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**HPOneView.Appliance.GlobalSetting**_

Appliance global setting from [`Get-HPOVApplianceGlobalSetting`](get-hpovapplianceglobalsetting.md).

## Return Values

_**The setting object with updated parameters.**_



## Related Links

* [Get-HPOVApplianceGlobalSetting](get-hpovapplianceglobalsetting.md)
