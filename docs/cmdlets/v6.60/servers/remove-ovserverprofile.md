---
description: Delete Server Profile Resource(s).
---

# Remove-OVServerProfile

## Syntax

```powershell
Remove-OVServerProfile
    [-ServerProfile] <Object>
    [-ApplianceConnection] <Object>
    [-force]
    [<CommonParameters>]
```

## Description

This Cmdlet will remove Server Profile resources from one or more appliance connections.  Server Profile objects or names are supported.  Server Profile resources can only be removed when the BladeSystem (BL) Server Hardware device is powered off.

## Examples

###  Example 1 

```powershell
$task = Remove-OVServerProfile -profile "Profile6"
Wait-OVTaskComplete $task.uri
                        
```

Remove the profile specifed by name. Wait for remove to complete.

###  Example 2 

```powershell
$profile = Get-OVServerProfile -name "Profile2"
Remove-OVServerProfile $profile -confirm:$false
```

Remove the profile specifed by $profile. Disable confirmation prompt.

###  Example 3 

```powershell
Get-OVServerProfile | Remove-OVServerProfile
```

Search for all profiles and remove them from appliance.

## Parameters

### -ServerProfile &lt;Object&gt;

The server profile object(s), name(s) or URI(s) to be removed.

| Aliases | uri, name, profile |
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

### -force &lt;SwitchParameter&gt;

Set to force-delete the profile.  For example, force-remove will successfully remove the profile, even when connectivity has been lost to the server or enclosure.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
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

_**HPEOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

Server Profile resource object.

_**System.String**_

Server Profile resource name.

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

A task resource that can be monitored for status of the profile deletion

_**System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>**_

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
