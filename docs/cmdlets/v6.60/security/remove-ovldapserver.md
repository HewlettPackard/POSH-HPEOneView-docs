---
description: Remove an existing LDAP Directory Server.
---

# Remove-OVLdapServer

## Syntax

```powershell
Remove-OVLdapServer
    [-InputObject] <Object>
    [-DirectoryServerName] <String>
    [-Username] <String>
    [-Password <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Remove-OVLdapServer
    [-InputObject] <Object>
    [-DirectoryServerName] <String>
    [-Credential <PSCredential>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will remove an existing LDAP Directory Server resource from an existing LDAP Directory.

## Examples

###  Example 1 

```powershell
Get-OVLdapDirectory -Name MyDirectory | Remove-OVLdapServer -DirectoryServerName servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
```

Remove the specified LDAP Directory server from "MyDirectory".  Will be prompted for confirmation.

## Parameters

### -InputObject &lt;Object&gt;

The LDAP Directory Object from Get-OVLdapDirectory.

| Aliases | Directory |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -DirectoryServerName &lt;String&gt;

Directory server name.

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Directory Username to authenticate with in order to validate LDAP configuration.

| Aliases | u, user |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

Directory User account password in order to validate LDAP configuration.  Can be `[System.String]` or `[System.Security.SecureString]` object.

| Aliases | p, pass |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

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

_**HPEOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

Authentication Directory object that will have the LDAP Server added to.

## Return Values

_**HPEOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

Updated Authentication Directory.

## Related Links

* [Add-OVLdapServer](add-ovldapserver.md)
* [New-OVLdapServer](new-ovldapserver.md)
