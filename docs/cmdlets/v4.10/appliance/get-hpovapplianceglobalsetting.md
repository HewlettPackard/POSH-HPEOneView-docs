---
description: (Reserved for future use) Retrieve appliance global settings.
---

# Get-HPOVApplianceGlobalSetting

## Syntax

```text
Get-HPOVApplianceGlobalSetting
    [<CommonParameters>]
```

## Description

(Reserved for future use) Retrives the list of global settings or a specific global setting by name.

## Examples

###  Example 1 

```text
Get-HPOVApplianceGlobalSetting

```

Return appliance Global Settings and their values.

## Parameters

### -name &lt;String&gt;

Name of the global setting to be retrieved.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

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

_**System.Collections.ArrayList**_

Name, value, description, and uri for the global setting(s)


## Related Links

* [Set-HPOVApplianceGlobalSetting](set-hpovapplianceglobalsetting.md)
