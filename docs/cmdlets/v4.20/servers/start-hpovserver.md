---
description: Power on Server Resource.
---

# Start-HPOVServer

## Syntax

```text
Start-HPOVServer
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Async]
    [<CommonParameters>]
```

## Description

Start the power state of the server using the virtual power button.

## Examples

### Example 1

```text
Get-HPOVServer "Encl1, Bay 1" | Start-HPOVServer
```

Power on the specific server device by passing the Server Object via pipeline.

### Example 2

```text
Get-HPOVServer "Encl1, *" | Start-HPOVServer -Async
```

Power on the server devices found by passing the Server Object via pipeline, and return the async task immediately.

### Example 3

```text
Get-HPOVServerProfile "MyWebServer 1" | Start-HPOVServer
```

Power on the specific server device by passing the Server Profile Object via pipeline.

## Parameters

### -InputObject &lt;Object&gt;

A Server hardware or Server Profile resource object.

| Aliases | Server |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\]**_

Server Hardware Resource

_**HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\]**_

Server Profile Resource

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task that tracks the power state change

_**System.Collections.ArrayList**_ 

Multiple Async tasks

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
* [Remove-HPOVServer](remove-hpovserver.md)
* [Remove-HPOVServerProfile](remove-hpovserverprofile.md)
* [Remove-HPOVServerProfileTemplate]()
* [Restart-HPOVServer](restart-hpovserver.md)
* [Save-HPOVServerProfile](save-hpovserverprofile.md)
* [Save-HPOVServerProfileTemplate]()
* [Set-HPOVServerHardwareType]()
* [Set-HPOVServerPower](set-hpovserverpower.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate]()
* [Stop-HPOVServer](stop-hpovserver.md)
* [Update-HPOVServer](update-hpovserver.md)
* [Update-HPOVServerHardwareLicenseIntent]()
* [Update-HPOVServerProfile](update-hpovserverprofile.md)

