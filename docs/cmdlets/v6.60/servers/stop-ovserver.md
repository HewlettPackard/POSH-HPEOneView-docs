---
description: Power off Server Resource.
---

# Stop-OVServer

## Syntax

```powershell
Stop-OVServer
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Stop-OVServer
    [-InputObject] <Object>
    [-Force]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Stop the power state of the server using the virtual power button.  By default, the Cmdlet will request a "Momentary Press" request to initiate a server to shutdown.

## Examples

###  Example 1 

```powershell
Get-OVServer -Name "Encl1, Bay 1" | Stop-OVServer | Wait-OVTaskComplete
```

Power off the specific server device by passing the Server Object via pipeline.

###  Example 2 

```powershell
Get-OVServerProfile -Name "MyWebServer 1" | Stop-OVServer | Wait-OVTaskComplete
```

Power off the specific server device by passing the Server Profile Object via pipeline.

###  Example 3 

```powershell
Get-OVServer -Name "Encl1, Bay 1" | Stop-OVServer -Force | Wait-OVTaskComplete
```

Power off the specific server device by passing the Server Object via pipeline, and forcably power off.

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

### -Force &lt;SwitchParameter&gt;

Use this parameter to request the "Press and Hold" virtual power button method, which will forcable power off a server without a graceful shutdown.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
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
* [Start-OVServer](start-ovserver.md)
* [Update-OVServer](update-ovserver.md)
* [Update-OVServerHardwareLicenseIntent](update-ovserverhardwarelicenseintent.md)
* [Update-OVServerProfile](update-ovserverprofile.md)
* [Get-OVServerOneTimeBoot](get-ovserveronetimeboot.md)
* [Set-OVServerOneTimeBoot](set-ovserveronetimeboot.md)
