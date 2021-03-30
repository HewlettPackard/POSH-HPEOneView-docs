---
description: Enable appliance certificate revocation checking.
---

# Enable-HPOVCertificateRevocationChecking

## Syntax

```text
Enable-HPOVCertificateRevocationChecking
    [-SkipRevocationCheck <bool>]
    [-AllowExpiredCRLs <bool>]
    [-NotifyExpiredMissingCRLs <bool>]
    [-EnableAutoCRLDownload <bool>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Hewlett Packard Enterprise strongly recommends that you enable strict certificate validation checks after completing an update as appropriate for your enterprise security policies. HPE OneView supports devices using self-signed certificates and devices using formal CA-signed certificates. CA-signed certificates offer benefits such as revocation checking and overall simplified management.  HPE OneView enables users to import a CA CRL file and to perform the appropriate revocation checking on existing certificates in the trust store and for certificates received during communication with a managed device or external server.

This Cmdlet will enables certificate revocation validation on the specified appliance.  When enabled and a certificate revocation list URL is present within a certificate authority's certificate, the appliance will validate if the certificate has been revoked.  A revoked certificate is then no longer valid and must be replaced on the device.  This setting has no applicability to self-signed certificates.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator
{% endhint %}

## Examples

###  Example 1 

```text
Enable-HPOVCertificateRevocationChecking

```

Default example

## Parameters

### -AllowExpiredCRLs &lt;bool&gt;



| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -EnableAutoCRLDownload &lt;bool&gt;



| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -NotifyExpiredMissingCRLs &lt;bool&gt;



| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -SkipRevocationCheck &lt;bool&gt;



| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

## Return Values

## Related Links

* [Disable-HPOVCertificateRevocationChecking](disable-hpovcertificaterevocationchecking.md)
