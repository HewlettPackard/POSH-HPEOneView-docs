---
description: Disable appliance certificate revocation checking.
---

# Disable-OVCertificateRevocationChecking

## Syntax

```powershell
Disable-OVCertificateRevocationChecking
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Hewlett Packard Enterprise strongly recommends that you enable strict certificate validation checks after completing an update as appropriate for your enterprise security policies. HPE OneView supports devices using self-signed certificates and devices using formal CA-signed certificates. CA-signed certificates offer benefits such as revocation checking and overall simplified management.  HPE OneView enables users to import a CA CRL file and to perform the appropriate revocation checking on existing certificates in the trust store and for certificates received during communication with a managed device or external server.

This Cmdlet will disable certificate revocation validation on the specified appliance.  By disabling this setting, the appliance will not validate the certificate has been revoked by an issuing certificate authority.  This setting has no applicability to self-signed certificates.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Disable-OVCertificateRevocationChecking

```

Default example

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

None.  You cannot pipe objects to this cmdlet.


## Return Values

## Related Links

* [Enable-OVCertificateRevocationChecking](enable-ovcertificaterevocationchecking.md)
