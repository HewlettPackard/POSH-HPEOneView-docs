---
description: Get configured Authentication Directories
---

# Get-OVLdapDirectory

## Syntax

```powershell
Get-OVLdapDirectory
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Get-OVLdapDirectory
    [-Export <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will retrieve the configured authentication directory(ies) configured on the appliance.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVLdapDirectory

Appliance    Name    Type Root              Search Context         Directory Servers
---------    ----    ---- ----              --------------         -----------------
MyAppliance1 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1.. {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance1 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2.. {dc1.domain2.com:636, 10.1.2.1:636}
MyAppliance2 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1.. {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance2 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2.. {dc1.domain2.com:636, 10.1.2.1:636}
```

View the configured authentication directories, for all connected appliances.

###  Example 2 

```powershell
Get-OVLdap -export -save c:\directory
```

Export the Global Directory Configuration settings.

## Parameters

### -Name &lt;String&gt;

The specific authentication directory name.

| Aliases | directory, domain |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Export &lt;String&gt;

Export the configured directories to individual files.

| Aliases | x |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]"
    Authentication Directory settings object
    

=== "System.Collections.ArrayList"
    Multiple Authentication Directory settings objects
    

## Related Links

* [New-OVLdapDirectory](new-ovldapdirectory.md)
* [Remove-OVLdapDirectory](remove-ovldapdirectory.md)
