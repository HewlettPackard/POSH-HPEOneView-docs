---
description: Install signed private key.
---

# Install-HPOVApplianceCertificate

## Syntax

```text
Install-HPOVApplianceCertificate
    [-Path] <System.IO.FileInfo>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

After using New-HPOVApplianceCSR to generate a Certificate Signing Request (CSR), this CMDLET will install the CA signed and approved SSL private key to the appliance.

## Examples

###  Example 1 

```text
$Task = C:\dir\hpov.cer | Install-HPOVApplianceCertificate


```

Read the signed SSL certificate private key and install it on the appliance, and wait for the task to complete.

###  Example 2 

```text
$cert = Get-ChildItem C:\dir\hpov.cer 
$TaskToMonitor = Install-HPOVApplianceCertificate -Path $Cert -Async
C:\> $TaskToMonitor | Wait-HPOVTaskComplete

```

Read the signed SSL certificate private key and install it on the appliance, and wait for the task to complete.

## Parameters

### -Path &lt;System.IO.FileInfo&gt;

Aliases [-PrivateKey, `-Certificate`]
The private key certificate for the appliance. The source CER file can be passed to the cmdlet via pipeline or this parameter.

| Aliases | PrivateKey, Certificate |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify the `[HPOneView.Appliance.Connection]` object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.IO.FileInfo**_

Certificate file path

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task resource object to monitor committing certificate, and deploying HPE SSO certificate update to managed/monitored devices

## Related Links

* [Get-HPOVApplianceCertificateStatus](get-hpovappliancecertificatestatus.md)
