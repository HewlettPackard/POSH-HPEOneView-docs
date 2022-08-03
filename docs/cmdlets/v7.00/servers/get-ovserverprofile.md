---
description: Retrieve Server Profile resource(s).
---

# Get-OVServerProfile

## Syntax

```powershell
Get-OVServerProfile
    [-Name] <String>
    [-NonCompliant]
    [-Unassigned]
    [-InputObject <Object>]
    [-Label <String>]
    [-Scope <Object>]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Get-OVServerProfile
    [-export]
    [-location] <String>
    [-Name] <String>
    [-Unassigned]
    [-InputObject <Object>]
    [-Label <String>]
    [-Scope <Object>]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Get-OVServerProfile
    [-Detailed]
    [-Name] <String>
    [-Label <String>]
    [-Scope <Object>]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will obtain a collection of Server Profile resources, or a specific Server Profile the specified name. It returns all aspects of the Server Profile.
    
This will also provide the ability to export Server Profile objects to their own JSON encoded file.  All appliance unique properties (minus the Server Hardware Type, Enclosure Group, and Connection Network assignment) are removed.  Connection layout, assigned addresses, networks, bandwidth, BIOS, Boot Order, Firmware settings will all be retained.  Assigned Address types will change from Virtual to UserDefined in order to retain their assignment.

## Examples

###  Example 1 

```powershell
Get-OVServerProfile 
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Profile 11              True              True Encl1, bay 11 Normal
Profile 12             False             False Encl1, bay 12 Normal
Profile 13             False             False Encl1, bay 13 Normal
Profile 14             False             False Encl1, bay 14 Normal
Profile 15             False             False Encl1, bay 15 Normal
Profile 16             False             False Encl1, bay 16 Normal
Test 1                 False             False Unassigned    Normal
test 2                 False             False Encl1, bay 3  Normal
test 3                 False             False Unassigned    Normal
```

Generate a list of all server profiles.

###  Example 2 

```powershell
$profile = Get-OVServerProfile -Name "SA"
```

Return the server profile resource with name "SA".

###  Example 3 

```powershell
$profiles = Get-OVServerProfile -Name profile*
```

Return server profile resources that match "profile*".

###  Example 4 

```powershell
Get-OVServerProfile -name "test 1" -list
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Test 1                 False             False Unassigned    Normal
```

Generate a report of a specific server profile.

###  Example 5 

```powershell
Get-OVServerProfile -unassigned
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Test 1                 False             False Unassigned    Normal
test 3                 False             False Unassigned    Normal
```

Generate a list of all Unassigned server profiles.

###  Example 6 

```powershell
Get-OVServerProfile -export -location c:\profiles
```

Save all Server Profile objects to their own backup file to C:\profiles.

###  Example 7 

```powershell
Get-OVServerProfile -name Profile1 -export -location c:\profiles
```

Save Profile1 Server Profile object to its own backup file in C:\profiles.

## Parameters

### -InputObject &lt;Object&gt;

Profile a Server Hardware or Server Profile Template resource, and the associated Server Hardware will be returned.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

The name of the server profile resource to be returned.  All server profile resources will be returned if omitted.  Supports * wildcard character.

| Aliases | profile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Detailed &lt;SwitchParameter&gt;

Display detailed report list of Server Profiles

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NonCompliant &lt;SwitchParameter&gt;

Return collection of Server Profiles that are not compliant with their template.  Will not return Server Profiles that have no Template association.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Unassigned &lt;SwitchParameter&gt;

Optional parameter that can be included with the List switch parameter to only display unassigned Server Profiles.  Can also be combined with the name parameter for Server Profile wildcard name search.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

* AllResources
* AllResourcesInScope
* `[HPEOneView.Appliance.ScopeCollection]`
* `[HPEOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -export &lt;SwitchParameter&gt;

Switch used to export Server Profile object to JSON encoded file.

| Aliases | x |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -location &lt;String&gt;

Location where to save the Server Profile

| Aliases | save |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_



## Related Links

* [Convert-OVServerProfile](convert-ovserverprofile.md)
* [Convert-OVServerProfileTemplate](convert-ovserverprofiletemplate.md)
* [ConvertTo-OVServerProfileTemplate](convertto-ovserverprofiletemplate.md)
* [Copy-OVServerProfile](copy-ovserverprofile.md)
* [Disable-OVMaintenanceMode](disable-ovmaintenancemode.md)
* [Enable-OVMaintenanceMode](enable-ovmaintenancemode.md)
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
* [Get-OVServerOneTimeBoot](get-ovserveronetimeboot.md)
* [Set-OVServerOneTimeBoot](set-ovserveronetimeboot.md)
