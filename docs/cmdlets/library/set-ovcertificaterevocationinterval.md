---
description: Change the interval of Certificate Revocation List download.
---

# Set-OVCertificateRevocationInterval

## Syntax

```powershell
Set-OVCertificateRevocationInterval
    [-AutoCRLDownloadInterval] <int>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Certificate Revocation List (CRL) associated with a CA certificate typically gets expired on a weekly or monthly interval. When you receive the CRL expiration alert, manually upload the new CRL to HPE OneView. You can configure HPE OneView 5.2 and later versions and automatically download CRLs. When the Automatic CRL downloading setting is enabled, a scheduled automatic CRL downloader on the appliance checks the validity of all the CRLs that are available in the appliance, and updates the CRLs that have expired or are about to expire. The downloader also downloads new CRLs during this process if the CRLs were not previously downloaded. The scheduled time for running the job is set to 12AM UTC. The appliance checks for CRLs every day that are about to expire. If any of the CRLs are about to expire in three days, the appliance downloads the latest available CRL. This prevents the expiration of CRLs on the appliance. You can configure the schedule for downloading the latest available CRLs using a global setting variable global.daysBeforeToTriggerCRLDownload using the REST API /rest/certificates/validator-configuration. If there is a failure during the CRL download, the appliance retries the operation three times before raising an alert.

???+ info
     Irrespective of the number of days before the download is triggered, the CRL infrastructure has a potential lag. When a CA uploads a new CRL, the CA does not have the capability to inform about the update. Due to this lag in the CRL infrastructure, a new revoked certificate will not be picked up until next refresh. This is not an HPE OneView specific issue rather a limitation with the CRL ecosystem.


If the scheduled run for a specific day is missed due to reasons such as the appliance is down on the scheduled day, HPE OneView will initiate the CRL downloader post reboot.

See the online help Certificate Revocation Lists discussion topic for more information.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Set-OVCertificateRevocationInterval

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

### -AutoCRLDownloadInterval &lt;int&gt;

The number of days to perform CRL download, if CRL is defined within leaf certificate.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
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

## Return Values

## Related Links

