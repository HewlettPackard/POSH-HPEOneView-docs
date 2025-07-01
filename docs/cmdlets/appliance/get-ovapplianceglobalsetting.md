---
description: (Reserved for future use) Retrieve appliance global settings.
---

# Get-OVApplianceGlobalSetting

## Syntax

```powershell
Get-OVApplianceGlobalSetting
    [-name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

(Reserved for future use)

Retrieves the list of global settings or a specific global setting by name.

## Examples

###  Example 1 

```powershell
Get-OVApplianceGlobalSetting
```

Return appliance Global Settings and their values.

## Parameters

### -Name &lt;String&gt;

Name of the global setting to be retrieved.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Collections.ArrayList"
    Name, value, description, and uri for the global setting(s)
    

## Related Links

* [Set-OVApplianceGlobalSetting](set-ovapplianceglobalsetting.md)
