---
description: Power on Server Resource.
---

# Start-OVServer

## Syntax

```powershell
Start-OVServer
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Async]
    [<CommonParameters>]
```

## Description

Start the power state of the server using the virtual power button.

## Examples

###  Example 1 

```powershell
Get-OVServer -Name "Encl1, Bay 1" | Start-OVServer
```

Power on the specific server device by passing the Server Object via pipeline.

###  Example 2 

```powershell
Get-OVServer -Name "Encl1, *" | Start-OVServer -Async
```

Power on the server devices found by passing the Server Object via pipeline, and return the async task immediately.

###  Example 3 

```powershell
Get-OVServerProfile -Name "MyWebServer 1" | Start-OVServer
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
| Accept pipeline input? | true (ByValue) |
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

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

_**HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

Server Hardware Resource

_**HPEOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

Server Profile Resource

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task that tracks the power state change

_**System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>**_

Multiple Async tasks

## Related Links

* [Add-OVServer](add-ovserver.md)
* [Convert-OVServerProfile](convert-ovserverprofile.md)
* [Convert-OVServerProfileTemplate](convert-ovserverprofiletemplate.md)
* [ConvertTo-OVServerProfileTemplate](convertto-ovserverprofiletemplate.md)
* [Copy-OVServerProfile](copy-ovserverprofile.md)
* [Get-OVServer](get-ovserver.md)
* [Get-OVServerHardwareType](get-ovserverhardwaretype.md)
* [Get-OVServerProfile](get-ovserverprofile.md)
* [Get-OVServerProfileConnectionList](get-ovserverprofileconnectionlist.md)
* [Get-OVServerProfileMessage](get-ovserverprofilemessage.md)
* [Get-OVServerProfileTemplate](get-ovserverprofiletemplate.md)
* [Join-OVServerProfileToTemplate](join-ovserverprofiletotemplate.md)
* [New-OVServerProfile](new-ovserverprofile.md)
* [New-OVServerProfileAssign](new-ovserverprofileassign.md)
* [New-OVServerProfileAttachVolume](new-ovserverprofileattachvolume.md)
* [New-OVServerProfileConnection](new-ovserverprofileconnection.md)
* [New-OVServerProfileLogicalDisk](new-ovserverprofilelogicaldisk.md)
* [New-OVServerProfileLogicalDiskController](new-ovserverprofilelogicaldiskcontroller.md)
* [New-OVServerProfileTemplate](new-ovserverprofiletemplate.md)
* [Remove-OVServer](remove-ovserver.md)
* [Remove-OVServerProfile](remove-ovserverprofile.md)
* [Remove-OVServerProfileTemplate](remove-ovserverprofiletemplate.md)
* [Restart-OVServer](restart-ovserver.md)
* [Save-OVServerProfile](save-ovserverprofile.md)
* [Save-OVServerProfileTemplate](save-ovserverprofiletemplate.md)
* [Set-OVServerHardwareType](set-ovserverhardwaretype.md)
* [Set-OVServerPower](set-ovserverpower.md)
* [Set-OVServerProfile](set-ovserverprofile.md)
* [Set-OVServerProfileTemplate](set-ovserverprofiletemplate.md)
* [Stop-OVServer](stop-ovserver.md)
* [Update-OVServer](update-ovserver.md)
* [Update-OVServerHardwareLicenseIntent](update-ovserverhardwarelicenseintent.md)
* [Update-OVServerProfile](update-ovserverprofile.md)
* [Get-OVServerOneTimeBoot](get-ovserveronetimeboot.md)
* [Set-OVServerOneTimeBoot](set-ovserveronetimeboot.md)
