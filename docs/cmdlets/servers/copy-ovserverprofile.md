---
description: Copy or clone a server profile.
---

# Copy-OVServerProfile

## Syntax

```powershell
Copy-OVServerProfile
    [-InputObject] <Object>
    [-DestinationName <String>]
    [-Assign <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can copy a server profile to server hardware of the same server hardware type and in the same enclosure group (for servers). If you are deploying multiple servers of the same type into the same enclosure, you can create a server profile template to streamline server provisioning.

This Cmdlet will copy a source Server Profile to a new instance You can assign the copy to an existing Server Device, or specify "unassigned".

???+ info
    Minimum required privileges: Infrastructure administrator or Server administrator

## Examples

###  Example 1 

```powershell
Get-OVServerProfile -Name "Profile 1" | Copy-OVServerProfile
```

Copy "Profile 1" to a new Server Profile that is unassigned and named "Copy of Profile 1".

###  Example 2 

```powershell
Copy-OVServerProfile -InputObject (Get-OVServerProfile -Name "Profile 1") -DestinationName "Profile 2"
```

Copy "Profile 1" to a new Server Profile that is unassigned and named "Profile 2".

###  Example 3 

```powershell
$ServerProfile = Get-OVServerProfile -Name "Profile 1"
$Server = Get-OVServer -Name "Encl1, Bay 9"
Copy-OVServerProfile -InputObject $ServerProfile -DestinationName "Profile 2" -assign $Server
```

Copy "Profile 1" to a new Server Profile that is assigned to "Encl1, Bay 9" named "Profile 2".

###  Example 4 

```powershell
$ServerProfile = Get-OVServerProfile -Name "Profile Template"
11.16 | % { Copy-OVServerProfile -InputObject $ServerProfile -DestinationName "Profile $_" -Assign "Encl1, bay $_" }
```

Copy 5 Server Profiles from "Profile Template" that will be assigned to bays 11 - 16 of Encl1.

## Parameters

### -InputObject &lt;Object&gt;

The object of the source server profile to be copied.

| Aliases | sname, src, SourceName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -DestinationName &lt;String&gt;

The name of the destination server profile that will be created.  If omitted, the new name will have "Copy of " 
prefixed to the source name.

| Aliases | dname, dst |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Assign &lt;Object&gt;

The object of the target server to assign the new profile to.  If omitted, profile will be "unassigned"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | unassigned |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "System.Management.Automation.PSCustomObject"
    Server Profile resource object
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Profile Create async task
    

## Related Links

* [Convert-OVServerProfile](convert-ovserverprofile.md)
* [Convert-OVServerProfileTemplate](convert-ovserverprofiletemplate.md)
* [ConvertTo-OVServerProfileTemplate](convertto-ovserverprofiletemplate.md)
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
