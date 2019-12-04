---
description: List Global Authentication Directory settings.
---

# Get-HPOVLdap

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVLdap [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVLdap [[-Export] <SwitchParameter>] [-Save] <String> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will display the global authentication directory settings configured on the appliance. It will show if local logins are enabled, default authentication directory name, and configured authentication directory names.

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

#### -Export &lt;SwitchParameter&gt; 

Export the configured directories to individual files.

| Aliases | x |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Save &lt;String&gt; 

Directory where the exported configured directories will be saved to. A filename of "{appliance\_name}\_globalSettings.json" will be created.

| Aliases | location |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.AuthGlobalDirectoryConfiguration \[System.Management.Automation.PSCustomObject\]**_

Global Authentication Settings object

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdap
Allow Local Login Default Directory Configured Directories
----------------- ----------------- ----------------------
True              domain1           {domain1, domain2}
True              domain2           {domain1, domain2}

```

View the Global Authentication Directory configuration for all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLdap -export -save c:\directory
```

Export the Global Authentication Directory configuration settings. 

### Related Links 

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer) 
* [Disable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLdapLocalLogin) 
* [Enable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLdapLocalLogin) 
* [Get-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapDirectory) 
* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup) 
* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory) 
* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup) 
* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer) 
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory) 
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup) 
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer) 
* [Set-HPOVLdapDefaultDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapDefaultDirectory) 
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole) 
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVLdap [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVLdap [[-Export] <SwitchParameter>] [-Save] <String> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will display the global authentication directory settings configured on the appliance. It will show if local logins are enabled, default authentication directory name, and configured authentication directory names.

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

#### -Export &lt;SwitchParameter&gt; 

Export the configured directories to individual files.

| Aliases | x |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Save &lt;String&gt; 

Directory where the exported configured directories will be saved to. A filename of "{appliance\_name}\_globalSettings.json" will be created.

| Aliases | location |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.AuthGlobalDirectoryConfiguration \[System.Management.Automation.PSCustomObject\]**_

Global Authentication Settings object

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdap
Allow Local Login Default Directory Configured Directories
----------------- ----------------- ----------------------
True              domain1           {domain1, domain2}
True              domain2           {domain1, domain2}

```

View the Global Authentication Directory configuration for all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLdap -export -save c:\directory
```

Export the Global Authentication Directory configuration settings. 

### Related Links 

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer) 
* [Disable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLdapLocalLogin) 
* [Enable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLdapLocalLogin) 
* [Get-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapDirectory) 
* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup) 
* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory) 
* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup) 
* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer) 
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory) 
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup) 
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer) 
* [Set-HPOVLdapDefaultDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapDefaultDirectory) 
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole) 
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVLdap [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVLdap [[-Export] <SwitchParameter>] [-Save] <String> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will display the global authentication directory settings configured on the appliance. It will show if local logins are enabled, default authentication directory name, and configured authentication directory names.

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

#### -Export &lt;SwitchParameter&gt; 

Export the configured directories to individual files.

| Aliases | x |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Save &lt;String&gt; 

Directory where the exported configured directories will be saved to. A filename of "{appliance\_name}\_globalSettings.json" will be created.

| Aliases | location |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.AuthGlobalDirectoryConfiguration \[System.Management.Automation.PSCustomObject\]**_

Global Authentication Settings object

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdap
Allow Local Login Default Directory Configured Directories
----------------- ----------------- ----------------------
True              domain1           {domain1, domain2}
True              domain2           {domain1, domain2}

```

View the Global Authentication Directory configuration for all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLdap -export -save c:\directory
```

Export the Global Authentication Directory configuration settings. 

### Related Links 

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer) 
* [Disable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLdapLocalLogin) 
* [Enable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLdapLocalLogin) 
* [Get-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapDirectory) 
* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup) 
* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory) 
* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup) 
* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer) 
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory) 
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup) 
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer) 
* [Set-HPOVLdapDefaultDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapDefaultDirectory) 
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole) 
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups) 



