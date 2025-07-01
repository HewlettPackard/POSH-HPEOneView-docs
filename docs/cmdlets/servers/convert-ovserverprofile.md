---
description: Migrate Server Profile.
---

# Convert-OVServerProfile

## Syntax

```powershell
Convert-OVServerProfile
    [-InputObject] <Object>
    [-ServerHardwareType <Object>]
    [-EnclosureGroup <Object>]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to change the Server Hardware Type and/or Enclosure Group set within the Server Profile.  Changing to
a different server hardware type may change the capabilities available to the server profile. Changing the enclosure group may change the connections which are available for the profile.

* The server hardware field will be set to "unassigned", requiring re-seletion of server hardware.
* It may also cause incompatibilities with the current configuration.
* All deployed connections will have their port assignment set to "Auto".
* Any incompatibilities will be flagged when the server profile is committed.
* If the new server hardware type does not support the local storage configuration, some storage may be lost.
* If the enclosure group is changed, mezzanine storage is lost and the disk drives are released.
* To prevent data loss, cancel this operation and backup data before applying the profile.
* Any change in the server hardware type will lead to the associated volume loss.
* If the server profile is associated with a server profile template, the server profile will become inconsistent with the template.  The server profile should be unassociated with the template before or after the migration.

???+ info
    Minimum required privileges: Infrastructure administrator or Server administrator.

## Examples

###  Example 1 

```powershell
$ServerProfile = Get-OVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewServerHardwareType = Get-OVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-OVServerProfile -InputObject $ServerProfile -ServerHardwareType $NewServerHardwareType
```

Transform the specified server profile object to a different server hardware type resource.

###  Example 2 

```powershell
$ServerProfile = Get-OVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewEnclosureGroup = Get-OVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
Convert-OVServerProfile -InputObject $ServerProfile -EnclosureGroup $NewEnclosureGroup
```

Transform the specified server profile object to a different enclosure group resource.

###  Example 3 

```powershell
$ServerProfile = Get-OVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewEnclosureGroup = Get-OVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
$NewServerHardwareType = Get-OVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-OVServerProfile -InputObject $ServerProfile -EnclosureGroup $NewEnclosureGroup -ServerHardwareType $NewServerHardwareType
```

Transform the specified server profile object to a different enclosure group and server hardware type resource.

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

### -Confirm &lt;SwitchParameter&gt;

Override confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnclosureGroup &lt;Object&gt;

Specify the target `[HPEOneView.EnclosureGroup]` resource object.  By changing the Enclosure Group, assigned Networks with Connections that do not exist on in the associated Logical Interconnect Group(s), the Connection may not be assigned to an available FlexNIC.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The `[HPEOneView.ServerProfile]` object from Get-OVServerProfile.

| Aliases | ServerProfile, Profile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ServerHardwareType &lt;Object&gt;

Specify the `[HPEOneView.ServerHardwareType]` object to transform to.  BIOS Settings will be reset to defaults, and Connection FlexNIC assignment will be reset back to Auto.

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

=== "HPEOneView.ServerProfile"
    The Server Profile resource object to transform.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async Task resource to monitor progress of the Server Profile transformation.
    

## Related Links

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
* [Save-OVServerProfile](save-ovserverprofile.md)
* [Save-OVServerProfileTemplate](save-ovserverprofiletemplate.md)
* [Set-OVServerProfile](set-ovserverprofile.md)
* [Set-OVServerProfileTemplate](set-ovserverprofiletemplate.md)
* [Update-OVServerProfile](update-ovserverprofile.md)
