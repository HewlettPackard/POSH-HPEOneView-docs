---
description: Restart Server Resource.
---

# Restart-HPOVServer

## Syntax

```text
Restart-HPOVServer
    [-Server] <Object>
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
Restart-HPOVServer
    [-Server] <Object>
    [-ColdBoot]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Restart the power state of the server using the virtual power button.  By default, the Cmdlet will request a "Reset" request to initiate a server to restart.  Using the ColdBoot will take away and present power back to the server resource.

## Examples

###  Example 1 

```text
Get-HPOVServer -Name "Encl1, Bay 1" | Restart-HPOVServer | Wait-HPOVTaskComplete
```

Restart the specific server device by passing the Server Object via pipeline.

###  Example 2 

```text
Get-HPOVServerProfile -Name "MyWebServer 1" | Restart-HPOVServer | Wait-HPOVTaskComplete
```

Restart the specific server device by passing the Server Profile Object via pipeline.

###  Example 3 

```text
Get-HPOVServer -Name "Encl1, Bay 1" | Restart-HPOVServer -ColdBoot | Wait-HPOVTaskComplete
```

Restart the specific server device by passing the Server Object via pipeline, and issue a cold boot request.

## Parameters

### -Server &lt;Object&gt;

A Server hardware or Server Profile resource object.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ColdBoot &lt;SwitchParameter&gt;

Use this parameter to request power be forcably removed then represented to the server resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

Server Hardware Resource

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

Server Profile Resource

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task that tracks the power state change

_**System.Collections.ArrayList <HPOneView.Appliance.TaskResource>**_

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
* [Join-HPOVServerProfileToTemplate](join-hpovserverprofiletotemplate.md)
* [New-HPOVServerProfile](new-hpovserverprofile.md)
* [New-HPOVServerProfileAssign](new-hpovserverprofileassign.md)
* [New-HPOVServerProfileAttachVolume](new-hpovserverprofileattachvolume.md)
* [New-HPOVServerProfileConnection](new-hpovserverprofileconnection.md)
* [New-HPOVServerProfileLogicalDisk](new-hpovserverprofilelogicaldisk.md)
* [New-HPOVServerProfileLogicalDiskController](new-hpovserverprofilelogicaldiskcontroller.md)
* [New-HPOVServerProfileTemplate](new-hpovserverprofiletemplate.md)
* [Remove-HPOVServer](remove-hpovserver.md)
* [Remove-HPOVServerProfile](remove-hpovserverprofile.md)
* [Remove-HPOVServerProfileTemplate](remove-hpovserverprofiletemplate.md)
* [Save-HPOVServerProfile](save-hpovserverprofile.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerHardwareType](set-hpovserverhardwaretype.md)
* [Set-HPOVServerPower](set-hpovserverpower.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)
* [Start-HPOVServer](start-hpovserver.md)
* [Stop-HPOVServer](stop-hpovserver.md)
* [Update-HPOVServer](update-hpovserver.md)
* [Update-HPOVServerHardwareLicenseIntent](update-hpovserverhardwarelicenseintent.md)
* [Update-HPOVServerProfile](update-hpovserverprofile.md)
* [Get-HPOVServerOneTimeBoot](get-hpovserveronetimeboot.md)
