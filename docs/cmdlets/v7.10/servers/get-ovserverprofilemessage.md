---
description: Display Server Profile alert messages.
---

# Get-OVServerProfileMessage

## Syntax

```powershell
Get-OVServerProfileMessage
    [-InputObject <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to display alert or other activity messages that are not tracked as Alerts or Tasks.  For instance, failed Connection will be reported as a Server Profile Message.  Firmware update status (using HPSUT) wil be displayed as messages.

## Examples

###  Example 1 

```powershell
Get-OVServerProfile MyProfile | Get-OVServerProfileMessage
```

Display the Server Profile messages for the provided resource.

## Parameters

### -InputObject &lt;Object&gt;

The Server Profile resource object.

| Aliases | ServerProfile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**HPEOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

Server Profile resource object from Get-OVServerProfile

## Return Values

_**HPEOneView.ServerProfileMessage [System.Management.Automation.PSCustomObject]**_

Server Profile message object.

_**System.Collections.ArrayList <HPEOneView.ServerProfileMessage>**_

Server Profile message object.

## Related Links

