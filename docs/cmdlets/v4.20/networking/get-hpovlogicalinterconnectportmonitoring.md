---
description: Get port monitoring configuration from provided logical interconnect.
---

# Get-HPOVLogicalInterconnectPortMonitoring

## Syntax

```text
Get-HPOVLogicalInterconnectPortMonitoring
    [-InputObject] <Object>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink (server-facing) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers.

This Cmdlet will return the port monitoring configuration for the provided logical interconnect.

Required Privileges: Network administrator

## Examples

###  Example 1 

```text
Get-HPOVLogicalInterconnect -Name "Encl1-Default VC FF LIG" -ErrorAction Stop | Get-HPOVLogicalInterconnectPortMonitoring

```

Get the port monitoring configuration from the specified Logical Interconnect.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

HPOneView.Networking.LogicalInterconnect from `Get-HPOVLogicalInterconnect`.

| Aliases | uri, li, name, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

Logical Interconnect resource object from [`Get-HPOVLogicalInterconnect`](get-hpovlogicalinterconnect.md)

## Return Values

_**HPOneView.Networking.LogicalInterconnect+PortMonitoringConfig**_

The current port monitor configuration of the provided logical interconnect(s).

## Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](disable-hpovlogicalinterconnectportmonitoring.md)
* [Enable-HPOVLogicalInterconnectPortMonitoring](enable-hpovlogicalinterconnectportmonitoring.md)
