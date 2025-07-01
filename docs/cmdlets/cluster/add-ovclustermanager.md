---
description: Add new hypervisor manager.
---

# Add-OVClusterManager

## Syntax

```powershell
Add-OVClusterManager
    [-Hostname] <String>
    [-Credential] <PSCredential>
    [-DisplayName <String>]
    [-Port <Int>]
    [-TrustLeafCertificate]
    [-Scope <Object>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Hypervisor Manager is software for managing virtualized environments. Through the HPE OneView Hypervisor Manager resource, you can create, import, configure, and manage hypervisors and hypervisor clusters. A hypervisor manager provides
the hostname and credentials to register with HPE OneView. HPE OneView uses these details to communicate with a hypervisor manager to perform tasks such as add, edit, and remove hypervisors or hypervisor clusters.

You can register a new hypervisor cluster manager with HPE OneView by providing the hostname and credentials. The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences using the edit operation. You can override these values in a hypervisor cluster profile.

A valid hypervisor manager certificate must be added to HPE OneView trust store to be able to successfully communicate with a hypervisor manager.

The user must have an infrastructure administrator privilege to register or update the hypervisor manager resource in
HPE OneView. You can assign scopes to the hypervisor manager resource in HPE OneView.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Add-OVClusterManager -Hostname vcenter.domain.local -Credential (Get-Credential -Username administrator@vsphere.local -Message Password)
```

Add hypervisor manager by providing prompted PSCredential.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

### -Credential &lt;PSCredential&gt;

Use this parameter to provide the cluster manager credentials.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisplayName &lt;String&gt;

Override display name of the hypervisor manager. By default Hostname will be used.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

IP or FQDN address of the hypervisor manager.

| Aliases | Name, ComputerName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Port &lt;Int&gt;

HTTPS port of the target hypervisor manager. Default is 443.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 443 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Provide an `[HPEOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-OVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TrustLeafCertificate &lt;SwitchParameter&gt;

If the resource SSL certificate is not trusted, use this parameter to add the certificate to the appliance trust store.

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async Task resource to monitor progress.
    

## Related Links

* [Get-OVClusterManager](get-ovclustermanager.md)
* [Remove-OVClusterManager](remove-ovclustermanager.md)
* [Set-OVClusterManager](set-ovclustermanager.md)
