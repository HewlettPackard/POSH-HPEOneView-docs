---
description: Create a new appliance self signed Certificate.
---

# New-HPOVApplianceSelfSignedCertificate

## Syntax

```text
New-HPOVApplianceSelfSignedCertificate
    [-Country] <>
    [-State] <>
    [-Organization] <>
    [-CommonName] <>
    [-City] <>
    [-OrganizationalUnit] <>
    [-AlternativeName] <>
    [-ContactName] <>
    [-Email] <>
    [-Surname] <>
    [-GivenName] <>
    [-Initials] <>
    [-DNQualifier] <>
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

Use thid Cmdlet to create or recreate a self signed Certificate for the appliance.

## Examples

###  Example 1 

```text
$CSR = @{
>>     Country = "US";
>>  State = "California";
>>  City = "Palo Alto";
>>  Organization = "Hewlett-Packard";
>>  CommonName = "hpov.example.com";
>>  AlternativeName = "hpov.example.com,192.168.1.1,hpov"
>> }
>>
New-HPOVApplianceSelfSignedCertificate @CSR -ApplianceConnection Appliance.domain.com
```

Generate self signed Certificate for the appliance.

## Parameters

### -Country &lt;&gt;

The country code in either Full English or `ISO3166-2` `two-character` format, is a required entry and must contain only two letters.

| Aliases | C |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -State &lt;&gt;

The state or province is a required entry, can contain up to 128 characters.

| Aliases | ST, Province |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -City &lt;&gt;

The city or locality is a required entry, can contain up to 128 characters.

| Aliases | L, Locality |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Organization &lt;&gt;

The organization name is a required entry, can contain up to 64 characters.

| Aliases | O |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -CommonName &lt;&gt;

The common name is a required entry, and can be FQDN/hostname or IPv4/IPv6 address. 

Example: "hpov.example.com"

| Aliases | CN |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OrganizationalUnit &lt;&gt;

The entry for the organizational unit name, may not exceed 64 characters.

| Aliases | OU |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AlternativeName &lt;&gt;

An optional entry containing additional names that apply to the owner of the certificate, possibly including additional `e-mail` addresses, DNS names, IP addresses and other identifiers. 

Example: "hpov.example.com,hpov,192.168.1.1"

| Aliases | SAN |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ContactName &lt;&gt;

The name of the contact person, may not exceed 64 characters.

| Aliases | Contact |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Email &lt;&gt;

The contact person"s email address, which may not exceed 128 characters and is of the format name@domain.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Surname &lt;&gt;

The contact person"s family name, which may not exceed 64 characters.

| Aliases | Sur |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -GivenName &lt;&gt;

The contact person"s first name, which may not exceed 64 characters.

| Aliases | Giv |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Initials &lt;&gt;

The contact person"s initials, which may not exceed 20 characters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DNQualifier &lt;&gt;

The distinguished name qualifier, which further identifies the certificate recipient, which may not exceed 128 characters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

Object that contains the "base64data" property of the certificate

## Related Links

