---
description: Copy or clone a server profile.
---

# Copy-HPOVServerProfile

## Syntax

```text
Copy-HPOVServerProfile
    [-InputObject] <Object>
    [-DestinationName <String>]
    [-Assign <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can copy a server profile to server hardware of the same server hardware type and in the same enclosure group (for servers). If you are deploying multiple servers of the same type into the same enclosure, you can create a server profile template to streamline server provisioning.

This Cmdlet will copy a source Server Profile to a new instance You can assign the copy to an existing Server Device, or specify "unassigned".

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator
{% endhint %}

## Examples

###  Example 1 

```text
Get-HPOVServerProfile -Name "Profile 1" | Copy-HPOVServerProfile
```

Copy "Profile 1" to a new Server Profile that is unassigned and named "Copy of Profile 1".

###  Example 2 

```text
Copy-HPOVServerProfile -InputObject (Get-HPOVServerProfile -Name "Profile 1") -DestinationName "Profile 2"
```

Copy "Profile 1" to a new Server Profile that is unassigned and named "Profile 2".

###  Example 3 

```text
$ServerProfile = Get-HPOVServerProfile -Name "Profile 1"
$Server = Get-HPOVServer -Name "Encl1, Bay 9"
Copy-HPOVServerProfile -InputObject $ServerProfile -DestinationName "Profile 2" -assign $Server
```

Copy "Profile 1" to a new Server Profile that is assigned to "Encl1, Bay 9" named "Profile 2".

###  Example 4 

```text
$ServerProfile = Get-HPOVServerProfile -Name "Profile Template"
11.16 | % { Copy-HPOVServerProfile -InputObject $ServerProfile -DestinationName "Profile $_" -Assign "Encl1, bay $_" }
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

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

_**System.Management.Automation.PSCustomObject**_

Server Profile resource object

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Profile Create async task

## Related Links

* [Convert-HPOVServerProfile](convert-hpovserverprofile.md)
* [Convert-HPOVServerProfileTemplate](convert-hpovserverprofiletemplate.md)
* [ConvertTo-HPOVServerProfileTemplate](convertto-hpovserverprofiletemplate.md)
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
* [Save-HPOVServerProfile](save-hpovserverprofile.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)
* [Update-HPOVServerProfile](update-hpovserverprofile.md)
