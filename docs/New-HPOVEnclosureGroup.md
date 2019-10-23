<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVEnclosureGroup
<p>
Create an Enclosure Group.

### SYNTAX
<p>
<pre><code>New-HPOVEnclosureGroup [-Name] &lt;String&gt; [-LogicalInterconnectGroupMapping] &lt;Object&gt;[ [-PowerRedundantMode] &lt;String&gt;][ [-ConfigurationScript] &lt;String&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVEnclosureGroup [-Name] &lt;String&gt;[ [-DiscoverFromEnclosure] &lt;SwitchParameter&gt;] [-OAAddress] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;String&gt;[ [-PowerRedundantMode] &lt;String&gt;][ [-ConfigurationScript] &lt;String&gt;] [-LigPrefix] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVEnclosureGroup [-Name] &lt;String&gt; [-LogicalInterconnectGroupMapping] &lt;Object&gt; [-EnclosureCount] &lt;Int32&gt;[ [-PowerRedundantMode] &lt;String&gt;][ [-IPv4AddressType] &lt;String&gt;][ [-IPv4AddressRange] &lt;Object&gt;][ [-IPv6AddressType] &lt;string&gt;][ [-IPv6AddressRange] &lt;Object&gt;][ [-DeploymentNetworkType] &lt;String&gt;][ [-DeploymentNetwork] &lt;Object&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVEnclosureGroup [-ImportFile] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
An enclosure group is a logical resource that defines a standard configuration for member logical enclosures. The network connectivity for an enclosure group is defined by the logical interconnect groups associated with the enclosure group. When configuring an HPE Synergy enclosure group, it may contain up to five enclosures.  When configuring an HPE BladeSystem C-Class enclosure group, it will only contain a single enclosure.

Enclosure groups and logical interconnect groups

	* A logical interconnect group that is assigned to a bay within an enclosure group must have that bay populated within the logical interconnect group.
	* All populated bays in a logical interconnect group must be assigned to the enclosure group. For example, a logical interconnect group that has bays 1 and 2 populated must be assigned to bays 1 and 2 of the enclosure group in order for the enclosure group to be created.
	* An enclosure group can contain logical interconnect groups that are highly available, redundant, A-side only, or A-side and B-side. See About interconnect bay sets.
	* Synergy multiple-enclosure logical interconnect groups must have the proper bays populated in all enclosures in the interconnect link topology.
	* Synergy single-enclosure logical interconnect groups, such as a Serial Attached SCSI (SAS) logical interconnect group, can be applied to individual bays in individual enclosures in the interconnect link topology.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurationScript &lt;String&gt;<p>
An Onboard Administrator CLI Script. Only applicable for HPE BladeSystem C-Class.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeploymentNetwork &lt;Object&gt;<p>
The Ethernet Network with the purpose property set to Management.  Must also include DeploymentNetworkType parameter, value must be "External", with the Ethernet Network associated with a non-ImageStreamer Uplink Set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeploymentNetworkType &lt;String&gt;<p>
Specify the Synergy Image Stream deployment network type.  Allowed values:

	* Internal - Deployment network is an internal, managed by the Frame links, which Logical Intercoonect Group must have an ImageStreamer Uplink Set.
	* External - Deployment network is connected to an External management switch.
	* None - No deployment network will be configured.

Default: None

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DiscoverFromEnclosure &lt;SwitchParameter&gt;<p>
Use this parameter for the appliance to create an Enclosure Group and associated Logical Interconnect Group by "discovering" the Enclosure and support interconnects.  The target Enclosure must not already be claimed by another external manager (i.e. HPE OneView), as the API will reject the request.

No Uplink Sets will be created. They will need to be added using the New-HPOVUplinkSet Cmdlet once the Logical Interconnect Group resource has been created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureCount &lt;Int32&gt;<p>
Specify the number of Synergy Frames will participate within the Enclosure Group.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4AddressRange &lt;Object&gt;<p>
[Alias -AddressPool]

The IPv4 Address Pool object from Get-HPOVAddressPoolRange.

<table><tbody><tr><td>Aliases</td><td>AddressPool</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4AddressType &lt;String&gt;<p>
Use to specify how the IPv4 Addresses will be assigned to Synergy resources management interface(s).  Allowed values:

	* External -  The IPv4 address is managed externally, static assignment. 
	* DHCP -  The IPv4 address is assigned using DHCP. 
	* AddressPool - The IPv4 address is assigned from a pool of IP addresses specified by the AddressPool parameter, similar to HPE BladeSystem C-Class "Enclosure Bay IP Addressing" (aka EBIPA). 

Default: DHCP

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>DHCP</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6AddressRange &lt;Object&gt;<p>
The IPv6 Address Pool object from Get-HPOVAddressPoolRange.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6AddressType &lt;string&gt;<p>
Use to specify how the IPv6 Addresses will be assigned to Synergy resources management interface(s).  Allowed values:

	* External -  The IPv4 address is managed externally, static assignment. 
	* DHCP -  The IPv4 address is assigned using DHCP. 
	* AddressPool - The IPv4 address is assigned from a pool of IP addresses specified by the AddressPool parameter, similar to HPE BladeSystem C-Class "Enclosure Bay IP Addressing" (aka EBIPA). 

Default: None

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ImportFile &lt;String&gt;<p>
Provide the full path and file name of the JSON file.

<table><tbody><tr><td>Aliases</td><td>i, import</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LigPrefix &lt;String&gt;<p>
If specified, the Logical Interconnect Group that is created will be used in the "{LigPrefix} Logical Interconnect Group".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnectGroupMapping &lt;Object&gt;<p>
Aliases [-logicalInterconnectGroupUri, -logicalInterConnectGroup]

An Enclosure Group can reference multiple Logical Interconnect Groups, once per Interconnect Bay.  If a Single Logical Interconnect Group object is provided (either via parameter variable or via Pipeline), the Logical Interconnect Group objects Logical Interconnect Bay configuration will be used.

To specify a specific C-Class Logical Interconnect Group(s) for one or more Interconnect Bays, use a Hashtable, with the Bay ID as the Key, and Logical Interconnect Group Name, URI or Object as the Value.  Example:

$LogicalInterConnectGroupMapping = @{ 1 = "MyLIg1"; 2 = "MyLig1"; 5 = "OtherLIG"; 6 = "OtherLIG"}

$MyLig1 = Get-HPOVLogicalInterconnectGroup -Name MyLig1
$OtherLIG = Get-HPOVLogicalInterconnectGroup OtherLIG
$LogicalInterConnectGroupMapping = @{ 1 = $MyLig1; 2 = $MyLig1; 5 = $OtherLIG; 6 = $OtherLIG"

When attempting to define a Syenrgy-based Enclosure Group, either an Array or Hashtable is allowed.  If an Array of Logical Interconnect Groups are provided, the Cmdlet will determine the Interconnect placement automatically. Example:

$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
$LogicalInterConnectGroupMapping = $MySynergyLig1
#or
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
$MySynergyLig2 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig2
$LogicalInterConnectGroupMapping = $MySynergyLig1,$MySynergyLig2


Do know that SAS and VC FC LIGs are bound to a single frame, and will not reference other Frames if FrameCount is greater than 1.

Use a Hashtable to bind specific LIGs to specific Frames.  The Interconnect placement will be determined automatically based on either the Hashtable Key name "Frame#" (where # is the numerical value of the Frame) or Enclosure Index value (depending if a SAS or Synergy VC FC LIG).  Example:

$3FrameVCLIG = Get-HPOVLogicalInterconnectGroup -Name "My MultiFrame Synergy LIG 1"
$SasLIG = Get-HPOVLogicalInterconnectGroup -Name "My Synergy Sas LIG 1"
$LogicalInterconnectGroupMapping = @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG }

<table><tbody><tr><td>Aliases</td><td>logicalInterconnectGroupUri, logicalInterconnectGroup</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A name for the new enclosure group.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAAddress &lt;String&gt;<p>
Provide the Onboard Administrator IP Address or FQDN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
Provide an Onboard Administrator administrator password.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerRedundantMode &lt;String&gt;<p>
The Power Redundancy Mode to set when an Enclosure is added to the appliance.

Allowed Values:

	* RedundantPowerFeed - Provides N+N Power Redundancy Configuration
	* RedundantPowerSupply - Provided N+1 Power Redundancy Configuration

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>RedundantPowerFeed</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide an Onboard Administrator administrator account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnectGroup [System.Management.Automation.PSCustomObject]**_

 Single Logical Interconnect Group resource object



### Return Values

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

The newly created enclosure group resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$mylig = Get-HPOVLogicalInterconnectGroup -name "myLogicalInterconnectGroup"
New-HPOVEnclosureGroup -name "MyGroup" -logicalInterConnectGroup $mylig

</pre>
Get the "myLogicalInterconnectGroup" object and pass it to create the "MyGroup" Enclosure Group.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Prodlig = Get-HPOVLogicalInterconnectGroup -name "Production LIG"
$DMZlig = Get-HPOVLogicalInterconnectGroup -name "DMZ LIG"
$ConfigurationScript = "#Configure Insight Remote Support CentralConnect
>>  ENABLE REMOTE_SUPPORT IRS 80.80.1.14 7906"
New-HPOVEnclosureGroup -name "Production Enclosure Group 1" -LogicalInterconnectGroupMapping @{1 = $Prodlig; 2 = $Prodlig; 5 = $DMZlig; 6 = $DMZlig} -ConfigurationScript $ConfigurationScript

</pre>
Get two different Logical Interconnect Groups, define an OA Configuration Script, then assign the LIGs to the specific Interconnect Bays for appliance "MyAppliance1.domain.com".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVEnclosureGroup -name "MyGroup" -DiscoverFromEnclosure -OAAddress MyOAIP.domain.com -Username Administrator -Password MyPassword
</pre>
Connect to the provided Onboard Administrator, detect the Interconnect Bay population to then create both a Logical Interconnect Group and associate it with the Enclosure Group being requested.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
New-HPOVEnclosureGroup -name "MyGroup" -DiscoverFromEnclosure -OAAddress MyOAIP.domain.com -Username Administrator -Password MyPassword -LigPrefix "My LIG Policy"
</pre>
Connect to the provided Onboard Administrator, detect the Interconnect Bay population to then create both a Logical Interconnect Group ("My LIG Policy") and associate it with the Enclosure Group being requested.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping $MySynergyLig1 -EnclosureCount 3 -IPv4AddressType DHCP
</pre>
Create a 3-Frame Synergy Enclosure Group using a single Logical Interconnect Group.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType DHCP
</pre>
Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$AddressPool = Get-HPOVAddressPoolSubnet -NetworkId "10.140.51.0" -ErrorAction Stop | Get-HPOVAddressPoolRange
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType AddressPool -AddressPool $AddressPool -DeploymentNetworkType Internal
</pre>
Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame, with ImageStreamer support using a LIG with an ImageStreamer Uplink Set (aka Internal)..


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
$AddressPool = Get-HPOVAddressPoolSubnet -NetworkId "10.140.51.0" -ErrorAction Stop | Get-HPOVAddressPoolRange
$DeploymentNetwork = Get-HPOVNetwork -Name "Deployment Network" -ErrorAction Stop
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType AddressPool -AddressPool $AddressPool -DeploymentNetworkType External -DeploymentNetwork $DeploymentNetwork
</pre>
Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame, with ImageStreamer support using a LIG without an ImageStreamer Uplink Set and specifying which Ethernet Network object is the deployment network (aka External).



### Related Links

* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVEnclosureGroup
<p>
Create an Enclosure Group.

### SYNTAX
<p>
<pre><code>New-HPOVEnclosureGroup [-Name] &lt;String&gt; [-LogicalInterconnectGroupMapping] &lt;Object&gt;[ [-PowerRedundantMode] &lt;String&gt;][ [-ConfigurationScript] &lt;String&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVEnclosureGroup [-Name] &lt;String&gt;[ [-DiscoverFromEnclosure] &lt;SwitchParameter&gt;] [-OAAddress] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;String&gt;[ [-PowerRedundantMode] &lt;String&gt;][ [-ConfigurationScript] &lt;String&gt;] [-LigPrefix] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVEnclosureGroup [-Name] &lt;String&gt; [-LogicalInterconnectGroupMapping] &lt;Object&gt; [-EnclosureCount] &lt;Int32&gt;[ [-PowerRedundantMode] &lt;String&gt;][ [-IPv4AddressType] &lt;String&gt;] [-AddressPool] &lt;Object&gt;[ [-DeploymentNetworkType] &lt;String&gt;][ [-DeploymentNetwork] &lt;Object&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVEnclosureGroup [-ImportFile] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
An enclosure group is a logical resource that defines a standard configuration for member logical enclosures. The network connectivity for an enclosure group is defined by the logical interconnect groups associated with the enclosure group. When configuring an HPE Synergy enclosure group, it may contain up to five enclosures.  When configuring an HPE BladeSystem C-Class enclosure group, it will only contain a single enclosure.

Enclosure groups and logical interconnect groups

	* A logical interconnect group that is assigned to a bay within an enclosure group must have that bay populated within the logical interconnect group.
	* All populated bays in a logical interconnect group must be assigned to the enclosure group. For example, a logical interconnect group that has bays 1 and 2 populated must be assigned to bays 1 and 2 of the enclosure group in order for the enclosure group to be created.
	* An enclosure group can contain logical interconnect groups that are highly available, redundant, A-side only, or A-side and B-side. See About interconnect bay sets.
	* Synergy multiple-enclosure logical interconnect groups must have the proper bays populated in all enclosures in the interconnect link topology.
	* Synergy single-enclosure logical interconnect groups, such as a Serial Attached SCSI (SAS) logical interconnect group, can be applied to individual bays in individual enclosures in the interconnect link topology.


### Parameters

-AddressPool &lt;Object&gt;<p>
The IPv4 Address Pool object from Get-HPOVAddressPoolRange.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurationScript &lt;String&gt;<p>
An Onboard Administrator CLI Script. Only applicable for HPE BladeSystem C-Class.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeploymentNetwork &lt;Object&gt;<p>
The Ethernet Network with the purpose property set to Management.  Must also include DeploymentNetworkType parameter, value must be "External", with the Ethernet Network associated with a non-ImageStreamer Uplink Set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeploymentNetworkType &lt;String&gt;<p>
Specify the Synergy Image Stream deployment network type.  Allowed values:

	* Internal - Deployment network is an internal, managed by the Frame links, which Logical Intercoonect Group must have an ImageStreamer Uplink Set.
	* External - Deployment network is connected to an External management switch.
	* None - No deployment network will be configured.

Default: None

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DiscoverFromEnclosure &lt;SwitchParameter&gt;<p>
Use this parameter for the appliance to create an Enclosure Group and associated Logical Interconnect Group by "discovering" the Enclosure and support interconnects.  The target Enclosure must not already be claimed by another external manager (i.e. HPE OneView), as the API will reject the request.

No Uplink Sets will be created. They will need to be added using the New-HPOVUplinkSet Cmdlet once the Logical Interconnect Group resource has been created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureCount &lt;Int32&gt;<p>
Specify the number of Synergy Frames will participate within the Enclosure Group.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4AddressType &lt;String&gt;<p>
Use to specify how the IPv4 Addresses will be assigned to Synergy resources management interface(s).  Allowed values:

	* External -  The IPv4 address is managed externally, static assignment. 
	* DHCP -  The IPv4 address is assigned using DHCP. 
	* AddressPool - The IPv4 address is assigned from a pool of IP addresses specified by the AddressPool parameter, similar to HPE BladeSystem C-Class "Enclosure Bay IP Addressing" (aka EBIPA). 

Default: DHCP

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>DHCP</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ImportFile &lt;String&gt;<p>
Provide the full path and file name of the JSON file.

<table><tbody><tr><td>Aliases</td><td>i, import</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LigPrefix &lt;String&gt;<p>
If specified, the Logical Interconnect Group that is created will be used in the "{LigPrefix} Logical Interconnect Group".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnectGroupMapping &lt;Object&gt;<p>
Aliases [-logicalInterconnectGroupUri, -logicalInterConnectGroup]

An Enclosure Group can reference multiple Logical Interconnect Groups, once per Interconnect Bay.  If a Single Logical Interconnect Group object is provided (either via parameter variable or via Pipeline), the Logical Interconnect Group objects Logical Interconnect Bay configuration will be used.

To specify a specific C-Class Logical Interconnect Group(s) for one or more Interconnect Bays, use a Hashtable, with the Bay ID as the Key, and Logical Interconnect Group Name, URI or Object as the Value.  Example:

$LogicalInterConnectGroupMapping = @{ 1 = "MyLIg1"; 2 = "MyLig1"; 5 = "OtherLIG"; 6 = "OtherLIG"}

$MyLig1 = Get-HPOVLogicalInterconnectGroup -Name MyLig1
$OtherLIG = Get-HPOVLogicalInterconnectGroup OtherLIG
$LogicalInterConnectGroupMapping = @{ 1 = $MyLig1; 2 = $MyLig1; 5 = $OtherLIG; 6 = $OtherLIG"

When attempting to define a Syenrgy-based Enclosure Group, either an Array or Hashtable is allowed.  If an Array of Logical Interconnect Groups are provided, the Cmdlet will determine the Interconnect placement automatically. Example:

$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
$LogicalInterConnectGroupMapping = $MySynergyLig1
#or
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
$MySynergyLig2 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig2
$LogicalInterConnectGroupMapping = $MySynergyLig1,$MySynergyLig2


Do know that SAS and VC FC LIGs are bound to a single frame, and will not reference other Frames if FrameCount is greater than 1.

Use a Hashtable to bind specific LIGs to specific Frames.  The Interconnect placement will be determined automatically based on either the Hashtable Key name "Frame#" (where # is the numerical value of the Frame) or Enclosure Index value (depending if a SAS or Synergy VC FC LIG).  Example:

$3FrameVCLIG = Get-HPOVLogicalInterconnectGroup -Name "My MultiFrame Synergy LIG 1"
$SasLIG = Get-HPOVLogicalInterconnectGroup -Name "My Synergy Sas LIG 1"
$LogicalInterconnectGroupMapping = @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG }

<table><tbody><tr><td>Aliases</td><td>logicalInterconnectGroupUri, logicalInterconnectGroup</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A name for the new enclosure group.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAAddress &lt;String&gt;<p>
Provide the Onboard Administrator IP Address or FQDN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
Provide an Onboard Administrator administrator password.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerRedundantMode &lt;String&gt;<p>
The Power Redundancy Mode to set when an Enclosure is added to the appliance.

Allowed Values:

	* RedundantPowerFeed - Provides N+N Power Redundancy Configuration
	* RedundantPowerSupply - Provided N+1 Power Redundancy Configuration

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>RedundantPowerFeed</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide an Onboard Administrator administrator account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnectGroup [System.Management.Automation.PSCustomObject]**_

 Single Logical Interconnect Group resource object



### Return Values

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

The newly created enclosure group resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$mylig = Get-HPOVLogicalInterconnectGroup -name "myLogicalInterconnectGroup"
New-HPOVEnclosureGroup -name "MyGroup" -logicalInterConnectGroup $mylig

</pre>
Get the "myLogicalInterconnectGroup" object and pass it to create the "MyGroup" Enclosure Group.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Prodlig = Get-HPOVLogicalInterconnectGroup -name "Production LIG"
$DMZlig = Get-HPOVLogicalInterconnectGroup -name "DMZ LIG"
$ConfigurationScript = "#Configure Insight Remote Support CentralConnect
>>  ENABLE REMOTE_SUPPORT IRS 80.80.1.14 7906"
New-HPOVEnclosureGroup -name "Production Enclosure Group 1" -LogicalInterconnectGroupMapping @{1 = $Prodlig; 2 = $Prodlig; 5 = $DMZlig; 6 = $DMZlig} -ConfigurationScript $ConfigurationScript

</pre>
Get two different Logical Interconnect Groups, define an OA Configuration Script, then assign the LIGs to the specific Interconnect Bays for appliance "MyAppliance1.domain.com".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVEnclosureGroup -name "MyGroup" -DiscoverFromEnclosure -OAAddress MyOAIP.domain.com -Username Administrator -Password MyPassword
</pre>
Connect to the provided Onboard Administrator, detect the Interconnect Bay population to then create both a Logical Interconnect Group and associate it with the Enclosure Group being requested.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
New-HPOVEnclosureGroup -name "MyGroup" -DiscoverFromEnclosure -OAAddress MyOAIP.domain.com -Username Administrator -Password MyPassword -LigPrefix "My LIG Policy"
</pre>
Connect to the provided Onboard Administrator, detect the Interconnect Bay population to then create both a Logical Interconnect Group ("My LIG Policy") and associate it with the Enclosure Group being requested.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping $MySynergyLig1 -EnclosureCount 3 -IPv4AddressType DHCP
</pre>
Create a 3-Frame Synergy Enclosure Group using a single Logical Interconnect Group.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType DHCP
</pre>
Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$AddressPool = Get-HPOVAddressPoolSubnet -NetworkId "10.140.51.0" -ErrorAction Stop | Get-HPOVAddressPoolRange
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType AddressPool -AddressPool $AddressPool -DeploymentNetworkType Internal
</pre>
Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame, with ImageStreamer support using a LIG with an ImageStreamer Uplink Set (aka Internal)..


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
$AddressPool = Get-HPOVAddressPoolSubnet -NetworkId "10.140.51.0" -ErrorAction Stop | Get-HPOVAddressPoolRange
$DeploymentNetwork = Get-HPOVNetwork -Name "Deployment Network" -ErrorAction Stop
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType AddressPool -AddressPool $AddressPool -DeploymentNetworkType External -DeploymentNetwork $DeploymentNetwork
</pre>
Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame, with ImageStreamer support using a LIG without an ImageStreamer Uplink Set and specifying which Ethernet Network object is the deployment network (aka External).



### Related Links

* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVEnclosureGroup
<p>
Create an Enclosure Group.

### SYNTAX
<p>
<pre><code>New-HPOVEnclosureGroup [-Name] &lt;String&gt; [-LogicalInterconnectGroupMapping] &lt;Object&gt;[ [-PowerRedundantMode] &lt;String&gt;][ [-ConfigurationScript] &lt;String&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVEnclosureGroup [-Name] &lt;String&gt;[ [-DiscoverFromEnclosure] &lt;SwitchParameter&gt;] [-OAAddress] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;String&gt;[ [-PowerRedundantMode] &lt;String&gt;][ [-ConfigurationScript] &lt;String&gt;] [-LigPrefix] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVEnclosureGroup [-Name] &lt;String&gt; [-LogicalInterconnectGroupMapping] &lt;Object&gt; [-EnclosureCount] &lt;Int32&gt;[ [-PowerRedundantMode] &lt;String&gt;][ [-IPv4AddressType] &lt;String&gt;] [-AddressPool] &lt;Object&gt;[ [-DeploymentNetworkType] &lt;String&gt;][ [-DeploymentNetwork] &lt;Object&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVEnclosureGroup [-ImportFile] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
An enclosure group is a logical resource that defines a standard configuration for member logical enclosures. The network connectivity for an enclosure group is defined by the logical interconnect groups associated with the enclosure group. When configuring an HPE Synergy enclosure group, it may contain up to five enclosures.  When configuring an HPE BladeSystem C-Class enclosure group, it will only contain a single enclosure.

Enclosure groups and logical interconnect groups

	* A logical interconnect group that is assigned to a bay within an enclosure group must have that bay populated within the logical interconnect group.
	* All populated bays in a logical interconnect group must be assigned to the enclosure group. For example, a logical interconnect group that has bays 1 and 2 populated must be assigned to bays 1 and 2 of the enclosure group in order for the enclosure group to be created.
	* An enclosure group can contain logical interconnect groups that are highly available, redundant, A-side only, or A-side and B-side. See About interconnect bay sets.
	* Synergy multiple-enclosure logical interconnect groups must have the proper bays populated in all enclosures in the interconnect link topology.
	* Synergy single-enclosure logical interconnect groups, such as a Serial Attached SCSI (SAS) logical interconnect group, can be applied to individual bays in individual enclosures in the interconnect link topology.


### Parameters

-AddressPool &lt;Object&gt;<p>
The IPv4 Address Pool object from Get-HPOVAddressPoolRange.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurationScript &lt;String&gt;<p>
An Onboard Administrator CLI Script. Only applicable for HPE BladeSystem C-Class.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeploymentNetwork &lt;Object&gt;<p>
The Ethernet Network with the purpose property set to Management.  Must also include DeploymentNetworkType parameter, value must be "External", with the Ethernet Network associated with a non-ImageStreamer Uplink Set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeploymentNetworkType &lt;String&gt;<p>
Specify the Synergy Image Stream deployment network type.  Allowed values:

	* Internal - Deployment network is an internal, managed by the Frame links, which Logical Intercoonect Group must have an ImageStreamer Uplink Set.
	* External - Deployment network is connected to an External management switch.
	* None - No deployment network will be configured.

Default: None

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DiscoverFromEnclosure &lt;SwitchParameter&gt;<p>
Use this parameter for the appliance to create an Enclosure Group and associated Logical Interconnect Group by "discovering" the Enclosure and support interconnects.  The target Enclosure must not already be claimed by another external manager (i.e. HPE OneView), as the API will reject the request.

No Uplink Sets will be created. They will need to be added using the New-HPOVUplinkSet Cmdlet once the Logical Interconnect Group resource has been created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureCount &lt;Int32&gt;<p>
Specify the number of Synergy Frames will participate within the Enclosure Group.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4AddressType &lt;String&gt;<p>
Use to specify how the IPv4 Addresses will be assigned to Synergy resources management interface(s).  Allowed values:

	* External -  The IPv4 address is managed externally, static assignment. 
	* DHCP -  The IPv4 address is assigned using DHCP. 
	* AddressPool - The IPv4 address is assigned from a pool of IP addresses specified by the AddressPool parameter, similar to HPE BladeSystem C-Class "Enclosure Bay IP Addressing" (aka EBIPA). 

Default: DHCP

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>DHCP</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ImportFile &lt;String&gt;<p>
Provide the full path and file name of the JSON file.

<table><tbody><tr><td>Aliases</td><td>i, import</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LigPrefix &lt;String&gt;<p>
If specified, the Logical Interconnect Group that is created will be used in the "{LigPrefix} Logical Interconnect Group".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnectGroupMapping &lt;Object&gt;<p>
Aliases [-logicalInterconnectGroupUri, -logicalInterConnectGroup]

An Enclosure Group can reference multiple Logical Interconnect Groups, once per Interconnect Bay.  If a Single Logical Interconnect Group object is provided (either via parameter variable or via Pipeline), the Logical Interconnect Group objects Logical Interconnect Bay configuration will be used.

To specify a specific C-Class Logical Interconnect Group(s) for one or more Interconnect Bays, use a Hashtable, with the Bay ID as the Key, and Logical Interconnect Group Name, URI or Object as the Value.  Example:

$LogicalInterConnectGroupMapping = @{ 1 = "MyLIg1"; 2 = "MyLig1"; 5 = "OtherLIG"; 6 = "OtherLIG"}

$MyLig1 = Get-HPOVLogicalInterconnectGroup -Name MyLig1
$OtherLIG = Get-HPOVLogicalInterconnectGroup OtherLIG
$LogicalInterConnectGroupMapping = @{ 1 = $MyLig1; 2 = $MyLig1; 5 = $OtherLIG; 6 = $OtherLIG"

When attempting to define a Syenrgy-based Enclosure Group, either an Array or Hashtable is allowed.  If an Array of Logical Interconnect Groups are provided, the Cmdlet will determine the Interconnect placement automatically. Example:

$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
$LogicalInterConnectGroupMapping = $MySynergyLig1
#or
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
$MySynergyLig2 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig2
$LogicalInterConnectGroupMapping = $MySynergyLig1,$MySynergyLig2


Do know that SAS and VC FC LIGs are bound to a single frame, and will not reference other Frames if FrameCount is greater than 1.

Use a Hashtable to bind specific LIGs to specific Frames.  The Interconnect placement will be determined automatically based on either the Hashtable Key name "Frame#" (where # is the numerical value of the Frame) or Enclosure Index value (depending if a SAS or Synergy VC FC LIG).  Example:

$3FrameVCLIG = Get-HPOVLogicalInterconnectGroup -Name "My MultiFrame Synergy LIG 1"
$SasLIG = Get-HPOVLogicalInterconnectGroup -Name "My Synergy Sas LIG 1"
$LogicalInterconnectGroupMapping = @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG }

<table><tbody><tr><td>Aliases</td><td>logicalInterconnectGroupUri, logicalInterconnectGroup</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A name for the new enclosure group.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAAddress &lt;String&gt;<p>
Provide the Onboard Administrator IP Address or FQDN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
Provide an Onboard Administrator administrator password.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerRedundantMode &lt;String&gt;<p>
The Power Redundancy Mode to set when an Enclosure is added to the appliance.

Allowed Values:

	* RedundantPowerFeed - Provides N+N Power Redundancy Configuration
	* RedundantPowerSupply - Provided N+1 Power Redundancy Configuration

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>RedundantPowerFeed</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide an Onboard Administrator administrator account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnectGroup [System.Management.Automation.PSCustomObject]**_

 Single Logical Interconnect Group resource object



### Return Values

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

The newly created enclosure group resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$mylig = Get-HPOVLogicalInterconnectGroup -name "myLogicalInterconnectGroup"
New-HPOVEnclosureGroup -name "MyGroup" -logicalInterConnectGroup $mylig

</pre>
Get the "myLogicalInterconnectGroup" object and pass it to create the "MyGroup" Enclosure Group.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Prodlig = Get-HPOVLogicalInterconnectGroup -name "Production LIG"
$DMZlig = Get-HPOVLogicalInterconnectGroup -name "DMZ LIG"
$ConfigurationScript = "#Configure Insight Remote Support CentralConnect
>>  ENABLE REMOTE_SUPPORT IRS 80.80.1.14 7906"
New-HPOVEnclosureGroup -name "Production Enclosure Group 1" -LogicalInterconnectGroupMapping @{1 = $Prodlig; 2 = $Prodlig; 5 = $DMZlig; 6 = $DMZlig} -ConfigurationScript $ConfigurationScript

</pre>
Get two different Logical Interconnect Groups, define an OA Configuration Script, then assign the LIGs to the specific Interconnect Bays for appliance "MyAppliance1.domain.com".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVEnclosureGroup -name "MyGroup" -DiscoverFromEnclosure -OAAddress MyOAIP.domain.com -Username Administrator -Password MyPassword
</pre>
Connect to the provided Onboard Administrator, detect the Interconnect Bay population to then create both a Logical Interconnect Group and associate it with the Enclosure Group being requested.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
New-HPOVEnclosureGroup -name "MyGroup" -DiscoverFromEnclosure -OAAddress MyOAIP.domain.com -Username Administrator -Password MyPassword -LigPrefix "My LIG Policy"
</pre>
Connect to the provided Onboard Administrator, detect the Interconnect Bay population to then create both a Logical Interconnect Group ("My LIG Policy") and associate it with the Enclosure Group being requested.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping $MySynergyLig1 -EnclosureCount 3 -IPv4AddressType DHCP
</pre>
Create a 3-Frame Synergy Enclosure Group using a single Logical Interconnect Group.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType DHCP
</pre>
Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$AddressPool = Get-HPOVAddressPoolSubnet -NetworkId "10.140.51.0" -ErrorAction Stop | Get-HPOVAddressPoolRange
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType AddressPool -AddressPool $AddressPool -DeploymentNetworkType Internal
</pre>
Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame, with ImageStreamer support using a LIG with an ImageStreamer Uplink Set (aka Internal)..


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
$AddressPool = Get-HPOVAddressPoolSubnet -NetworkId "10.140.51.0" -ErrorAction Stop | Get-HPOVAddressPoolRange
$DeploymentNetwork = Get-HPOVNetwork -Name "Deployment Network" -ErrorAction Stop
$MySynergyLig1 = Get-HPOVLogicalInterconnectGroup -Name MySynergyLig1
New-HPOVEnclosureGroup -name "My Synergy Enclosure Group 1" -LogicalInterconnectGroupMapping @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG } -EnclosureCount 3 -IPv4AddressType AddressPool -AddressPool $AddressPool -DeploymentNetworkType External -DeploymentNetwork $DeploymentNetwork
</pre>
Create a 3-Frame Synergy Enclosure Group using multiple Logical Interconnect Groups specific to each Frame, with ImageStreamer support using a LIG without an ImageStreamer Uplink Set and specifying which Ethernet Network object is the deployment network (aka External).



### Related Links

* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
