---
description: Add X.509 SSL certificates to appliance trusted store.
---

# Add-OVApplianceTrustedCertificate

## Syntax

```powershell
Add-OVApplianceTrustedCertificate
    [-Path <System.IO.FileInfo>]
    [-CertObject <Object>]
    [-ComputerName <String>]
    [-Port <Int>]
    [-AliasName <String>]
    [-Force]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Add-OVApplianceTrustedCertificate
    [-Path <System.IO.FileInfo>]
    [-CertObject <Object>]
    [-ComputerName <String>]
    [-Port <Int>]
    [-TrustCertChain]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE OneView performs certificate validation for all Transport Layer Security (TLS) communications between the appliance and external servers or devices. These checks guarantee confidentiality, integrity, and authentication with the remote end-point.

In production environments, Hewlett Packard Enterprise strongly recommends that certificate validation be enabled. In environments where security is not a concern, such as a testing environment, certificate validation can optionally be disabled.

This Cmdlet will allow an administrator to add X.509 compliant SSL certificates to the appliance trusted store.

???+ info
    Minimum required privileges:
    
    * Infrastructure Administrator to add certificate authority certificates and server certificates.
    * Network administrator, Server administrator, Software administrator, or Storage administrator to add server certificates.

## Examples

###  Example 1 

```powershell
Get-ChildItem C:\Path\srv1-pub.cer | Add-OVApplianceTrustedCertificate
```

Add the provided offline certificate to the appliance trust store.

###  Example 2 

```powershell
Add-OVApplianceTrustedCertificate -ComputerName $RemoteBackupHostname -Port 443 -AliasName backupserver -Async -Outvariable Task
```

Use the Cmdlet to add the remote certificate to the appliance trust store without waiting for the task to complete.

###  Example 3 

```powershell
Add-OVApplianceTrustedCertificate -ComputerName server1-ilo.domain.com -AliasName server1iLo -force
```

Use the Cmdlet to add the self signed iLO certificate to the appliance.

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

Specify one or more `[HPEOneView.Appliance.Connection]` objects or Name property values.

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

Use to force add an untrusted (self signed or a certificate authority certificate has not been added to the appliance) certificate into the appliances trust store.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TrustCertChain &lt;SwitchParameter&gt;

When providing a certificate, either with `-Path`, `-CertObject` or `-ComputerName`, use this parameter to build the certificate chain that issued the certificate to the endpoint.  In order for the certificate chain to automatically be built, the issuing and root authority certificates must be trusted from the operating system running PowerShell.

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

=== "System.IO.FileInfo"
    The filesystem object of the X.509 public SSL certificate to add.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task resource to monitor.
    

## Related Links

* [Get-OVApplianceTrustedCertificate](get-ovappliancetrustedcertificate.md)
* [Remove-OVApplianceTrustedCertificate](remove-ovappliancetrustedcertificate.md)
