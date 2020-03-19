---
description: List Directory Group role assignment.
---

# Get-HPOVLdapGroup

## Syntax

```text
Get-HPOVLdapGroup
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Get-HPOVLdapGroup
    [-Export <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

    * Active Directory
    * OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will display the configured directory groups on the appliance, and display their assigned role(s).

{% hint style="info" %}
Minimum required privileges: Read-
{% endhint %}
only
## Examples

###  Example 1 

```text
Get-HPOVLdapGroup

Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}
My Directory Group2               domain1                                 {Network administrator} 
```

Get list of configured Directory Groups.

###  Example 2 

```text
Get-HPOVLdapGroup -Name "My Directory Group1"

Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}
```

Display "My Directroy Group1" and the assigned roles.

###  Example 3 

```text
Get-HPOVLdapGroup -export C:\dir\directorygroups.json
```

Export configured Directory Groups to c:\dir\directorygroups.json

## Parameters

### -Name &lt;String&gt;

Configured Directory Group Name. If omitted, all configured Directory Groups will be displayed.

| Aliases | group, GroupName |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Export &lt;String&gt;

Export JSON content to file

| Aliases | x |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.AuthDirectoryGroupRoleMapping [System.Management.Automation.PSCustomObject]**_

Configured Directory Group role mapping

_**System.Collections.ArrayList**_

Multiple configured Directory Group role mappings

## Related Links

* [New-HPOVLdapGroup](new-hpovldapgroup.md)
* [Remove-HPOVLdapGroup](remove-hpovldapgroup.md)
* [Set-HPOVLdapGroupRole](set-hpovldapgrouprole.md)
* [Show-HPOVLdapGroups](show-hpovldapgroups.md)
