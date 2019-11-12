---
description: Enable port monitoring for a logical interconnect.
---

# Enable-HPOVLogicalInterconnectPortMonitoring

## HPE OneView 5.00 Library

### Syntax

```text
Enable-HPOVLogicalInterconnectPortMonitoring [-InputObject] <Object> [-AnalyzerPort] <Object> [-MonitoredPorts] <Hashtable> [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink \(server-facing\) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers.

{% hint style="warning" %}
* You cannot use Virtual Connect to forward captured traffic to a server. For more information, see the HPE Virtual Connect for c-Class BladeSystem User Guide in the Hewlett Packard Enterprise Information Library. 
* You can configure one network analyzer port \(the uplink port\) for up to 16 downlink server ports within a logical interconnect. 
* The HPE Virtual Connect 16Gb 24-Port Fibre Channel Module monitors 1 downlink server port. 
* HPE Virtual Connect 16Gb 24-Port Fibre Channel Module firmware must be 4.00 or later 
{% endhint %}

{% hint style="info" %}
Required Privileges: Network administrator
{% endhint %}

### Parameters

#### -AnalyzerPort &lt;Object&gt; 

Specifies the network analyzer port \(the mirrored-to uplink port\) for the downlink server ports within a single enclosure. There is a single "mirrored-to port" per logical interconnect.

Allowed string value: `"Bay1:X6" or "Enclosure1:Bay6:Q1.1"`

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

HPOneView.Networking.LogicalInterconnect from Get-HPOVLogicalInterconnect.

| Aliases | uri, li, name, Resource |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -MonitoredPorts &lt;Hashtable&gt; 

An Array of Hashtable or PSCustomObject with the following format:

`@{Port = "Bay1:D2"; Direction = "toserver"}`

The "Port" property format must be "BayID:ServerDownlinkPortID". For HPE Synergy, the "Port" property must be "EnclosureID:BayID:ServerDownlinkPortID".

The "Direction" property value must be one of the following:

* ToServer
* FromServer
* Both

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPoneView.Networking.LogicalInterconnect \[System.Management.Automation.PSCustomObject\]**_

Logical Interconnect resource object from Get-HPOVLogicalInterconnect

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$LogicalInterconnect = Get-HPOVLogicalInterconnect -Name "Encl1-Default VC FF LIG" 
Enable-HPOVLogicalInterconnectPortMonitoring -InputObject $LogicalInterconnect -AnalyzerPort "Bay1:Q1.1" -MonitoredPorts @{Port = "Bay1:d2"; Direction = "toserver"}, @{Port = "Bay1:D3"; Direction = "MonitoredFromServer"}, @{Port = "Bay2:D7"; Direction = "Both"}
```

Enable port monitoring for the specific logical interconnect.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLogicalInterconnect -Name "LE1-Default VC LIG" | Enable-HPOVLogicalInterconnectPortMonitoring -AnalyzerPort "Enclosure1:Bay3:Q1.1" -MonitoredPorts @{Port = "Enclosure1:Bay3:d1"; Direction = "Both"}, @{Port = "Enclosure1:Bay6:d1"; Direction = "Both"}
```

Enable port monitoring for the specific logical interconnect. 

### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring ](disable-hpovlogicalinterconnectportmonitoring.md#hpe-oneview-5-00-library)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring) 

## HPE OneView 4.20 Library

### Syntax

```text
Enable-HPOVLogicalInterconnectPortMonitoring [-InputObject] <Object> [-AnalyzerPort] <Object> [-MonitoredPorts] <Hashtable> [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink \(server-facing\) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers.

{% hint style="warning" %}
* You cannot use Virtual Connect to forward captured traffic to a server. For more information, see the HPE Virtual Connect for c-Class BladeSystem User Guide in the Hewlett Packard Enterprise Information Library. 
* You can configure one network analyzer port \(the uplink port\) for up to 16 downlink server ports within a logical interconnect. 
* The HPE Virtual Connect 16Gb 24-Port Fibre Channel Module monitors 1 downlink server port. 
* HPE Virtual Connect 16Gb 24-Port Fibre Channel Module firmware must be 4.00 or later 
{% endhint %}

{% hint style="info" %}
Required Privileges: Network administrator
{% endhint %}

### Parameters

#### -AnalyzerPort &lt;Object&gt; 

Specifies the network analyzer port \(the mirrored-to uplink port\) for the downlink server ports within a single enclosure. There is a single "mirrored-to port" per logical interconnect.

Allowed string value: `"Bay1:X6" or "Enclosure1:Bay6:Q1.1"`

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

HPOneView.Networking.LogicalInterconnect from Get-HPOVLogicalInterconnect.

| Aliases | uri, li, name, Resource |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -MonitoredPorts &lt;Hashtable&gt; 

An Array of Hashtable or PSCustomObject with the following format:

`@{Port = "Bay1:D2"; Direction = "toserver"}`

The "Port" property format must be "BayID:ServerDownlinkPortID". For HPE Synergy, the "Port" property must be "EnclosureID:BayID:ServerDownlinkPortID".

The "Direction" property value must be one of the following:

* ToServer
* FromServer
* Both

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPoneView.Networking.LogicalInterconnect \[System.Management.Automation.PSCustomObject\]**_

Logical Interconnect resource object from Get-HPOVLogicalInterconnect

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$LogicalInterconnect = Get-HPOVLogicalInterconnect -Name "Encl1-Default VC FF LIG" 
Enable-HPOVLogicalInterconnectPortMonitoring -InputObject $LogicalInterconnect -AnalyzerPort "Bay1:Q1.1" -MonitoredPorts @{Port = "Bay1:d2"; Direction = "toserver"}, @{Port = "Bay1:D3"; Direction = "MonitoredFromServer"}, @{Port = "Bay2:D7"; Direction = "Both"}
```

Enable port monitoring for the specific logical interconnect.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLogicalInterconnect -Name "LE1-Default VC LIG" | Enable-HPOVLogicalInterconnectPortMonitoring -AnalyzerPort "Enclosure1:Bay3:Q1.1" -MonitoredPorts @{Port = "Enclosure1:Bay3:d1"; Direction = "Both"}, @{Port = "Enclosure1:Bay6:d1"; Direction = "Both"}
```

Enable port monitoring for the specific logical interconnect. 

### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring ](disable-hpovlogicalinterconnectportmonitoring.md#hpe-oneview-4-20-library)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring) 

## HPE OneView 4.10 Library

### Syntax

```text
Enable-HPOVLogicalInterconnectPortMonitoring [-InputObject] <Object> [-AnalyzerPort] <Object> [-MonitoredPorts] <Hashtable> [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink \(server-facing\) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers.

{% hint style="warning" %}
* You cannot use Virtual Connect to forward captured traffic to a server. For more information, see the HPE Virtual Connect for c-Class BladeSystem User Guide in the Hewlett Packard Enterprise Information Library. 
* You can configure one network analyzer port \(the uplink port\) for up to 16 downlink server ports within a logical interconnect. 
* The HPE Virtual Connect 16Gb 24-Port Fibre Channel Module monitors 1 downlink server port. 
* HPE Virtual Connect 16Gb 24-Port Fibre Channel Module firmware must be 4.00 or later 
{% endhint %}

{% hint style="info" %}
Required Privileges: Network administrator
{% endhint %}

### Parameters

#### -AnalyzerPort &lt;Object&gt; 

Specifies the network analyzer port \(the mirrored-to uplink port\) for the downlink server ports within a single enclosure. There is a single "mirrored-to port" per logical interconnect.

Allowed string value: `"Bay1:X6" or "Enclosure1:Bay6:Q1.1"`

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

HPOneView.Networking.LogicalInterconnect from Get-HPOVLogicalInterconnect.

| Aliases | uri, li, name, Resource |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -MonitoredPorts &lt;Hashtable&gt; 

An Array of Hashtable or PSCustomObject with the following format:

`@{Port = "Bay1:D2"; Direction = "toserver"}`

The "Port" property format must be "BayID:ServerDownlinkPortID". For HPE Synergy, the "Port" property must be "EnclosureID:BayID:ServerDownlinkPortID".

The "Direction" property value must be one of the following:

* ToServer
* FromServer
* Both

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPoneView.Networking.LogicalInterconnect \[System.Management.Automation.PSCustomObject\]**_

Logical Interconnect resource object from Get-HPOVLogicalInterconnect

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$LogicalInterconnect = Get-HPOVLogicalInterconnect -Name "Encl1-Default VC FF LIG" 
Enable-HPOVLogicalInterconnectPortMonitoring -InputObject $LogicalInterconnect -AnalyzerPort "Bay1:Q1.1" -MonitoredPorts @{Port = "Bay1:d2"; Direction = "toserver"}, @{Port = "Bay1:D3"; Direction = "MonitoredFromServer"}, @{Port = "Bay2:D7"; Direction = "Both"}
```

Enable port monitoring for the specific logical interconnect.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVLogicalInterconnect -Name "LE1-Default VC LIG" | Enable-HPOVLogicalInterconnectPortMonitoring -AnalyzerPort "Enclosure1:Bay3:Q1.1" -MonitoredPorts @{Port = "Enclosure1:Bay3:d1"; Direction = "Both"}, @{Port = "Enclosure1:Bay6:d1"; Direction = "Both"}
```

Enable port monitoring for the specific logical interconnect. 

### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring ](disable-hpovlogicalinterconnectportmonitoring.md#hpe-oneview-4-10-library)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring) 
