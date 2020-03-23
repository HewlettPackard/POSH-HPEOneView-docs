---
description: Remove an existing LDAP Directory Server.
---

# Remove-HPOVLdapServer

## Syntax

```text
Remove-HPOVLdapServer
    [-InputObject] <Object>
    [-DirectoryServerName] <String>
    [-Username] <String>
    [-Password <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Remove-HPOVLdapServer
    [-InputObject] <Object>
    [-DirectoryServerName] <String>
    [-Credential <PSCredential>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will remove an existing LDAP Directory Server resource from an existing LDAP Directory.

## Examples

### Example 1

```text
Get-HPOVLdapDirectory -Name MyDirectory | Remove-HPOVLdapServer -DirectoryServerName servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
```

Remove the specified LDAP Directory server from "MyDirectory". Will be prompted for confirmation.

## Parameters

### -InputObject &lt;Object&gt;

The LDAP Directory Object from `Get-HPOVLdapDirectory`.

| Aliases | Directory |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -DirectoryServerName &lt;String&gt;

Aliases \[-Name\] Directory server name.

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Aliases \[-u\] Directory Username to authenticate with in order to validate LDAP configuration.

| Aliases | u, user |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

Aliases \[-p\] Directory User account password in order to validate LDAP configuration. Can be `[System.String]` or SecureString object.

| Aliases | p, pass |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases \[-Appliance\]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

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

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Authentication Directory object that will have the LDAP Server added to.

## Return Values

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Updated Authentication Directory.

## Related Links

* [Add-HPOVLdapServer](add-hpovldapserver.md)
* [New-HPOVLdapServer](new-hpovldapserver.md)

