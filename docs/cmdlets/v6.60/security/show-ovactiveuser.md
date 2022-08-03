---
description: Display active and connected users.
---

# Show-OVActiveUser

## Syntax

```powershell
Show-OVActiveUser
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to display active and connected users to an HPE OneView or Synergy management appliance.  Infrastructure administrator or Security administrator role is required in order to view all connected users. 

## Examples

###  Example 1 

```powershell
Get-OVActiveUser  UserName              LoginDomain       ClientHost    LoginTime --------              -----------       ----------    --------- BobSmith@domain.local doctors-lab.local 192.168.19.3  11/1/2018 9: 39: 34 PM administrator         Local             192.168.19.20 11/7/2018 1: 58: 48 PM Administrator         Local             192.168.19.3  11/10/2018 5: 36: 39 AM
```

Display connected active users to the appliance.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPEOneView.Appliance.ActiveUserSession**_

Connected user session and its details.

## Related Links

