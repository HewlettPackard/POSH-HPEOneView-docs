---
description: Add a new LDAP Directory Server.
---

# Add-HPOVLdapServer

## Syntax

```text
Add-HPOVLdapServer
    [-InputObject] <Object>
    [-Hostname] <String>
    [-Username] <String>
    [-SSLPort <Int32>]
    [-Certificate <Object>]
    [-Password <Object>]
    [-TrustLeafCertificate]
    [<CommonParameters>]
```

```text
Add-HPOVLdapServer
    [-InputObject] <Object>
    [-Hostname] <String>
    [-Credential <PSCredential>]
    [-SSLPort <Int32>]
    [-Certificate <Object>]
    [-TrustLeafCertificate]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Add-HPOVLdapServer
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will add a new LDAP Directory Server to an existing authentication directory.

## Examples

### Example 1

```text
Get-HPOVLdapDirectory -Name MyDirectory | Add-HPOVLdapServer -Name servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
```

Add a new LDAP Directory server.

## Parameters

### -InputObject &lt;Object&gt;

The LDAP Directory Object from `Get-HPOVLdapDirectory`.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

Aliases \[-Name\] Directory server name or IP Address to add.

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SSLPort &lt;Int32&gt;

Aliases \[-port\] Directory Server"s LDAP SSL Port.

| Aliases | port |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `636` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Certificate &lt;Object&gt;

Aliases \[-cert\] Directory Server SSL Certificate, either location to Base64 Cert or `multi-line` string value. If omitted, the CMDLET will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

| Aliases | cert |
| :--- | :--- |
| Required? | False |
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

### -TrustLeafCertificate &lt;SwitchParameter&gt;

When adding a new LDAP directory server, the certificate may not be trusted. Use this switch to force trust the certificate. Or, use the `Add-HPOVApplianceTrustedCertificate` to add the enterprise issuing certificate authority"s certificate.

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

* [New-HPOVLdapServer](new-hpovldapserver.md)
* [Remove-HPOVLdapServer](remove-hpovldapserver.md)

