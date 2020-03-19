---
description: Retrieve Logical Interconnect resource(s).
---

# Get-HPOVLogicalInterconnect

## Syntax

```text
Get-HPOVLogicalInterconnect
    [-Name <String>]
    [-NonCompliant]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [-Export <String>]
    [<CommonParameters>]
```

## Description

A logical interconnect is a single administrative entity that consists of the configuration for a set of interconnects in a single enclosure or an HPE Synergy frame link topology, and includes:

    * The uplink sets, which connect to data center networks.
    * The mapping of networks to physical uplink ports, which is defined by the uplink sets for a logical interconnect.
    * The internal networks, which are used for `server-to`-server communications without traffic egressing any uplinks.
    * The downlink ports, which connect through the enclosure midplane to the servers in the enclosure.
    * The connections between interconnects, which are called stacking links.
    * Stacking links can be internal cables (through the enclosure) or external cables between the external ports of interconnects.

See the appropriate support or compatibility matrix on the Hewlett Packard Enterprise Information Library for the maximum number of networks that can be provisioned on a logical interconnect.

A logical interconnect derives its configuration from a logical interconnect group, which serves as a template to ensure that the logical interconnects being created are configured consistently.

For a server administrator, a logical interconnect represents the available networks through the interconnect uplinks and the interconnect downlink capabilities through a physical server?s interfaces. For a network administrator, a logical interconnect represents an Ethernet stacking configuration, aggregation layer connectivity, stacking topology, network reachability, statistics, and troubleshooting tools.

This Cmdlet retrieves a list of all Logical Interconnect or just specific ones via a query if the name parameter is provided. The output can be sent to a file using the exportFile parameter.

{% hint style="info" %}
Minimum required privileges: Read-
{% endhint %}
only
## Examples

###  Example 1 

```text
Get-HPOVLogicalInterconnect
```

Returns all Logical Interconnect defined on the appliance to standard output.

###  Example 2 

```text
Get-HPOVLogicalInterconnect -Name "Production"
```

Returns just the Production Logical Interconnect object to standard output.

###  Example 3 

```text
$myLogicalICs = Get-HPOVLogicalInterconnect -NonCompliant
```

Returns `non-compliant` logical interconnect resources.

###  Example 4 

```text
Get-HPOVLogicalInterconnect -Export "c:\myApplianceConfig\LogicalInterconnects.json"
```

Returns the query results to the file c:\myApplianceConfig\LogicalInterconnects.json

## Parameters

### -Name &lt;String&gt;

The name of the Logical Interconnect to retrieve.

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
	* AllResourcesInScope
	* `[HPOneView.Appliance.ScopeCollection]`
	* `[HPOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Export &lt;String&gt;

The full path and file name to export the contents retrieved from the call to `Get-HPOVLogicalInterconnect`.

| Aliases | x, ExportFile |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NonCompliant &lt;SwitchParameter&gt;

Filter resources based on their `non-compliant` state.

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

Logical Interconnect resource object from [`Get-HPOVLogicalInterconnect`](get-hpovlogicalinterconnect.md)

_**System.Collections.ArrayList <HPoneView.Networking.LogicalInterconnect>	**_

Multiple Logical Interconnects

_**A Logical Interconnect or collection of Logical Interconnects**_



## Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](disable-hpovlogicalinterconnectportmonitoring.md)
* [Enable-HPOVLogicalInterconnectPortMonitoring](enable-hpovlogicalinterconnectportmonitoring.md)
* [Get-HPOVLogicalInterconnectGroup](get-hpovlogicalinterconnectgroup.md)
* [Get-HPOVLogicalInterconnectPortMonitoring](get-hpovlogicalinterconnectportmonitoring.md)
* [Install-HPOVLogicalInterconnectFirmware](install-hpovlogicalinterconnectfirmware.md)
* [New-HPOVLogicalInterconnectGroup](new-hpovlogicalinterconnectgroup.md)
* [Remove-HPOVLogicalInterconnectGroup](remove-hpovlogicalinterconnectgroup.md)
* [Show-HPOVLogicalInterconnectMacTable](show-hpovlogicalinterconnectmactable.md)
* [Update-HPOVLogicalInterconnect](update-hpovlogicalinterconnect.md)
