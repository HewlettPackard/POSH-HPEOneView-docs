---
description: Change the license intent of a server.
---

# Update-OVServerHardwareLicenseIntent

## Syntax

```powershell
Update-OVServerHardwareLicenseIntent
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The licensing intent of a server may be changed to either "OneView" (HPE OneView Advanced) or "OneViewNoiLO" (HPE OneView Advanced w/o iLO). The server must be unlicensed and managed in order to be able to update the licensing intent. In addition, a server licensed with "OneViewNoiLO" may be upgraded to "OneView", provided a "OneView" license is available and the server does not already have an embedded or "iLO Advanced" license installed. 

## Examples

###  Example 1 

```powershell
$Server = Get-OVServer -Name iLO123.domain.com -ErrorAction Stop
Update-OVServerHardwareLicenseIntent -InputObject $Server
```

Get the specific server resource, and attempt upgrading the license to "OneView".

###  Example 2 

```powershell
$Servers = Get-OVServer | ? licensingIntent -eq "OneViewNoIlo"
$Tasks = $Servers | Update-OVServerHardwareLicenseIntent -async
```

Get server resources with "OneViewNoIlo" license, and attempt upgrading the license to "OneView".

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

A server hardware resource from Get-OVServer.

| Aliases | name, Server |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

A server hardware resource from Get-OVServer.

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

_**null**_

If the resource is already assigned a valid upgraded license, a null response is returned.

## Related Links

