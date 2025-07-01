---
description: Save the contents of a Server Profile to the appliance.
---

# Save-OVServerProfile

## Syntax

```powershell
Save-OVServerProfile
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

This Cmdlet allows administrators to save the modified Server Profile object within the current PowerShell session to the target appliance.

## Examples

###  Example 1 

```powershell
$MyProfile = Get-OVServerProfile -Name "My Profile 1" -ErrorAction Stop
$MyProfile.name = "My Profile NewName 1"
Save-OVServerProfile -InputObject $MyProfile
```

Get a Server Profile, update its name, then save.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
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

### -InputObject &lt;Object&gt;

Server Profile object to be saved.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.ServerProfile"
    A Server Profile resource object from Get-OVServerProfile that was modified and needs to be saved.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for monitoring the enclosure import process.
    

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
* [Remove-OVServerProfile](remove-ovserverprofile.md)
* [Remove-OVServerProfileTemplate](remove-ovserverprofiletemplate.md)
* [Save-OVServerProfileTemplate](save-ovserverprofiletemplate.md)
* [Set-OVServerProfile](set-ovserverprofile.md)
* [Set-OVServerProfileTemplate](set-ovserverprofiletemplate.md)
* [Update-OVServerProfile](update-ovserverprofile.md)
