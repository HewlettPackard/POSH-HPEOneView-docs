---
description: Remove a rackmount server from the appliance.
---

# Remove-HPOVServer

## Syntax

```text
Remove-HPOVServer
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Force]
    [<CommonParameters>]
```

## Description

Removes a physical server object from appliance management.

The server object can be specified by its name or its full URI on the appliance by using the -Server parameter. It can also be supplied as an object by using the -resource parameter the object variable can be piped to `Remove-HPOVServer`.

Blade servers can only be removed by removing the enclosure \(Remove-HPOVEnclosure\), or phyhsically removing the blade from the enclosure.

## Examples

### Example 1

```text
$task = Remove-HPOVServer -name "Server-1234" -force
Wait-HPOVTaskComplete $task
```

Force-remove the server specifed by name. Wait for remove to complete.

### Example 2

```text
$server = Get-HPOVServer -name "Server-1234"
Remove-HPOVServer $server -confirm:$false
```

Remove the server specifed by $server. Disable confirmation prompt.

### Example 3

```text
$server = Get-HPOVServer -name "Server-1234"
Remove-HPOVServer $server -confirm:$false -force
```

Remove the server specifed by $server. Disable confirmation prompt, and force remove the server.

### Example 4

```text
Get-HPOVServer | Remove-HPOVServer
```

Search for all rackmount servers and remove them from appliance.

## Parameters

### -InputObject &lt;Object&gt;

The Server object\(s\), name\(s\) or uri\(s\) to be removed from management.

| Aliases | uri, name, Server |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Use to `force-remove` the server. For example, if the server is gone or managed by a different appliance, `force-remove` will remove the server from this appliance without removing any of the HPE OneView applied configuration.

When the request is accepted by the appliance, it does not return an Async Task Resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### -WhatIf &lt;SwitchParameter&gt;

| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Management.Automation.PSCustomObject**_

Provide the Server Resource Object

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async removal task

_**System.Management.Automation.PSCustomObject**_

When using the `-Force` parameter, a PSCustomObject is returned indicating successful removal of the resource

## Related Links

* [Add-HPOVServer](add-hpovserver.md)
* [Convert-HPOVServerProfile](convert-hpovserverprofile.md)
* [Convert-HPOVServerProfileTemplate](convert-hpovserverprofiletemplate.md)
* [ConvertTo-HPOVServerProfileTemplate](convertto-hpovserverprofiletemplate.md)
* [Copy-HPOVServerProfile](copy-hpovserverprofile.md)
* [Get-HPOVServer](get-hpovserver.md)
* [Get-HPOVServerHardwareType](get-hpovserverhardwaretype.md)
* [Get-HPOVServerProfile](get-hpovserverprofile.md)
* [Get-HPOVServerProfileConnectionList](get-hpovserverprofileconnectionlist.md)
* [Get-HPOVServerProfileMessage](get-hpovserverprofilemessage.md)
* [Get-HPOVServerProfileTemplate](get-hpovserverprofiletemplate.md)
* [Join-HPOVServerProfileToTemplate]()
* [New-HPOVServerProfile](new-hpovserverprofile.md)
* [New-HPOVServerProfileAssign](new-hpovserverprofileassign.md)
* [New-HPOVServerProfileAttachVolume](new-hpovserverprofileattachvolume.md)
* [New-HPOVServerProfileConnection](new-hpovserverprofileconnection.md)
* [New-HPOVServerProfileLogicalDisk](new-hpovserverprofilelogicaldisk.md)
* [New-HPOVServerProfileLogicalDiskController](new-hpovserverprofilelogicaldiskcontroller.md)
* [New-HPOVServerProfileTemplate](new-hpovserverprofiletemplate.md)
* [Remove-HPOVServerProfile](remove-hpovserverprofile.md)
* [Remove-HPOVServerProfileTemplate](remove-hpovserverprofiletemplate.md)
* [Restart-HPOVServer](restart-hpovserver.md)
* [Save-HPOVServerProfile](save-hpovserverprofile.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerHardwareType](set-hpovserverhardwaretype.md)
* [Set-HPOVServerPower](set-hpovserverpower.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)
* [Start-HPOVServer](start-hpovserver.md)
* [Stop-HPOVServer](stop-hpovserver.md)
* [Update-HPOVServer](update-hpovserver.md)
* [Update-HPOVServerHardwareLicenseIntent]()
* [Update-HPOVServerProfile](update-hpovserverprofile.md)

