---
description: Configure appliance two-factor authentication settings.
---

# Set-OVApplianceTwoFactorAuthentication

## Syntax

```powershell
Set-OVApplianceTwoFactorAuthentication
    [-SmartCardLoginOnly <Bool>]
    [-EnableEmergencyLocalLogin <Bool>]
    [-EmergencyLoginAllowType <String>]
    [-SubjectAlternativeNamePatterns <Array>]
    [-SubjectPatterns <String>]
    [-ValidationOids <Array>]
    [-DirectoryDomainType <String>]
    [-DirectoryDomain <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Enabling two-factor authentication allows you to use smart cards ï¿½ for example, Common Access Cards (CAC), or Personal Identity Verification (PIV) cards ï¿½ to authenticate within HPE OneView. The client certificate embedded in the smart card is presented to HPE OneView by the library. The client certificate must be signed by a root or intermediate Certificate Authority (CA) that has been previously imported into the HPE OneView appliance. The appliance authenticates the client certificate to validate that the user name specified in the certificate is that of a valid user recognized by the directory server configuration in HPE OneView.

When two-factor authentication is enabled, HPE OneView uses a Microsoft Active Directory service account set up and owned by the user to access an Active Directory entry for the user, rather than using an account associated with the user name received during first time login.

Use this Cmdlet to configure two factor authentication state of the connected appliance.  An Active Directory authentication directory must be configured, with a Service Account, and the root or issuing certificate authority Base64 certificate must be uploaded to appliance.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Set-OVApplianceTwoFactorAuthentication -ValidationOids @(@{"1.3.6.1.4.1.311.20.2.2" = "Smart Card Logon"; "1.3.6.1.5.5.7.3.2" = "Client Authentication"})
```

Configured two-factory authentication using default validation OIDs.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

Override confirmation prompt when using `-SmartCardLoginOnly` parameter.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DirectoryDomain &lt;String&gt;

Selection values for the "Manually specify" control

In the fields of a certificate, the domain components are usually represented by multiple "DC=" entries. A domain BaseDN, like `[abc.example.com]`, is represented by the three entries "DC=abc", "DC=example", and "DC=com".

Use "example.com" as the domain to use when searching for users in an enterprise directory:

`[example.com]`

Configure HPE OneView to look in multiple certificate locations for domain information. HPE OneView tries each item in order until it finds a successful user entry in the enterprise directory.

`[Subject.DC]`=(.*),Issuer.DC=(.*),SubjectAlternativeName.DirName.DC=(.*),groupA.example.com,groupB.example.com

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DirectoryDomainType &lt;String&gt;

The Directory domain control allows you to specify which domain or directory to use when searching for the user in an enterprise directory. The domain name must match the Base DN of at least one of the directories added to HPE OneView. The options include:

* Subject
* Subject Alternative Name
* Issuer
* Manually specify

After you select which certificate field HPE OneView must use to extract the domain name, the name is extracted from the DC attributes specified therein. The DC=(.*) configuration extracts the first domain component from the field. The administrator can only specify DC=(.*) here.

If you select Manually specify, you can enter a specific domain using dot notation, or an alternate certificate location from which to retrieve domain information to use when querying the directory. You can specify multiple entries or domains in the configuration using ",". Additionally, you can specify the subject, subject alternative name and Issuer DC attributes to support multiple card configuration.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EmergencyLoginAllowType &lt;String&gt;

[DEPRECATED]  This parameter is now part of both Disable-OVLdapLocalLogin and Set-OVLdapDefaultDirectory.

Allow emergency login access if the configured authentication directory(ies) are unavailable.  Highest security is obtained by restricting the local administrator account to "ApplianceConsoleOnly". Choose "NetworkAndApplianceConsole" to allow emergency access via the network.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableEmergencyLocalLogin &lt;Bool&gt;

[DEPRECATED]  This parameter is now part of both Disable-OVLdapLocalLogin and Set-OVLdapDefaultDirectory.

Boolean value to enable ($true) or disable ($false) emergency local login.  Must be set to $false when `-SmartCardLoginOnly` is used.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SmartCardLoginOnly &lt;Bool&gt;

Use to enforce smart card authentication only.  Enabling Smart card only login disables the authentication using a user name and password.  User name and password login is still available through the appliance console.  You will be prompted to confirm the use of this parameter.  Use the `-Confirm` to override prompt.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SubjectAlternativeNamePatterns &lt;Array&gt;

By default, the attribute entry associated with the "Subject Alternative Name" item, within the "Certificate owner" entry, contains `[OtherName.UPN]`=(.*). This tells HPE OneView to extract the user name from the "OtherName.UPN" attribute within the Subject Alternative Name field of the certificate on the smart card. This is the user name that HPE OneView uses to query the enterprise directory.

You can edit the value to enable HPE OneView to search for the user name within other additional attributes within Subject Alternative Name. The options include: 
* `[OtherName.UPN]`=(.*) 
    The Microsoft certificate viewer displays "OtherName.UPN" underSubject Alternative Name as: 
        Other Name:
            Principal Name=John.Doe@test.com

* `[OtherName.RFC]`822Name=(.*) 
    The Microsoft certificate viewer displays `[OtherName.RFC]`822Name as:
         Other Name:
            RFC822 Name=John.Doe@test.com

* RFC822Name=(.*) 
    The Microsoft certificate viewer displays RFC822Name as: 
        RFC822 Name=John.Doe@test.com

* DirName=(.*) 
     The Microsoft certificate viewer displays "DirName" under Subject Alternative Name as: 
        Directory Address:
            CN=John Doe
            OU=Test Group
            O=Test Org
            C=US
            DC=test
            DC=com

Use a comma-separated list to include multiple values in the entry field, allowing HPE OneView to search multiple Subject Alternative Name attributes for a valid user name.

???+ info
    You can instruct HPE OneView to search for the user name within the attributes of the "Subject" field of the smart card certificate (either in addition to, or instead of, searching within "Subject Alternative Name" attributes). See subject entry in the "Certificate owner" field for details.


Subject Alternative Name multiple attribute entry example
`[OtherName.UPN]`=(.*),OtherName.RFC822Name=(.*),RFC822Name=(.*),DirName=(.*)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SubjectPatterns &lt;String&gt;

By default, the attribute entry box associated with the "Subject" entry, within the "Certificate owner" field, contains CN=(.*). With this value, HPE OneView extracts the first user name it encounters within a "CN" attribute within the "Subject" field in the smart card certificate. You can edit the regular expression for the "CN" attribute using regular expressions to refine the list of acceptable values.
You can edit the value if you need HPE OneView to search for the user name within other additional attributes within the certificate "Subject" field. The choices include: 

* CN=(.*) 
* E=(.*) 
* UID=(.*) 
* DN=(.*) 
Microsoft Active Directory users must note that the DN is extracted as an aggregate of the subject attributes from the certificate. This should match the DN value configured for the user in the Active Directory. If this is not an exact match, the login operation fails. 

Use a comma separated list to include multiple values in the entry field, allowing HPE OneView to search multiple Subject attributes for a valid user name. 

???+ info
    You can instruct HPE OneView to search for the user name within the attributes of the "Subject" field of the smart card certificate (either in addition to, or instead of, searching within "Subject Alternative Name" attributes). 


Subject multiple attribute entry example
* CN=(.*),E=(.*),UID=(.*),DN=(.*) 

Variations for the CN attribute: examples
    To match only user names starting with "J_" use CN=(^J_.*$) 
    To match names in "LastName, FirstName" format use CN=(^[a-zA-Z]*, [a-zA-Z]+$) 
    To match user names containing only numbers CN=(^[0-9]+$) 

???+ info
    This is applicable when there are multiple CN attributes configured in a certificate and the user wants to specify a specific attribute rather than the first available in the CN attribute. It is recommended to use patterns that begin with "^" and ends with "$" so that the system can perform an exact match. 


| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ValidationOids &lt;Array&gt;

This parameter allows you to configure who can access HPE OneView by specifying the Key Usage, Extended Key Usage and Policy ID Object Identifiers (OIDs) that must be present within a smart card certificate in order for the user associated with the card to be authenticated. You can configure up to five OID combinations to accommodate different groups of users within your organization.

By default, one combination is configured, containing the OID combination Smart Card Logon (1.3.6.1.4.1.311.20.2.2), Client Authentication (1.3.6.1.5.5.7.3.2). This combination requires the certificate on the smart card to be configured to allow the certificate to be used for smart card logon and for client authentication. It should work for most installations. You can edit this field to opt for a different combination of OIDs, or to add additional OIDs. A maximum of ten OIDs can be configured in a single string.

???+ info
    If you specify multiple OID combinations and one is a super-set of another, configure the more restrictive combination first.


| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    Appliance global security settings.
    

## Related Links

* [Disable-OVApplianceTwoFactorAuthentication](disable-ovappliancetwofactorauthentication.md)
* [Get-OVApplianceTwoFactorAuthentication](get-ovappliancetwofactorauthentication.md)
