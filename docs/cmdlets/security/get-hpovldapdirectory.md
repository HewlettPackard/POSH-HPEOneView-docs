---
description: Get configured Authentication Directories
---

# Get-HPOVLdapDirectory

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVLdapDirectory [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVLdapDirectory [[-Export] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will retrieve the configured authentication directory\(ies\) configured on the appliance.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Export &lt;String&gt; 

Export the configured directories to individual files.

| Aliases | x |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The specific authentication directory name.

| Aliases | directory, domain |
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

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Authentication Directory settings object

_**System.Collections.ArrayList**_

Multiple Authentication Directory settings objects

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdapDirectory

Appliance    Name    Type Root              Search Context         Directory Servers
---------    ----    ---- ----              --------------         -----------------
MyAppliance1 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1.. {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance1 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2.. {dc1.domain2.com:636, 10.1.2.1:636}
MyAppliance2 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1.. {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance2 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2.. {dc1.domain2.com:636, 10.1.2.1:636}

```

View the configured authentication directories, for all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLdap -export -save c:\directory
```

Export the Global Directory Configuration settings. 

### Related Links 

* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory) 
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVLdapDirectory [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVLdapDirectory [[-Export] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will retrieve the configured authentication directory\(ies\) configured on the appliance.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Export &lt;String&gt; 

Export the configured directories to individual files.

| Aliases | x |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The specific authentication directory name.

| Aliases | directory, domain |
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

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Authentication Directory settings object

_**System.Collections.ArrayList**_

Multiple Authentication Directory settings objects

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdapDirectory

Appliance    Name    Type Root              Search Context         Directory Servers
---------    ----    ---- ----              --------------         -----------------
MyAppliance1 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1.. {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance1 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2.. {dc1.domain2.com:636, 10.1.2.1:636}
MyAppliance2 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1.. {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance2 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2.. {dc1.domain2.com:636, 10.1.2.1:636}

```

View the configured authentication directories, for all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLdap -export -save c:\directory
```

Export the Global Directory Configuration settings. 

### Related Links 

* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory) 
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVLdapDirectory [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVLdapDirectory [[-Export] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will retrieve the configured authentication directory\(ies\) configured on the appliance.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Export &lt;String&gt; 

Export the configured directories to individual files.

| Aliases | x |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The specific authentication directory name.

| Aliases | directory, domain |
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

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Authentication Directory settings object

_**System.Collections.ArrayList**_

Multiple Authentication Directory settings objects

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdapDirectory

Appliance    Name    Type Root              Search Context         Directory Servers
---------    ----    ---- ----              --------------         -----------------
MyAppliance1 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1.. {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance1 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2.. {dc1.domain2.com:636, 10.1.2.1:636}
MyAppliance2 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1.. {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance2 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2.. {dc1.domain2.com:636, 10.1.2.1:636}

```

View the configured authentication directories, for all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLdap -export -save c:\directory
```

Export the Global Directory Configuration settings. 

### Related Links 

* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory) 
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory) 



