---
description: Get configured fabric manager(s).
---

# Get-OVFabricManager

## Syntax

```powershell
Get-OVFabricManager
    [-Name <String>]
    [-Label <String>]
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

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVFabricManager
```

Get all defined fabric managers.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Specify the fabric manager name to filter for.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

* AllResources
    *AllResourcesInScope
* `[HPEOneView.Appliance.ScopeCollection]`
* `[HPEOneView.Appliance.ConnectionPermission]`

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Networking.FabricManager"
    Configured fabric manager resource object.
    

## Related Links

* [Add-OVFabricManager](add-ovfabricmanager.md)
* [Remove-OVFabricManager](remove-ovfabricmanager.md)
