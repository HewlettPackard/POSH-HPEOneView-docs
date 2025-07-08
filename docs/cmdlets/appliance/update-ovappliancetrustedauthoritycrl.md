---
description: Update appliance certificate authority revocation list.
---

# Update-OVApplianceTrustedAuthorityCrl

## Syntax

```powershell
Update-OVApplianceTrustedAuthorityCrl
    [-InputObject] <HPEOneView.Appliance.TrustedCertificateAuthority[]>
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
Update-OVApplianceTrustedAuthorityCrl
    [-InputObject] <HPEOneView.Appliance.TrustedCertificateAuthority[]>
    [-Path] <FileInfo>
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView enables users to import a CA CRL file and to perform the appropriate revocation checking on existing certificates in the trust store and for certificates received during communication with a managed device or external server.  Certificate revocation checks are enabled by default. However, if a matching CRL has not been imported for a CA-issued certificate, or if a CRL has expired, the appliance bypasses the revocation check for the associated certificate when performing an HTTPS connection. If you want to restrict (or relax) revocation checking, use the options below on the edit screen.

The Cmdlet will attempt to download the CRL from the HTTP location specified within the TrustedCertificateAuthority object.  You can manually download the updated CRL and use the -Path paramter to specify the offline CRL.

## Examples

###  Example 1 

```powershell
Get-OVApplianceTrustedCertificate -Name "VeriSign Class 3 Public Primary Certification Authority - G5" | Update-OVApplianceTrustedAuthorityCrl
```

Update the built-in certificate authority resource.

###  Example 2 

```powershell
# Download CA CRL for offline use
$CA = Get-OVApplianceTrustedCertificate -CertificateAuthoritiesOnly -Name "DigiCert Global CA G2"
Invoke-WebRequest -Uri $CA.CRLInfo.EndPointList[0] -OutFile C:\Directory\CA-updated.crl

# Copy offline CRL to other PC
Get-OVApplianceTrustedCertificate -CertificateAuthoritiesOnly -Name "DigiCert Global CA G2" | Update-OVApplianceTrustedAuthorityCrl -Path C:\Directory\CA-updated.crl
```

Update the built-in certificate authority resource.

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

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HPEOneView.Appliance.TrustedCertificateAuthority[]&gt;

HPEOneView.Appliance.TrustedCertificateAuthority resource from Get-OVApplianceTrustedCertificate.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Path &lt;FileInfo&gt;

Path to manually downloaded CRL.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.TrustedCertificateAuthority"
    resource from Get-OVApplianceTrustedCertificate.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for configuring port monitoring on the requested logical intercinnect.
    

## Related Links

