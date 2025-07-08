---
description: Delete Server Profile Resource(s).
---

# Remove-OVServerProfile

## Syntax

```powershell
Remove-OVServerProfile
    [-InputObject] <Object>
    [-RetainStorageConfig]
    [-Force]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will remove Server Profile resources from one or more appliance connections.  Server Profile objects or names are supported.  Server Profile resources can only be removed when the BladeSystem (BL) Server Hardware device is powered off.

## Examples

###  Example 1 

```powershell
$profile = Get-OVServerProfile -name "Profile2"
Remove-OVServerProfile -InputObject $profile -Confirm:$false
```

Remove the profile specifed by $profile. Disable confirmation prompt.

###  Example 2 

```powershell
Get-OVServerProfile | Remove-OVServerProfile
```

Search for all profiles and remove them from appliance.

## Parameters

### -InputObject &lt;Object&gt;

The server profile object to be removed.

| Aliases | uri, name, profile, ServerProfile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
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

### -Force &lt;SwitchParameter&gt;

Set to force-delete the profile.  For example, force-remove will successfully remove the profile, even when connectivity has been lost to the server or enclosure.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
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

### -RetainStorageConfig &lt;SwitchParameter&gt;

Use this parameter to retain HPE OneView storage managed volumes.  The default operation when deleting a server profile, the following activities take place:

*  Non-permanent private volumes are deleted from HPE OneView, SAN and the storage system.
*  Permanent private volumes are not deleted from either HPE OneView, SAN or the storage system.
*  SAN configuration is deleted from HPE OneView, SAN and the storage system.
*  Shared volumes are not deleted from either HPE OneView, SAN or the storage system.

If the `-RetainStorageConfig` parameter is used while deleting a server profile, the following activities take place:

* All private volumes, including permanent and non permanent are removed only from HPE OneView.
* SAN configuration is deleted only in HPE OneView.
* No changes occur on the SAN and storage system, the server can continue to run and access its private and shared volume data.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.ServerProfile [System.Management.Automation.PSCustomObject]"
    Server Profile resource object.
    

=== "System.String"
    Server Profile resource name.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    A task resource that can be monitored for status of the profile deletion
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>"
    Multiple Async task resources.
    

## Related Links

* [Convert-OVServerProfile](convert-ovserverprofile.md)
* [Convert-OVServerProfileTemplate](convert-ovserverprofiletemplate.md)
* [ConvertTo-OVServerProfileTemplate](convertto-ovserverprofiletemplate.md)
* [Copy-OVServerProfile](copy-ovserverprofile.md)
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
* [Remove-OVServerProfileTemplate](remove-ovserverprofiletemplate.md)
* [Save-OVServerProfile](save-ovserverprofile.md)
* [Save-OVServerProfileTemplate](save-ovserverprofiletemplate.md)
* [Set-OVServerProfile](set-ovserverprofile.md)
* [Set-OVServerProfileTemplate](set-ovserverprofiletemplate.md)
* [Update-OVServerProfile](update-ovserverprofile.md)
