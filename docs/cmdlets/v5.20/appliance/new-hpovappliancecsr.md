---
description: Generate appliance CSR
---

# New-HPOVApplianceCsr

## Syntax

```text
New-HPOVApplianceCsr
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
    [-ChallengePassword] <>
    [-UnstructuredName] <>
    [-CnsaCompliantRequest <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

This Cmdlet will create the CSR for an given appliance, to then be submitted to a CA.

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
$request = New-HPOVApplianceCsr @CSR -ApplianceConnection Appliance.domain.com
Set-Content -path C:\dir\hpov.csr -value $request.base64Data -Force
```

Create a CSR request to submit to CA.

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

### -ChallengePassword &lt;&gt;

The challenge password is a required entry and must contain a minimum of 8 characters.  If you wish to be prompted to supply the password, use an asterisk (*) character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UnstructuredName &lt;&gt;

Defined by the certificate authority, and may contain up to 64 characters.  Consult the certificate authority"s administrator or documentation for more information.

| Aliases | UN |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -CnsaCompliantRequest &lt;&gt;

Specify to create a CNSA compliant certificate request.  By default the certificate request will create a 2048bit key length, while CNSA compliant will create a 3072bit key length.

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

Object that contains the base64data property, which can then be written to a file or submitted to CA

## Related Links

