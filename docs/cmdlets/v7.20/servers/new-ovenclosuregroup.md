---
description: Create an Enclosure Group.
---

# New-OVEnclosureGroup

## Syntax

```powershell
New-OVEnclosureGroup
    [-Name] <String>
    [-LogicalInterconnectGroupMapping] <Object>
    [-EnclosureCount] <Int32>
    [-PowerRedundantMode <String>]
    [-IPv4AddressType <String>]
    [-IPv4AddressRange <Object>]
    [-IPv6AddressType <String>]
    [-IPv6AddressRange <Object>]
    [-DeploymentNetworkType <String>]
    [-DeploymentNetwork <Object>]
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVEnclosureGroup
    [-ImportFile] <String>
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

An enclosure group is a logical resource that defines a standard configuration for member logical enclosures. The network connectivity for an enclosure group is defined by the logical interconnect groups associated with the enclosure group. When configuring an HPE Synergy enclosure group, it may contain up to five enclosures.  When configuring an HPE BladeSystem C-Class enclosure group, it will only contain a single enclosure.

Enclosure groups and logical interconnect groups

* A logical interconnect group that is assigned to a bay within an enclosure group must have that bay populated within the logical interconnect group.
* All populated bays in a logical interconnect group must be assigned to the enclosure group. For example, a logical interconnect group that has bays 1 and 2 populated must be assigned to bays 1 and 2 of the enclosure group in order for the enclosure group to be created.
* An enclosure group can contain logical interconnect groups that are highly available, redundant, A-side only, or A-side and B-side. See About interconnect bay sets.
* Synergy multiple-enclosure logical interconnect groups must have the proper bays populated in all enclosures in the interconnect link topology.
* Synergy single-enclosure logical interconnect groups, such as a Serial Attached SCSI (SAS) logical interconnect group, can be applied to individual bays in individual enclosures in the interconnect link topology.

## Examples

###  Example 1 

```powershell
$mylig = Get-OVLogicalInterconnectGroup -name "myLogicalInterconnectGroup"
New-OVEnclosureGroup -name "MyGroup" -logicalInterConnectGroup $mylig
```

Get the "myLogicalInterconnectGroup" object and pass it to create the "MyGroup" Enclosure Group.

###  Example 2 

```powershell
$Prodlig = Get-OVLogicalInterconnectGroup -name "Production LIG"
$DMZlig = Get-OVLogicalInterconnectGroup -name "DMZ LIG"
$ConfigurationScript = "#Configure Insight Remote Support CentralConnect
>>  ENABLE REMOTE_SUPPORT IRS 80.80.1.14 7906"
New-OVEnclosureGroup -name "Production Enclosure Group 1" -LogicalInterconnectGroupMapping @{1 = $Prodlig; 2 = $Prodlig; 5 = $DMZlig; 6 = $DMZlig} -ConfigurationScript $ConfigurationScript
```

Get two different Logical Interconnect Groups, define an OA Configuration Script, then assign the LIGs to the specific Interconnect Bays for appliance "MyAppliance1.domain.com".

###  Example 3 

```powershell
New-OVEnclosureGroup -name "MyGroup" -DiscoverFromEnclosure -OAAddress MyOAIP.domain.com -Username Administrator -Password MyPassword
```

Connect to the provided Onboard Administrator, detect the Interconnect Bay population to then create both a Logical Interconnect Group and associate it with the Enclosure Group being requested.

###  Example 4 

```powershell
New-OVEnclosureGroup -name "MyGroup" -DiscoverFromEnclosure -OAAddress MyOAIP.domain.com -Username Administrator -Password MyPassword -LigPrefix "My LIG Policy"
```

Connect to the provided Onboard Administrator, detect the Interconnect Bay population to then create both a Logical Interconnect Group ("My LIG Policy") and associate it with the Enclosure Group being requested.

###  Example 5 

```powershell
$MySynergyLig1 = Get-OVLogicalInterconnectGroup -Name MySynergyLig1
New-OVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping $MySynergyLig1 -EnclosureCount 3 -IPv4AddressType DHCP
```

Create a 3-Frame Synergy Enclosure Group using a single Logical Interconnect Group.

###  Example 6 

```powershell
$MySynergyLig1 = Get-OVLogicalInterconnectGroup -Name MySynergyLig1
New-OVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType DHCP
```

Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame.

###  Example 7 

```powershell
$AddressPool = Get-OVAddressPoolSubnet -NetworkId "10.140.51.0" -ErrorAction Stop | Get-OVAddressPoolRange
$MySynergyLig1 = Get-OVLogicalInterconnectGroup -Name MySynergyLig1
New-OVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType AddressPool -AddressPool $AddressPool -DeploymentNetworkType Internal
```

Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame, with ImageStreamer support using a LIG with an ImageStreamer Uplink Set (aka Internal).

###  Example 8 

```powershell
$AddressPool = Get-OVAddressPoolSubnet -NetworkId "10.140.51.0" -ErrorAction Stop | Get-OVAddressPoolRange
$DeploymentNetwork = Get-OVNetwork -Name "Deployment Network" -ErrorAction Stop
$MySynergyLig1 = Get-OVLogicalInterconnectGroup -Name MySynergyLig1
New-OVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType AddressPool -AddressPool $AddressPool -DeploymentNetworkType External -DeploymentNetwork $DeploymentNetwork
```

Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame, with ImageStreamer support using a LIG without an ImageStreamer Uplink Set and specifying which Ethernet Network object is the deployment network (aka External).

## Parameters

### -Name &lt;String&gt;

A name for the new enclosure group.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnclosureCount &lt;Int32&gt;

Specify the number of Synergy Frames will participate within the Enclosure Group.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 1 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LogicalInterconnectGroupMapping &lt;Object&gt;

An Enclosure Group can reference multiple Logical Interconnect Groups, once per Interconnect Bay.  If a Single Logical Interconnect Group object is provided (either via parameter variable or via Pipeline), the Logical Interconnect Group objects Logical Interconnect Bay configuration will be used.

To specify a specific C-Class Logical Interconnect Group(s) for one or more Interconnect Bays, use a Hashtable, with the Bay ID as the Key, and Logical Interconnect Group Name, URI or Object as the Value.  Example:

$LogicalInterConnectGroupMapping = @{ 1 = "MyLIg1"; 2 = "MyLig1"; 5 = "OtherLIG"; 6 = "OtherLIG"}

$MyLig1 = Get-OVLogicalInterconnectGroup `-Name` MyLig1
$OtherLIG = Get-OVLogicalInterconnectGroup OtherLIG
$LogicalInterConnectGroupMapping = @{ 1 = $MyLig1; 2 = $MyLig1; 5 = $OtherLIG; 6 = $OtherLIG"

When attempting to define a Syenrgy-based Enclosure Group, either an Array or Hashtable is allowed.  If an Array of Logical Interconnect Groups are provided, the Cmdlet will determine the Interconnect placement automatically. Example:

$MySynergyLig1 = Get-OVLogicalInterconnectGroup `-Name` MySynergyLig1
$LogicalInterConnectGroupMapping = $MySynergyLig1
#or
$MySynergyLig1 = Get-OVLogicalInterconnectGroup `-Name` MySynergyLig1
$MySynergyLig2 = Get-OVLogicalInterconnectGroup `-Name` MySynergyLig2
$LogicalInterConnectGroupMapping = $MySynergyLig1,$MySynergyLig2


Do know that SAS and VC FC LIGs are bound to a single frame, and will not reference other Frames if FrameCount is greater than 1.

Use a Hashtable to bind specific LIGs to specific Frames.  The Interconnect placement will be determined automatically based on either the Hashtable Key name "Frame#" (where # is the numerical value of the Frame) or Enclosure Index value (depending if a SAS or Synergy VC FC LIG).  Example:

$3FrameVCLIG = Get-OVLogicalInterconnectGroup `-Name` "My MultiFrame Synergy LIG 1"
$SasLIG = Get-OVLogicalInterconnectGroup `-Name` "My Synergy Sas LIG 1"
$LogicalInterconnectGroupMapping = @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG }

| Aliases | logicalInterconnectGroupUri, logicalInterconnectGroup |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -PowerRedundantMode &lt;String&gt;

The Power Redundancy Mode to set when an Enclosure is added to the appliance.

Allowed Values:

* RedundantPowerFeed - Provides N+N Power Redundancy Configuration
* RedundantPowerSupply - Provided N+1 Power Redundancy Configuration

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | RedundantPowerFeed |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4AddressType &lt;String&gt;

Use to specify how the IPv4 Addresses will be assigned to Synergy resources management interface(s).  Allowed values:

* External -  The IPv4 address is managed externally, static assignment. 
* DHCP -  The IPv4 address is assigned using DHCP. 
* AddressPool - The IPv4 address is assigned from a pool of IP addresses specified by the AddressPool parameter, similar to HPE BladeSystem C-Class "Enclosure Bay IP Addressing" (aka EBIPA). 

Default: DHCP

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | DHCP |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4AddressRange &lt;Object&gt;

The IPv4 address pool object from Get-OVAddressPoolRange.

| Aliases | AddressPool |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6AddressRange &lt;Object&gt;

The IPv6 address pool object from Get-OVAddressPoolRange.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6AddressType &lt;String&gt;

Use to specify how the IPv6 Addresses will be assigned to Synergy resources management interface(s).  Allowed values:

* External -  The IPv4 address is managed externally, static assignment. 
* DHCP -  The IPv4 address is assigned using DHCP. 
* AddressPool - The IPv4 address is assigned from a pool of IP addresses specified by the AddressPool parameter, similar to HPE BladeSystem C-Class "Enclosure Bay IP Addressing" (aka EBIPA). 

Default: None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DeploymentNetworkType &lt;String&gt;

Specify the Synergy Image Stream deployment network type.  Allowed values:

* Internal - Deployment network is an internal, managed by the Frame links, which Logical Intercoonect Group must have an ImageStreamer Uplink Set.
* External - Deployment network is connected to an External management switch.
* None - No deployment network will be configured.

Default: None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | None |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DeploymentNetwork &lt;Object&gt;

The Ethernet Network with the purpose property set to Management.  Must also include DeploymentNetworkType parameter, value must be "External", with the Ethernet Network associated with a non-ImageStreamer Uplink Set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -ImportFile &lt;String&gt;

Provide the full path and file name of the JSON file.

| Aliases | i, import |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;HPEOneView.Appliance.ScopeCollection[]&gt;

Provide an `[HPEOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-OVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Networking.LogicalInterconnectGroup [System.Management.Automation.PSCustomObject]**_

Single Logical Interconnect Group resource object

## Return Values

_**HPEOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

The newly created enclosure group resource

## Related Links

* [Get-OVEnclosureGroup](get-ovenclosuregroup.md)
* [Remove-OVEnclosureGroup](remove-ovenclosuregroup.md)
* [Set-OVEnclosureGroup](set-ovenclosuregroup.md)
