﻿---
description: Add X.509 SSL certificates to appliance trusted store.
---

# Add-HPOVApplianceTrustedCertificate

## Syntax

```text
Add-HPOVApplianceTrustedCertificate
    [-Path] <System.IO.FileInfo>
    [-CertObject] <Object>
    [-ComputerName <String>]
    [-Port <Int>]
    [-AliasName <String>]
    [-Force]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will allow the Infrastructure Administrator to add X.509 compliant SSL certificates to the appliance trusted store.

## Examples

###  Example 1 

```text
Get-ChildItem C:\Path\srv1-pub.cer | Add-HPOVApplianceTrustedCertificate

```

Add the provided offline certificate to the appliance trust store.

###  Example 2 

```text
Add-HPOVApplianceTrustedCertificate -ComputerName $RemoteBackupHostname -Port 443 -AliasName backupserver -Async -Outvariable Task

```

Use the Cmdlet to add the remote certificate to the appliance trust store without waiting for the task to complete.

###  Example 3 

```text
Add-HPOVApplianceTrustedCertificate -ComputerName server1-ilo.domain.com -AliasName server1iLo -force

```

Use the Cmdlet to add the self-signed iLO certificate to the appliance.

## Parameters

### -Path &lt;System.IO.FileInfo&gt;

The filesystem object of the X.509 public SSL certificate to add.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` objects or Name property values.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
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

### -CertObject &lt;Object&gt;

Specify the public Base64 X.509 certificate of the remote endpoint to add to the appliances internal trust store.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ComputerName &lt;String&gt;

The remote endpoint Computer Name or IP Address.  This should match either the X.509 Subject or Subject Alternative Name fields with in the cert object.  If omitting the `-CertObject` parameter, the Cmdlet will initiate a TCP connection in order to retrieve the certificate.  Use the `-Port` parameter to specify the correct TCP port the SSL/TLS service is listening on.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Port &lt;Int&gt;

Specify the TCP port where the TLS/SSL service is bound and listening on.  Use with the `-ComputerName` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AliasName &lt;String&gt;

Specify an alias name of the certificate stored on the appliance.  By default, the Subject name will be used.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Use to force add an untrusted (`self-signed` or a certificate authority certificate has not been added to the appliance) certificate into the appliances trust store.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.IO.FileInfo**_

The filesystem object of the X.509 public SSL certificate to add.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asyncronous task resource to monitor.

## Related Links

* [Get-HPOVApplianceTrustedCertificate](get-hpovappliancetrustedcertificate.md)
* [Remove-HPOVApplianceTrustedCertificate](remove-hpovappliancetrustedcertificate.md)
