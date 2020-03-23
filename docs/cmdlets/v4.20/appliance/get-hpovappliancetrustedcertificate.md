---
description: Get X.509 SSL certificates from the appliace trusted store.
---

# Get-HPOVApplianceTrustedCertificate

## Syntax

```text
Get-HPOVApplianceTrustedCertificate
    [-Name <String>]
    [-CertificateAuthoritiesOnly]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Get-HPOVApplianceTrustedCertificate
    [-InputObject <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will allow the Infrastructure Administrator to retrieve X.509 compliant SSL certificates on the appliance within its trusted store.

## Examples

###  Example 1 

```text
Get-HPOVApplianceTrustedCertificate

```

Return all trusted certificates from the appliance trusted store.

###  Example 2 

```text
Get-HPOVServer -Name MyServer.domain.com -ErrorAction SilentlyContinue | Get-HPOVApplianceTrustedCertificate

```

Return the trusted certificate of the provided server hardware resource in the appliance trusted store.

## Parameters

### -Name &lt;String&gt;

The Alias Name of the certificate.  Please know that wildcard is not supported.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` objects or Name property values.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -CertificateAuthoritiesOnly &lt;SwitchParameter&gt;

This parameter will filter for trusted certificate authorities only.

| Aliases | CASOnly |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Provide an `[HPOneView.ServerHardware]` or `[HPOneView.Enclosure]` resource to return associated appliance trusted certificate(s).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardware**_

Server hardware resource from [`Get-HPOVServer`](../servers/get-hpovserver.md).

_**HPOneView.Enclosure**_

Enclosure resource from [`Get-HPOVEnclosure`](../servers/get-hpovenclosure.md).

## Return Values

_**HPOneView.Appliance.TrustedCertificate**_

Appliance trusted certificate object.

_**HPOneView.Appliance.TrustedCertificateAuthority**_

Appliance trusted certificate authority object.

## Related Links

* [Add-HPOVApplianceTrustedCertificate](add-hpovappliancetrustedcertificate.md)
* [Remove-HPOVApplianceTrustedCertificate](remove-hpovappliancetrustedcertificate.md)
