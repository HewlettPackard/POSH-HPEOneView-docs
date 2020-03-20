---
description: Delete Server Profile Resource(s).
---

# Remove-HPOVServerProfile

## Syntax

```text
Remove-HPOVServerProfile
    [-ServerProfile] <Object>
    [-ApplianceConnection] <Object>
    [-force]
    [<CommonParameters>]
```

## Description

This cmdlet will remove Server Profile resources from one or more appliance connections.  Server Profile objects or names are supported.  Server Profile resources can only be removed when the BladeSystem (BL) Server Hardware device is powered off.

## Examples

###  Example 1 

```text
$task = Remove-HPOVServerProfile -profile "Profile6"
Wait-HPOVTaskComplete $task.uri
                        

```

Remove the profile specifed by name. Wait for remove to complete.

###  Example 2 

```text
$profile = Get-HPOVServerProfile -name "Profile2"
Remove-HPOVServerProfile $profile -confirm:$false

```

Remove the profile specifed by $profile. Disable confirmation prompt.

###  Example 3 

```text
Get-HPOVServerProfile | Remove-HPOVServerProfile

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

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -force &lt;SwitchParameter&gt;

Set to `force-delete` the profile.  For example, `force-remove` will successfully remove the profile, even when connectivity has been lost to the server or enclosure.

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

Server Profile resource object.

_**System.String**_

Server Profile resource name.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

A task resource that can be monitored for status of the profile deletion

_**System.Collections.ArrayList <HPOneView.Appliance.TaskResource>**_

Multiple Async task resources.

## Related Links

* [Convert-HPOVServerProfile](convert-hpovserverprofile.md)
* [Convert-HPOVServerProfileTemplate](convert-hpovserverprofiletemplate.md)
* [ConvertTo-HPOVServerProfileTemplate](convertto-hpovserverprofiletemplate.md)
* [Copy-HPOVServerProfile](copy-hpovserverprofile.md)
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
* [Remove-HPOVServerProfileTemplate](remove-hpovserverprofiletemplate.md)
* [Save-HPOVServerProfile](save-hpovserverprofile.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)
* [Update-HPOVServerProfile](update-hpovserverprofile.md)
