---
description: Disable port monitoring for a logical interconnect.
---

# Disable-OVLogicalInterconnectPortMonitoring

## Syntax

```powershell
Disable-OVLogicalInterconnectPortMonitoring
    [-InputObject] <Object>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink (server-facing) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers.

Restrictions:

*  You cannot use Virtual Connect to forward captured traffic to a server. For more information, see the HPE Virtual Connect for c-Class BladeSystem User Guide in the Hewlett Packard Enterprise Information Library.
*  You can configure one network analyzer port (the uplink port) for up to 16 downlink server ports within a logical interconnect.
*  The HPE Virtual Connect 16Gb 24-Port Fibre Channel Module monitors 1 downlink server port.
*  HPE Virtual Connect 16Gb 24-Port Fibre Channel Module firmware must be 4.00 or later

???+ info
    Minimum required privileges: Network administrator

## Examples

###  Example 1 

```powershell
Get-OVLogicalInterconnect -Name "Encl1" -ErrorAction Stop | Disable-OVLogicalInterconnectPortMonitoring
```

Disable port monitoring for the specified logical interconnect resource.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The `[HPEOneView.Networking.LogicalInterconnect]` resource from Get-OVLogicalInterconnect.

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

=== "HPEOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]"
    Logical Interconnect resource object from Get-OVLogicalInterconnect
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for configuring port monitoring on the requested logical intercinnect.
    

## Related Links

* [Enable-OVLogicalInterconnectPortMonitoring](enable-ovlogicalinterconnectportmonitoring.md)
* [Get-OVLogicalInterconnectPortMonitoring](get-ovlogicalinterconnectportmonitoring.md)
