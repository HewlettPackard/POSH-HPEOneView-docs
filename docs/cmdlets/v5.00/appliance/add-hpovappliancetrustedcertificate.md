---
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

Hypervisor Manager is software for managing virtualized environments. Through the HPE OneView Hypervisor Manager resource, you can create, import, configure, and manage hypervisors and hypervisor clusters. A hypervisor manager provides the hostname and credentials to register with HPE OneView. HPE OneView uses these details to communicate with a hypervisor manager to perform tasks such as add, edit, and remove hypervisors or hypervisor clusters.

You can register a new hypervisor cluster manager with HPE OneView by providing the hostname and credentials. The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences using Set-HPOVClusterManager. You can override these values also when deploying a new hypervisor cluster profile.

A valid hypervisor manager certificate must be added to HPE OneView trust store to be able to successfully communicate with a hypervisor manager, which ensures secure and verified communication.

Cluster managers can also be added to existing scope resources, or added later using Add-HPOVResourceToScope.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator
{% endhint %}

## Examples

### Example 1

```text
Get-ChildItem C:\Path\srv1-pub.cer | Add-HPOVApplianceTrustedCertificate
```

Add the provided offline certificate to the appliance trust store.

### Example 2

```text
Add-HPOVApplianceTrustedCertificate -ComputerName $RemoteBackupHostname -Port 443 -AliasName backupserver -Async -Outvariable Task
```

Use the Cmdlet to add the remote certificate to the appliance trust store without waiting for the task to complete.

### Example 3

```text
Add-HPOVApplianceTrustedCertificate -ComputerName server1-ilo.domain.com -AliasName server1iLo -force
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
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` objects or Name property values.

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

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
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -ComputerName &lt;String&gt;

The remote endpoint Computer Name or IP Address. This should match either the X.509 Subject or Subject Alternative Name fields with in the cert object. If omitting the `-CertObject` parameter, the Cmdlet will initiate a TCP connection in order to retrieve the certificate. Use the `-Port` parameter to specify the correct TCP port the SSL/TLS service is listening on.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Port &lt;Int&gt;

Specify the TCP port where the TLS/SSL service is bound and listening on. Use with the `-ComputerName` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AliasName &lt;String&gt;

Specify an alias name of the certificate stored on the appliance. By default, the Subject name will be used.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Use to force add an untrusted \(self signed or a certificate authority certificate has not been added to the appliance\) certificate into the appliances trust store.

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

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Asynchronous task resource to monitor.

## Related Links

* [Get-HPOVApplianceTrustedCertificate](get-hpovappliancetrustedcertificate.md)
* [Remove-HPOVApplianceTrustedCertificate](remove-hpovappliancetrustedcertificate.md)

