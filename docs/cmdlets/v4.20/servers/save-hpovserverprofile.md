---
description: Save the contents of a Server Profile to the appliance.
---

# Save-HPOVServerProfile

## Syntax

```text
Save-HPOVServerProfile
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

This Cmdlet allows administrators to save the modified Server Profile object within the current PowerShell session to the target appliance.

## Examples

###  Example 1 

```text
$MyProfile = Get-HPOVServerProfile -Name "My Profile 1" -ErrorAction Stop
$MyProfile.name = "My Profile NewName 1"
Save-HPOVServerProfile -InputObject $MyProfile

```

Get a Server Profile, update its name, then save.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Server Profile object to be saved.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerProfile**_

A Server Profile resource object from [`Get-HPOVServerProfile`](get-hpovserverprofile.md) that was modified and needs to be saved.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for monitoring the enclosure import process.

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
* [Remove-HPOVServerProfile](remove-hpovserverprofile.md)
* [Remove-HPOVServerProfileTemplate](remove-hpovserverprofiletemplate.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)
* [Update-HPOVServerProfile](update-hpovserverprofile.md)
