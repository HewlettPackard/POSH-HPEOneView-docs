---
description: Enable appliance certificate revocation checking.
---

# Enable-OVCertificateRevocationChecking

## Syntax

```powershell
Enable-OVCertificateRevocationChecking
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

???+ warning
     Appliance will reboot when executing this Cmdlet.


???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Enable-OVCertificateRevocationChecking

```

Default example

## Parameters

### -AllowExpiredCRLs &lt;bool&gt;

This setting controls how HPE OneView treats expired CRLs. When enabled, HPE OneView allows CRLs that are expired and continues to perform the revocation checks for that CRL.  Use the `-NotifyExpiredMissingCRLs` parameter to be notified via an alert when CRL(s) are about to be or have expired.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

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

### -EnableAutoCRLDownload &lt;bool&gt;

When the setting is enabled, a scheduled automatic CRL downloader on the appliance checks the validity of all the CRLs that are available in the appliance, and updates the CRLs that have expired or are about to expire. The downloader also downloads new CRLs during this process if the CRLs were not previously downloaded. The scheduled time for running the job is set to 12AM UTC. The appliance checks for CRLs every day that are about to expire. If any of the CRLs are about to expire in three days, the appliance downloads the latest available CRL. This prevents the expiration of CRLs on the appliance. You can configure the schedule for downloading the latest available CRLs using Set-OVCertificateRevocationInterval. If there is a failure during the CRL download, the appliance retries the operation three times before raising an alert.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NotifyExpiredMissingCRLs &lt;bool&gt;

When enabled, alerts are displayed when there is no CRL uploaded for a CA, a CRL is about to expire, or a CRL has already expired.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SkipRevocationCheck &lt;bool&gt;

This option controls whether HPE OneView treats a missing CRL as an error during certificate validation. By default, this option is enabled and HPE OneView performs overall certificate validation with the exception of revocation checking.  If you do not have the CRL files issued by the CA certificates, any communication with devices or remote servers that have certificates signed by those CAs will fail until new CRLs are uploaded for all of those CA certificates. Those CA certificates can be identified by navigating to the manage certificate dialog in the settings and filtering by state of "CRL not found"

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

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "None"
    Appliance will reboot.
    
    

## Related Links

* [Disable-OVCertificateRevocationChecking](disable-ovcertificaterevocationchecking.md)
