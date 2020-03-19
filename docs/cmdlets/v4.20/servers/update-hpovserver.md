---
description: 
---

# Update-HPOVServer

## Syntax

```text
Update-HPOVServer
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
Update-HPOVServer
    [-InputObject] <Object>
    [-Credential] <String>
    [-Hostname] <String>
    [-Force]
    [-Async]
    [<CommonParameters>]
```

```text
Update-HPOVServer
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

By using this cmdlet, you can manually refresh the connection between the appliance and server hardware by using the Refresh option on the Actions menu. You must refresh server hardware if it has lost connectivity or if it is not synchronized with the appliance. Connectivity loss can occur during normal appliance operation. A device can become unsynchronized if you make changes to it outside of the appliance
## Examples

###  Example 1 

```text
Get-HPOVServer "Encl1, Bay 1" | Update-HPOVServer | Wait-HPOVTaskComplete

```

Refresh the state of the provided server hardware device.

###  Example 2 

```text
$task = Get-HPOVServerProfile "Profile1" | Update-HPOVServer

```

Refresh the state of the server hardware device assigned to the Server Profile object.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-Name, `-Server`]
The Server object or Name, or can be a Server Profile object.

| Aliases | name, Server |
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

Aliases [-Appliance]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

When a server hardware resource is in an Error state where the iLO IP Address or FQDN has changed, or the HPE OneView managed configuration is no longer present, you will need to provide the IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;String&gt;

Provide a PSCredential object instead of the Username and Password.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

If the target server resource is repoting to be claimed by another external manager, use this parameter to force claim from the connected appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.String**_

Server Hardware Name


_**System.Management.Automation.PSCustomObject**_

Server Hardware Resource


_**System.Management.Automation.PSCustomObject**_

Server Profile Resource


## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task that tracks the server refresh request

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
* [Restart-HPOVServer](restart-hpovserver.md)
* [Save-HPOVServerProfile](save-hpovserverprofile.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerHardwareType](set-hpovserverhardwaretype.md)
* [Set-HPOVServerPower](set-hpovserverpower.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)
* [Start-HPOVServer](start-hpovserver.md)
* [Stop-HPOVServer](stop-hpovserver.md)
* [Update-HPOVServerHardwareLicenseIntent](update-hpovserverhardwarelicenseintent.md)
* [Update-HPOVServerProfile](update-hpovserverprofile.md)
