---
description: List Directory Group role assignment.
---

# Get-HPOVLdapGroup

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVLdapGroup [-Name] <String> [-ApplianceConnection] <Object> [<CommonParameters>]
```

```text
Get-HPOVLdapGroup [-Export] <String> [-ApplianceConnection] <Object> [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will display the configured directory groups on the appliance, and display their assigned role\(s\).

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Export &lt;String&gt; 

Export JSON content to file

| Aliases | x |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Configured Directory Group Name. If omitted, all configured Directory Groups will be displayed.

| Aliases | group, GroupName |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.AuthDirectoryGroupRoleMapping \[System.Management.Automation.PSCustomObject\]**_

Configured Directory Group role mapping

_**System.Collections.ArrayList**_

Multiple configured Directory Group role mappings

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdapGroup

Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}
My Directory Group2               domain1                                 {Network administrator} 

```

 Get list of configured Directory Groups.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLdapGroup -Name "My Directory Group1"

Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}

```

Display "My Directroy Group1" and the assigned roles.

```text
 -------------------------- EXAMPLE 3 --------------------------
Get-HPOVLdapGroup -export C:\dir\directorygroups.json
```

Export configured Directory Groups to c:\dir\directorygroups.json

### Related Links 

* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup) 
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup) 
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole) 
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVLdapGroup [-Name] <String> [-ApplianceConnection] <Object> [<CommonParameters>]
```

```text
Get-HPOVLdapGroup [-Export] <String> [-ApplianceConnection] <Object> [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will display the configured directory groups on the appliance, and display their assigned role\(s\).

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Export &lt;String&gt; 

Export JSON content to file

| Aliases | x |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Configured Directory Group Name. If omitted, all configured Directory Groups will be displayed.

| Aliases | group, GroupName |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.AuthDirectoryGroupRoleMapping \[System.Management.Automation.PSCustomObject\]**_

Configured Directory Group role mapping

_**System.Collections.ArrayList**_

Multiple configured Directory Group role mappings

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdapGroup

Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}
My Directory Group2               domain1                                 {Network administrator} 

```

 Get list of configured Directory Groups.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLdapGroup -Name "My Directory Group1"

Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}

```

Display "My Directroy Group1" and the assigned roles.

```text
 -------------------------- EXAMPLE 3 --------------------------
Get-HPOVLdapGroup -export C:\dir\directorygroups.json
```

Export configured Directory Groups to c:\dir\directorygroups.json

### Related Links 

* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup) 
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup) 
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole) 
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVLdapGroup [-Name] <String> [-ApplianceConnection] <Object> [<CommonParameters>]
```

```text
Get-HPOVLdapGroup [-Export] <String> [-ApplianceConnection] <Object> [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will display the configured directory groups on the appliance, and display their assigned role\(s\).

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Export &lt;String&gt; 

Export JSON content to file

| Aliases | x |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Configured Directory Group Name. If omitted, all configured Directory Groups will be displayed.

| Aliases | group, GroupName |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.AuthDirectoryGroupRoleMapping \[System.Management.Automation.PSCustomObject\]**_

Configured Directory Group role mapping

_**System.Collections.ArrayList**_

Multiple configured Directory Group role mappings

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdapGroup

Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}
My Directory Group2               domain1                                 {Network administrator} 

```

 Get list of configured Directory Groups.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLdapGroup -Name "My Directory Group1"

Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}

```

Display "My Directroy Group1" and the assigned roles.

```text
 -------------------------- EXAMPLE 3 --------------------------
Get-HPOVLdapGroup -export C:\dir\directorygroups.json
```

Export configured Directory Groups to c:\dir\directorygroups.json

### Related Links 

* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup) 
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup) 
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole) 
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups) 



