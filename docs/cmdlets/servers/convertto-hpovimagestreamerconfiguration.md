---
description: Convert Logical Enclosure to support HPE Image Streamer.
---

# ConvertTo-HPOVImageStreamerConfiguration

## HPE OneView 5.00 Library

###  Syntax

```text
ConvertTo-HPOVImageStreamerConfiguration [-InputObject] <Object> [-UplinkSetName] <Name> [-DeploymentNetwork] <Object> [[-UplinkPorts] <Array>] [[-ApplianceConnection] <Object>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

Convert Logical Enclosure and associated Enclosure Group and Logical Interconnect Group to support Internal Image Streamer configuration. HPE Synergy Virtual Connect Logical Interconnect Group must reside in Bays 3 and 6 in order to be reconfigured.

When using this Cmdlet, a service outage will occur, as the Logical Enclosure will need to be recreated. This means Server Profiles will be unassigned, Logical Enclosure removed then recreated, and then Server Profiles reassigned to their original location. If the Logical Enclosure contains HPE Synergy SAS Logical Interconnects, data loss may occur, as the Server Profiles may not be assigned in the right order, which would cause disk selection to assign different physical disks. Please make sure all data is backed up prior to migration. By Default, the Cmdlet will not migrate a Logical Enclosure if SAS Logical Interconnects are found. To override, use the `-IgnoreSasLogicalInterconnects` switch, which again may cause loss of data.

Any associated Enclosure Groups with the Virtual Connect Ethernet Logical Interconnect Group will also be modified. If this is not intended, you should first remove the Logical Interconnect Group from the Enclosure Group before executing this Cmdlet.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Confirm &lt;SwitchParameter&gt;

| Aliases | cf |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -DeploymentNetwork &lt;Object&gt; 

Provide the Deployment Network object. Must be associated with a valid IPv4 Subnet that is within the same subnet as the Composer.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Provide the Logical Enclosure resource object or name that will be recreated.

| Aliases | EnclosureGroup, EG |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -UplinkPorts &lt;Array&gt; 

Specify 4 redundant Uplink Ports.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | @\("Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.1","Enclosure2:Bay6:Q2.1"\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -UplinkSetName &lt;Name&gt; 

The Uplink Set Name to be added.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -WhatIf &lt;SwitchParameter&gt;

| Aliases | wi |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.LogicalEnclosure \[System.Management.Automation.PSCustomObject\]**_

HPE Synergy Logical Enclosure to convert.

### Return Values

_**System.Management.Automation.PSCustomObject**_

If the Logical Enclosure cannot be removed or re-created, as PSCustomObject with original Server Profile location is provided. Object properties are Name, ProfileUri, ServerSerialNumber.

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

The async task for each Server Profile that will be re-assigned for the caller to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$LE = Get-HPOVLogicalEnclosure -Name MyLE1 -ErrorAction Stop
$UplinkPorts = @("Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1")
$UplinkSetName = "ImageStreamer UplinkSet"
$DeploymentNetwork = Get-HPOVNetwork -Name "ImageStreamer Deployment" -ErrorAction Stop
ConvertTo-HPOVImageStreamerConfiguration -InputObject $le -UplinkSetName $UplinkSetName -UplinkPorts $UplinkPorts -DeploymentNetwork $DeploymentNetwork -IgnoreSasLogicalInterconnects
```

Convert the MyLE1 Logical Enclosure to support Image Streamer, specifying uplink ports, OS Deployment Network and to ignore found SAS Logical Interconnects if found. 

### Related Links

##  HPE OneView 4.20 Library

###  Syntax

```text
ConvertTo-HPOVImageStreamerConfiguration [-InputObject] <Object> [-UplinkSetName] <Name> [-DeploymentNetwork] <Object> [[-UplinkPorts] <Array>] [[-ApplianceConnection] <Object>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

Convert Logical Enclosure and associated Enclosure Group and Logical Interconnect Group to support Internal Image Streamer configuration. HPE Synergy Virtual Connect Logical Interconnect Group must reside in Bays 3 and 6 in order to be reconfigured.

When using this Cmdlet, a service outage will occur, as the Logical Enclosure will need to be recreated. This means Server Profiles will be unassigned, Logical Enclosure removed then recreated, and then Server Profiles reassigned to their original location. If the Logical Enclosure contains HPE Synergy SAS Logical Interconnects, data loss may occur, as the Server Profiles may not be assigned in the right order, which would cause disk selection to assign different physical disks. Please make sure all data is backed up prior to migration. By Default, the Cmdlet will not migrate a Logical Enclosure if SAS Logical Interconnects are found. To override, use the `-IgnoreSasLogicalInterconnects` switch, which again may cause loss of data.

Any associated Enclosure Groups with the Virtual Connect Ethernet Logical Interconnect Group will also be modified. If this is not intended, you should first remove the Logical Interconnect Group from the Enclosure Group before executing this Cmdlet.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Confirm &lt;SwitchParameter&gt;

| Aliases | cf |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -DeploymentNetwork &lt;Object&gt; 

Provide the Deployment Network object. Must be associated with a valid IPv4 Subnet that is within the same subnet as the Composer.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Provide the Logical Enclosure resource object or name that will be recreated.

| Aliases | EnclosureGroup, EG |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -UplinkPorts &lt;Array&gt; 

Specify 4 redundant Uplink Ports.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | @\("Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.1","Enclosure2:Bay6:Q2.1"\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -UplinkSetName &lt;Name&gt; 

The Uplink Set Name to be added.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -WhatIf &lt;SwitchParameter&gt;

| Aliases | wi |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.LogicalEnclosure \[System.Management.Automation.PSCustomObject\]**_

HPE Synergy Logical Enclosure to convert.

### Return Values

_**System.Management.Automation.PSCustomObject**_

If the Logical Enclosure cannot be removed or re-created, as PSCustomObject with original Server Profile location is provided. Object properties are Name, ProfileUri, ServerSerialNumber.

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

The async task for each Server Profile that will be re-assigned for the caller to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$LE = Get-HPOVLogicalEnclosure -Name MyLE1 -ErrorAction Stop
$UplinkPorts = @("Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1")
$UplinkSetName = "ImageStreamer UplinkSet"
$DeploymentNetwork = Get-HPOVNetwork -Name "ImageStreamer Deployment" -ErrorAction Stop
ConvertTo-HPOVImageStreamerConfiguration -InputObject $le -UplinkSetName $UplinkSetName -UplinkPorts $UplinkPorts -DeploymentNetwork $DeploymentNetwork -IgnoreSasLogicalInterconnects
```

Convert the MyLE1 Logical Enclosure to support Image Streamer, specifying uplink ports, OS Deployment Network and to ignore found SAS Logical Interconnects if found. 

### Related Links

##  HPE OneView 4.10 Library

###  Syntax

```text
ConvertTo-HPOVImageStreamerConfiguration [-InputObject] <Object> [-UplinkSetName] <Name> [-DeploymentNetwork] <Object> [[-UplinkPorts] <Array>] [[-ApplianceConnection] <Object>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

Convert Logical Enclosure and associated Enclosure Group and Logical Interconnect Group to support Internal Image Streamer configuration. HPE Synergy Virtual Connect Logical Interconnect Group must reside in Bays 3 and 6 in order to be reconfigured.

When using this Cmdlet, a service outage will occur, as the Logical Enclosure will need to be recreated. This means Server Profiles will be unassigned, Logical Enclosure removed then recreated, and then Server Profiles reassigned to their original location. If the Logical Enclosure contains HPE Synergy SAS Logical Interconnects, data loss may occur, as the Server Profiles may not be assigned in the right order, which would cause disk selection to assign different physical disks. Please make sure all data is backed up prior to migration. By Default, the Cmdlet will not migrate a Logical Enclosure if SAS Logical Interconnects are found. To override, use the `-IgnoreSasLogicalInterconnects` switch, which again may cause loss of data.

Any associated Enclosure Groups with the Virtual Connect Ethernet Logical Interconnect Group will also be modified. If this is not intended, you should first remove the Logical Interconnect Group from the Enclosure Group before executing this Cmdlet.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Confirm &lt;SwitchParameter&gt;

| Aliases | cf |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -DeploymentNetwork &lt;Object&gt; 

Provide the Deployment Network object. Must be associated with a valid IPv4 Subnet that is within the same subnet as the Composer.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Provide the Logical Enclosure resource object or name that will be recreated.

| Aliases | EnclosureGroup, EG |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -UplinkPorts &lt;Array&gt; 

Specify 4 redundant Uplink Ports.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | @\("Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.1","Enclosure2:Bay6:Q2.1"\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -UplinkSetName &lt;Name&gt; 

The Uplink Set Name to be added.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -WhatIf &lt;SwitchParameter&gt;

| Aliases | wi |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.LogicalEnclosure \[System.Management.Automation.PSCustomObject\]**_

HPE Synergy Logical Enclosure to convert.

### Return Values

_**System.Management.Automation.PSCustomObject**_

If the Logical Enclosure cannot be removed or re-created, as PSCustomObject with original Server Profile location is provided. Object properties are Name, ProfileUri, ServerSerialNumber.

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

The async task for each Server Profile that will be re-assigned for the caller to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$LE = Get-HPOVLogicalEnclosure -Name MyLE1 -ErrorAction Stop
$UplinkPorts = @("Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1")
$UplinkSetName = "ImageStreamer UplinkSet"
$DeploymentNetwork = Get-HPOVNetwork -Name "ImageStreamer Deployment" -ErrorAction Stop
ConvertTo-HPOVImageStreamerConfiguration -InputObject $le -UplinkSetName $UplinkSetName -UplinkPorts $UplinkPorts -DeploymentNetwork $DeploymentNetwork -IgnoreSasLogicalInterconnects
```

Convert the MyLE1 Logical Enclosure to support Image Streamer, specifying uplink ports, OS Deployment Network and to ignore found SAS Logical Interconnects if found. 

### Related Links

 

