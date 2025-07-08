---
description: Convert Logical Enclosure to support HPE Image Streamer.
---

# ConvertTo-OVImageStreamerConfiguration

## Syntax

```powershell
ConvertTo-OVImageStreamerConfiguration
    [-InputObject] <Object>
    [-UplinkSetName] <Name>
    [-DeploymentNetwork] <Object>
    [-UplinkPorts <Array>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Convert Logical Enclosure and associated Enclosure Group and Logical Interconnect Group to support Internal Image Streamer configuration.  HPE Synergy Virtual Connect Logical Interconnect Group must reside in Bays 3 and 6 in order to be reconfigured.

When using this Cmdlet, a service outage will occur, as the Logical Enclosure will need to be recreated.  This means Server Profiles will be unassigned, Logical Enclosure removed then recreated, and then Server Profiles reassigned to their original location.  If the Logical Enclosure contains HPE Synergy SAS Logical Interconnects, data loss may occur,
as the Server Profiles may not be assigned in the right order, which would cause disk selection to assign different physical disks.  Please make sure all data is backed up prior to migration.  By Default, the Cmdlet will not migrate a Logical Enclosure if SAS Logical Interconnects are found.  To override, use the `-IgnoreSasLogicalInterconnects` switch,
which again may cause loss of data.

Any associated Enclosure Groups with the Virtual Connect Ethernet Logical Interconnect Group will also be modified.  If this is not intended, you should first remove the Logical Interconnect Group from the Enclosure Group before executing this Cmdlet.

???+ info
    Minimum required privileges: Infrastructure administrator or Server administrator.

## Examples

###  Example 1 

```powershell
$LE = Get-OVLogicalEnclosure -Name MyLE1 -ErrorAction Stop
$UplinkPorts = @("Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1")
$UplinkSetName = "ImageStreamer UplinkSet"
$DeploymentNetwork = Get-OVNetwork -Name "ImageStreamer Deployment" -ErrorAction Stop
ConvertTo-OVImageStreamerConfiguration -InputObject $le -UplinkSetName $UplinkSetName -UplinkPorts $UplinkPorts -DeploymentNetwork $DeploymentNetwork -IgnoreSasLogicalInterconnects
```

Convert the MyLE1 Logical Enclosure to support Image Streamer, specifying uplink ports, OS Deployment Network and to ignore found SAS Logical Interconnects if found.

## Parameters

### -InputObject &lt;Object&gt;

Provide the Logical Enclosure resource object or name that will be recreated.

| Aliases | EnclosureGroup, EG |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -UplinkSetName &lt;Name&gt;

The Uplink Set Name to be added.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UplinkPorts &lt;Array&gt;

Specify 4 redundant Uplink Ports.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | @("Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.1","Enclosure2:Bay6:Q2.1") |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DeploymentNetwork &lt;Object&gt;

Provide the Deployment Network object.  Must be associated with a valid IPv4 Subnet that is within the same subnet as the Composer.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IgnoreSasLogicalInterconnects &lt;Object&gt;

Use to override the convertion if SAS Logical Interconnects are detected.  WARNING: May result in data loss.  Please make sure data is backed up before convertion.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]"
    HPE Synergy Logical Enclosure to convert.
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    If the Logical Enclosure cannot be removed or re-created, as PSCustomObject with original Server Profile location is provided.  Object properties are Name, ProfileUri, ServerSerialNumber.
    

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    The async task for each Server Profile that will be re-assigned for the caller to monitor.
    

## Related Links

