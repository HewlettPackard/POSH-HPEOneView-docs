---
description: Add a new LDAP Directory Server.
---

# Add-HPOVLdapServer

## HPE OneView 5.00 Library

### Syntax

```text
Add-HPOVLdapServer [-InputObject] <Object> [-Hostname] <String> [-Username] <String> [[-SSLPort] <Int32>] [[-Certificate] <Object>] [[-Password] <Object>] [[-TrustLeafCertificate] <SwitchParameter>] [<CommonParameters>]
```

```text
Add-HPOVLdapServer [-InputObject] <Object> [-Hostname] <String> [-Credential] <PSCredential> [[-SSLPort] <Int32>] [[-Certificate] <Object>] [[-TrustLeafCertificate] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Detailed Description

 This Cmdlet will add a new LDAP Directory Server to an existing authentication directory.

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one HPOneView.Appliance.Connection object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Certificate &lt;Object&gt; 

Directory Server SSL Certificate, either location to Base64 Cert or multi-line string value. If omitted, the CMDLET will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

| Aliases | cert |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

Directory server name or IP Address to add.

| Aliases | Name |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The LDAP Directory Object from Get-HPOVLdapDirectory.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt; 

{% hint style="warning" %}
The parameter is obsolete.  Please use the -Credential parameter.
{% endhint %}

Directory User account password in order to validate LDAP configuration. Can be System.String or SecureString object.

| Aliases | p, pass |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SSLPort &lt;Int32&gt;

Directory Servers LDAP SSL Port.

| Aliases | port |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | 636 |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -TrustLeafCertificate &lt;SwitchParameter&gt; 

When adding a new LDAP directory server, the certificate may not be trusted. Use this switch to force trust the certificate. Or, use the [`Add-HPOVApplianceTrustedCertificate`](../appliance/add-hpovappliancetrustedcertificate.md) to add the enterprise issuing certificate authority"s certificate.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

{% hint style="warning" %}
The parameter is obsolete.  Please use the -Credential parameter.
{% endhint %}

Directory Username to authenticate with in order to validate LDAP configuration.

| Aliases | u, user |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Authentication Directory object that will have the LDAP Server added to.

### Return Values

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Updated Authentication Directory.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdapDirectory -Name MyDirectory | Add-HPOVLdapServer -Name servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
```

 Add a new LDAP Directory server. 

### Related Links 

* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer) 
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer) 

## HPE OneView 4.20 Library

### Syntax

```text
Add-HPOVLdapServer [-InputObject] <Object> [-Hostname] <String> [-Username] <String> [[-SSLPort] <Int32>] [[-Certificate] <Object>] [[-Password] <Object>] [[-TrustLeafCertificate] <SwitchParameter>] [<CommonParameters>]
```

```text
Add-HPOVLdapServer [-InputObject] <Object> [-Hostname] <String> [-Credential] <PSCredential> [[-SSLPort] <Int32>] [[-Certificate] <Object>] [[-TrustLeafCertificate] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Detailed Description

 This Cmdlet will add a new LDAP Directory Server to an existing authentication directory.

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one HPOneView.Appliance.Connection object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Certificate &lt;Object&gt; 

Directory Server SSL Certificate, either location to Base64 Cert or multi-line string value. If omitted, the CMDLET will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

| Aliases | cert |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

Directory server name or IP Address to add.

| Aliases | Name |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The LDAP Directory Object from Get-HPOVLdapDirectory.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt; 

Directory User account password in order to validate LDAP configuration. Can be System.String or SecureString object.

| Aliases | p, pass |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SSLPort &lt;Int32&gt;

Directory Servers LDAP SSL Port.

| Aliases | port |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | 636 |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -TrustLeafCertificate &lt;SwitchParameter&gt; 

When adding a new LDAP directory server, the certificate may not be trusted. Use this switch to force trust the certificate. Or, use the [`Add-HPOVApplianceTrustedCertificate`](../appliance/add-hpovappliancetrustedcertificate.md) to add the enterprise issuing certificate authority"s certificate.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

Directory Username to authenticate with in order to validate LDAP configuration.

| Aliases | u, user |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Authentication Directory object that will have the LDAP Server added to.

### Return Values

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Updated Authentication Directory.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdapDirectory -Name MyDirectory | Add-HPOVLdapServer -Name servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
```

 Add a new LDAP Directory server. 

### Related Links 

* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer) 
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer) 





## HPE OneView 4.10 Library

### Syntax

```text
Add-HPOVLdapServer [-InputObject] <Object> [-Hostname] <String> [-Username] <String> [[-SSLPort] <Int32>] [[-Certificate] <Object>] [[-Password] <Object>] [[-TrustLeafCertificate] <SwitchParameter>] [<CommonParameters>]
```

```text
Add-HPOVLdapServer [-InputObject] <Object> [-Hostname] <String> [-Credential] <PSCredential> [[-SSLPort] <Int32>] [[-Certificate] <Object>] [[-TrustLeafCertificate] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Detailed Description

 This Cmdlet will add a new LDAP Directory Server to an existing authentication directory.

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one HPOneView.Appliance.Connection object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Certificate &lt;Object&gt; 

Directory Server SSL Certificate, either location to Base64 Cert or multi-line string value. If omitted, the CMDLET will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

| Aliases | cert |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

Directory server name or IP Address to add.

| Aliases | Name |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The LDAP Directory Object from Get-HPOVLdapDirectory.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt; 

Directory User account password in order to validate LDAP configuration. Can be System.String or SecureString object.

| Aliases | p, pass |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SSLPort &lt;Int32&gt;

Directory Servers LDAP SSL Port.

| Aliases | port |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | 636 |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -TrustLeafCertificate &lt;SwitchParameter&gt; 

When adding a new LDAP directory server, the certificate may not be trusted. Use this switch to force trust the certificate. Or, use the [`Add-HPOVApplianceTrustedCertificate`](../appliance/add-hpovappliancetrustedcertificate.md) to add the enterprise issuing certificate authority"s certificate.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

Directory Username to authenticate with in order to validate LDAP configuration.

| Aliases | u, user |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Authentication Directory object that will have the LDAP Server added to.

### Return Values

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Updated Authentication Directory.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLdapDirectory -Name MyDirectory | Add-HPOVLdapServer -Name servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
```

 Add a new LDAP Directory server. 

### Related Links 

* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer) 
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer)



