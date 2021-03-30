---
description: Add an external fabric manager.
---

# Add-HPOVFabricManager

## Syntax

```text
Add-HPOVFabricManager
    [-ManagementAddress] <String>
    [-Name] <String>
    [-Credential <PSCredential>]
    [-SecondaryManagementAddress <String>]
    [-TertiearyManagementAddress <String>]
    [-TrustLeafCertificate]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Fabric Managers is a resource manager in HPE OneView that enables integration of a Cisco ACI fabric (an external entity) with HPE Synergy. A fabric manager aligns HPE OneView resources as defined by Cisco Application Policy Infrastructure Controller (APIC) policies. It represents a remote Cisco APIC or an APIC cluster that manages a Cisco ACI fabric.

You can operate a fabric manager after adding it in HPE OneView and configure a list of tenants to cover policies necessary for HPE Synergy and Cisco APIC integration.

Remediation of networks, network sets, and logical interconnects Remediation is a process to convert a noncompliant health state of an HPE OneView resource to a compliant health state with respect to APIC policy definitions.

The following conditions cause the fabric manager to be unable to synchronize with network policies:

    *  One or more networks connected across uplink sets in a logical interconnect within HPE Synergy have the same VLAN tag
    *  The two networks are shared across tenants 

When a fabric manager is non compliant with APIC network policies, a software remediation enables a fabric manager to synchronize with network policies. A compliance report is generated immediately after adding a fabric manager and is updated again after remediation. The compliance report details actions that you can perform to remediate inconsistencies. There are indicators for compliant, noncompliant, and compliance-check progress for each resource. Every tenant has a list of consistent and inconsistent reports based on the compliance records generated for a tenant. An inconsistency appears in the form of an alert, which contains an action choice: auto-remediate or manual. If you choose to auto-remediate, an automatic update of the selected HPE OneView resource will initiate.

## Examples

###  Example 1 

```text
Add-HPOVFabricManager -Name ProdFabricManager -ManagementAddress fabricmgr1-vip.domain.local -SecondaryManagementAddress fabricmgr1-vip2.domain.local

```

Add the specified farbic manager with a redundant address.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ManagementAddress &lt;String&gt;

The fabric managers primary IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

The fabric managers resource name to use.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -SecondaryManagementAddress &lt;String&gt;

The fabric managers secondary IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -TertiearyManagementAddress &lt;String&gt;

The fabric managers tertieary IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -TrustLeafCertificate &lt;SwitchParameter&gt;

If the resource SSL certificate is not trusted, use this parameter to add the certificate to the appliance trust store.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async Task resource to monitor progress.

## Related Links

* [Get-HPOVFabricManager](get-hpovfabricmanager.md)
* [Remove-HPOVFabricManager](remove-hpovfabricmanager.md)
