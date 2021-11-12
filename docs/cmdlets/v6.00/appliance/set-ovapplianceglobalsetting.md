---
description: (Reserved for future use) Update appliance global settings.
---

# Set-OVApplianceGlobalSetting

## Syntax

```powershell
Set-OVApplianceGlobalSetting
    [-Name] <String>
    [-Value] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Set-OVApplianceGlobalSetting
    [-InputObject] <HPEOneView.Appliance.GlobalSetting>
    [-Value] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

(Reserved for future use) Updates the value for an existing global parameter.

## Examples

###  Example 1 

```powershell
Set-OVApplianceGlobalSetting alertMax 75000
```

Returns the "alertMax" setting object with the updated value of 75000

## Parameters

### -InputObject &lt;HPEOneView.Appliance.GlobalSetting&gt;

Aliases [-Object]

The Appliance Global Setting object from Get-OVApplianceGlobalSetting.

| Aliases | Object |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

The name of the global parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Value &lt;String&gt;

The updated value for the global parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**HPEOneView.Appliance.GlobalSetting**_

Appliance global setting from Get-OVApplianceGlobalSetting.

## Return Values

_**The setting object with updated parameters.**_



## Related Links

* [Get-OVApplianceGlobalSetting](get-ovapplianceglobalsetting.md)
