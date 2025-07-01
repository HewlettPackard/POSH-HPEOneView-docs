---
description: Install signed private key.
---

# Install-OVApplianceCertificate

## Syntax

```powershell
Install-OVApplianceCertificate
    [-Path] <System.IO.FileInfo>
    [-Passphrase <SecureString>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

After using New-OVApplianceCSR to generate a Certificate Signing Request (CSR), this Cmdlet will install the CA signed and approved SSL private key to the appliance.

## Examples

###  Example 1 

```powershell
$Task = C:\dir\hpov.cer | Install-OVApplianceCertificate
```

Read the signed appliance web certificate key and install it on the appliance, and wait for the task to complete.

###  Example 2 

```powershell
$cert = Get-ChildItem C:\dir\hpov.cer 
$TaskToMonitor = Install-OVApplianceCertificate -Path $Cert -Async
C:\> $TaskToMonitor | Wait-OVTaskComplete
```

Read the signed appliance web certificate and install it on the appliance, and wait for the task to complete.

###  Example 3 

```powershell
$cert = Get-ChildItem C:\dir\hpov.pfx 
Install-OVApplianceCertificate -Path $Cert -Passphrase (Read-Host -Prompt Passphrase -AsSecureString)
```

Specify a PKCS#12 file with a passphrase.

## Parameters

### -Path &lt;System.IO.FileInfo&gt;

The signed certificate for the appliance, or PKCS#12 file containing the private key and public signed certificate.

| Aliases | PrivateKey, Certificate |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
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

### -Passphrase &lt;SecureString&gt;

PKCS#12 (PFX) certificate files can be encrypted using a passphrase.  Supply the passphrase in SecureString format.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify the `[HPEOneView.Appliance.Connection]` object or Name property value.

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

=== "System.IO.FileInfo"
    Certificate file path
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource object to monitor committing certificate, and deploying HPE SSO certificate update to managed/monitored devices
    

## Related Links

* [Get-OVApplianceCertificateStatus](get-ovappliancecertificatestatus.md)
