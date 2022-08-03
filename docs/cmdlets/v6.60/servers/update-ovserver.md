---
description: Refresh the state of a server resource.
---

# Update-OVServer

## Syntax

```powershell
Update-OVServer
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Update-OVServer
    [-InputObject] <Object>
    [-Credential] <String>
    [-Hostname] <String>
    [-Force]
    [-Async]
    [<CommonParameters>]
```

```powershell
Update-OVServer
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

By using this Cmdlet, you can manually refresh the connection between the appliance and server hardware by using the Refresh option on the Actions menu. You must refresh server hardware if it has lost connectivity or if it is not synchronized with the appliance. Connectivity loss can occur during normal appliance operation. A device can become unsynchronized if you make changes to it outside of the appliance

## Examples

###  Example 1 

```powershell
Get-OVServer -Name "Encl1, Bay 1" | Update-OVServer | Wait-OVTaskComplete
```

Refresh the state of the provided server hardware device.

###  Example 2 

```powershell
$task = Get-OVServerProfile -Name "Profile1" | Update-OVServer
```

Refresh the state of the server hardware device assigned to the Server Profile object.

## Parameters

### -InputObject &lt;Object&gt;

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

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
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

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task that tracks the server refresh request

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
* [Stop-OVServer](stop-ovserver.md)
* [Update-OVServerHardwareLicenseIntent](update-ovserverhardwarelicenseintent.md)
* [Update-OVServerProfile](update-ovserverprofile.md)
* [Get-OVServerOneTimeBoot](get-ovserveronetimeboot.md)
* [Set-OVServerOneTimeBoot](set-ovserveronetimeboot.md)
