---
description: List Global Authentication Directory settings.
---

# Get-OVLdap

## Syntax

```powershell
Get-OVLdap
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Get-OVLdap
    [-Export]
    [-Save] <String>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will display the global authentication directory settings configured on the appliance. It will show if local logins are enabled, default authentication directory name, and configured authentication directory names.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVLdap
Allow Local Login Default Directory Configured Directories
----------------- ----------------- ----------------------
True              domain1           {domain1, domain2}
True              domain2           {domain1, domain2}
```

View the Global Authentication Directory configuration for all connected appliances.

###  Example 2 

```powershell
Get-OVLdap -export -save c:\directory
```

Export the Global Authentication Directory configuration settings.

## Parameters

### -Export &lt;SwitchParameter&gt;

Export the configured directories to individual files.

| Aliases | x |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Save &lt;String&gt;

Directory where the exported configured directories will be saved to.  A filename of "{appliance_name}_globalSettings.json" will be created.

| Aliases | location |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

=== "HPEOneView.Appliance.AuthGlobalDirectoryConfiguration [System.Management.Automation.PSCustomObject]"
    Global Authentication Settings object
    

## Related Links

* [Add-OVLdapServer](add-ovldapserver.md)
* [Disable-OVLdapLocalLogin](disable-ovldaplocallogin.md)
* [Enable-OVLdapLocalLogin](enable-ovldaplocallogin.md)
* [Get-OVLdapDirectory](get-ovldapdirectory.md)
* [Get-OVLdapGroup](get-ovldapgroup.md)
* [New-OVLdapDirectory](new-ovldapdirectory.md)
* [New-OVLdapGroup](new-ovldapgroup.md)
* [New-OVLdapServer](new-ovldapserver.md)
* [Remove-OVLdapDirectory](remove-ovldapdirectory.md)
* [Remove-OVLdapGroup](remove-ovldapgroup.md)
* [Remove-OVLdapServer](remove-ovldapserver.md)
* [Set-OVLdapDefaultDirectory](set-ovldapdefaultdirectory.md)
* [Set-OVLdapGroupRole](set-ovldapgrouprole.md)
* [Show-OVLdapGroups](show-ovldapgroups.md)
