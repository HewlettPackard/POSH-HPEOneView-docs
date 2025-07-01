---
description: Enable appliance TLS/SSL certificate validation.
---

# Enable-OVCertificateValidation

## Syntax

```powershell
Enable-OVCertificateValidation
    [-CheckForSelfSignedExpiry <Bool>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView performs certificate validation for all Transport Layer Security (TLS) communications between the appliance and external servers or devices. These checks guarantee confidentiality, integrity, and authentication with the remote end-point.

In production environments, Hewlett Packard Enterprise strongly recommends that certificate validation be enabled. In environments where security is not a concern, such as a testing environment, certificate validation can optionally be disabled.

If certificate validation is disabled, any sensitive data such as credentials are transmitted insecurely. Make sure to use only local user accounts and not enterprise directory-based accounts to avoid transmitting enterprise login credentials over the network when certificate validation is disabled.

???+ info
    When upgrading from earlier releases, the certificates in use by the currently monitored or managed devices are imported into the HPE OneView trust store and alerts are generated for issues such as expired certificates. These automatically added certificates are either a device"s self signed certificate or the leaf certificate for a certificate authority (CA) signed certificate. Using CA-signed certificates can simplify the device trust process.


Certificate checking is enabled by default, but some of the stricter validation checks are relaxed to maintain communications with all devices, even those with certificate issues. The relaxed checking includes: 

* Not performing expiration checks for self signed certificates 
* For certificate authority (CA) signed certificates, relaxed certificate revocation list (CRL) checking. 

The relaxed checking gives the administrator time to address any expired certificates, to upload trusted CA root and intermediate certificates, and upload the appropriate CRLs. 

Hewlett Packard Enterprise strongly recommends that you enable strict certificate validation checks after completing an update as appropriate for your enterprise security policies. See Manage Certificates for additional information on certificate management. 

HPE OneView supports devices using self signed certificates and devices using formal CA-signed certificates. CA-signed certificates offer benefits such as revocation checking and overall simplified management. 

HPE OneView enables users to import a CA CRL file and to perform the appropriate revocation checking on existing certificates in the trust store and for certificates received during communication with a managed device or external server.

???+ warning
    Modifying the appliance setting will require the appliance to be rebooted.


???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Enable-OVCertificateValidation
```

Enable certificate validation setting on the appliance.

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

### -CheckForSelfSignedExpiry &lt;Bool&gt;

Enable ($true) or Disable ($false) the option to check for expiration of self signed certificates if you want to perform expiration checks for self signed certificates.  By default, self signed certificate expiry is not enabled.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

Override the confirmation prompt.

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    Appliance global security settings.
    

## Related Links

* [Disable-OVCertificateValidation](disable-ovcertificatevalidation.md)
