---
description: Define LDAP Directory Server object.
---

# New-OVLdapServer

## Syntax

```powershell
New-OVLdapServer
    [-Hostname] <String>
    [-SSLPort] <Int32>
    [-Certificate] <Object>
    [-TrustLeafCertificate]
    [<CommonParameters>]
```

## Description

A helper Cmdlet that will define an LDAP Directory Server object to be used with the New-OVLdapDirectory Cmdlet.

## Examples

###  Example 1 

```powershell
$ServerA = New-OVLdapServer -Name servera.domain.com -Certificate C:\dir\servera.cer
```

Define a new Directory Server, ServerA, specifying the Base64 Public Certificate and using the default LDAP SSL port 636.

###  Example 2 

```powershell
$ServerA = New-OVLdapServer -Name servera.domain.com -Port 2636 -Certificate C:\dir\servera.cer
```

Define a new Directory Server, ServerA, specifying the Base64 Public Certificate, using a custom LDAP SSL port.

###  Example 3 

```powershell
$dc1,$dc2 = "dc1.mydomain.com","dc2.mydomain.com" | New-OVLdapServer
```

Create two new authentication directory servers, with the Cmdlet retrieving the certificate directly from the auth servers.

## Parameters

### -Hostname &lt;String&gt;

Directory server name or IP Address to add.

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -SSLPort &lt;Int32&gt;

Directory Server"s LDAP SSL Port.

| Aliases | port |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 636 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Certificate &lt;Object&gt;

Directory Server SSL Certificate, either location to Base64 Cert or multiline string value.  If omitted, the Cmdlet will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

| Aliases | cert |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -TrustLeafCertificate &lt;SwitchParameter&gt;

Use to specify if the certificate should be explicitly trusted, like a self signed certificate or where the root or issuing certificate authority has not been added to the appliance trust store.

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

=== "System.String"
    Directory Server Name or IP Address
    

=== "System.Collections.ArrayList"
    Mutlple Directory Server Name or IP Address System.String values
    

## Return Values

=== "HPEOneView.Appliance.AuthDirectoryServer [System.Management.Automation.PSCustomObject]"
    New LDAP Server Resource Object to be used with New-OVLdapDirectory Cmdlet
    

## Related Links

* [Add-OVLdapServer](add-ovldapserver.md)
* [Remove-OVLdapServer](remove-ovldapserver.md)
