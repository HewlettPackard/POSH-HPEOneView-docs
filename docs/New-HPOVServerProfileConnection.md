<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVServerProfileConnection
<p>
Create network connection for a server profile.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;] [-BootVolumeSource] &lt;String&gt;[ [-Priority] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;] [-BootVolumeSource] &lt;String&gt;[ [-Priority] &lt;String&gt;][ [-LUN] &lt;Int32&gt;][ [-IscsiIPv4AddressSource] &lt;String&gt;][ [-ISCSIInitatorName] &lt;String&gt;][ [-IscsiIPv4Address] &lt;IPAddress&gt;][ [-IscsiIPv4SubnetMask] &lt;String&gt;][ [-IscsiIPv4Gateway] &lt;IPAddress&gt;][ [-IscsiBootTargetIqn] &lt;String&gt;] [-IscsiPrimaryBootTargetAddress] &lt;IPAddress&gt;[ [-IscsiPrimaryBootTargetPort] &lt;Int32&gt;][ [-IscsiSecondaryBootTargetAddress] &lt;IPAddress&gt;][ [-IscsiSecondaryBootTargetPort] &lt;Int32&gt;][ [-IscsiAuthenticationProtocol] &lt;String&gt;][ [-ChapName] &lt;String&gt;][ [-ChapSecret] &lt;SecureString&gt;][ [-MutualChapName] &lt;String&gt;][ [-MutualChapSecret] &lt;SecureString&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-WWNN] &lt;String&gt;][ [-WWPN] &lt;String&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;] [-BootVolumeSource] &lt;String&gt;[ [-Priority] &lt;String&gt;][ [-TargetWwpn] &lt;String&gt;][ [-LUN] &lt;Int32&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-Virtualfunctions] &lt;Int32&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;][ [-Priority] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A helper function to assist with connections when creating (New-HPOVServerProfile) or editing (Set-HPOVProfile) a server profile.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BootVolumeSource &lt;String&gt;<p>
Specify how the Boot Volume Source will be set.  Allowed values are:

	* AdapterBIOS   - Boot from adapter BIOS volume parameters. 
	* ManagedVolume - Boot from a managed volume defined in SAN Storage section. 
	* UserDefined   - Boot from user defined volume parameters.

Default: AdapterBIOS

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AdapterBIOS</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Bootable &lt;SwitchParameter&gt;<p>
Specify to configure bootable settings.  If omitted, then the connection is not bootable, and -priority is set to NotBootable.

	Default: False

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ChapName &lt;String&gt;<p>
The CHAP challange name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ChapSecret &lt;SecureString&gt;<p>
The CHAP challange secret.  Accepts ASCII or HEX values.  If providing an ASCII secret value, the length must be bewteen 12 and 16 characters.  If HEX, it must start with 0x and with 24-32 characters.  Value is ignored when creating a Connection for a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConnectionID &lt;Int32&gt;<p>
Aliases [-id]
The numeric identifier for this connection.  Connections are normally numbered sequentially from 1 within each profile.

<table><tbody><tr><td>Aliases</td><td>id</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConnectionType &lt;String&gt;<p>
Aliases [-type]
Deprecated parameter.  Connection type is now derived from the provided Network resource object.

<table><tbody><tr><td>Aliases</td><td>type</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Ethernet</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ISCSIInitatorName &lt;String&gt;<p>
Value to provide for the iSCSI Initiator.  All iSCSI Connections will share this value.  If no value is provided, the connection will default to using the Server Profile Name.

If configuring a Connection for a Server Profile Template, the value will be ignored

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiAuthenticationProtocol &lt;String&gt;<p>
Specify the Authentication protocol to use.  Allowed values are None, CHAP, MutualCHAP.  When creating a Server Profile Connection for a Server Profile Template, the CHAP and Mutual CHAP credential parameters are ignored.  They will be enforced when creating a Server Profile from a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiBootTargetIqn &lt;String&gt;<p>
The IQN of the target iSCSI host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4Address &lt;IPAddress&gt;<p>
The IPv4 Address to allocate for the initiator.  This parameter value is ignored when assiging the Connection to a Server Profile Template.  It will be enforced when creating a Server Profile from a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4AddressSource &lt;String&gt;<p>
Specify the IPv4 Address Source for the connection.  Allowed values are:

	* DHCP
	* UserDefined
	* SubnetPool


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4Gateway &lt;IPAddress&gt;<p>
The IPv4 Gateway.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4SubnetMask &lt;String&gt;<p>
The IPv4 Subnet Mask in full or CIDR bit value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiPrimaryBootTargetAddress &lt;IPAddress&gt;<p>
The Primary Boot Target IPv4 Address.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiPrimaryBootTargetPort &lt;Int32&gt;<p>
The Primary Boot Target TCP Port.  Default is 3260 if not otherwise specified.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>3260</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiSecondaryBootTargetAddress &lt;IPAddress&gt;<p>
The Secondary Boot Target IPv4 Address.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiSecondaryBootTargetPort &lt;Int32&gt;<p>
The Secondary Boot Target TCP Port.  Default is 3260 if not otherwise specified.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>3260</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LUN &lt;Int32&gt;<p>
Target LUN ID, if BootVolumeSource is set to UserDefined.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LagName &lt;String&gt;<p>
Specify the LAG Name for a Synergy Ethernet connection.  Allowed value is "LAG1" - "LAG24".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MAC &lt;String&gt;<p>
Requested MAC address of the connection.  Must be specified if setting WWPN and WWNN, and the connection is mapped to a FlexHBA.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MutualChapName &lt;String&gt;<p>
The Mutual CHAP challange.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MutualChapSecret &lt;SecureString&gt;<p>
The Mutual CHAP challange secret.  Accepts ASCII or HEX values.  If providing an ASCII secret value, the length must be bewteen 12 and 16 characters.  If HEX, it must start with 0x and with 24-32 characters.  Value is ignored when creating a Connection for a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A string used to identify the respective connection. The connection name is case insensitive, limited to 63 characters and must be unique within the profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Network &lt;Object&gt;<p>
The Network (Ethernet or Fibre Channel) or Network Set resource object to be used with this connection.  Can either be the Name, URI, or object obtained with Get-HPOVNetwork or Get-HPOVNetworkSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PortId &lt;String&gt;<p>
Identifies the port (FlexNIC) used for this connection. The port can be automatically selected by specifying "Auto" when creating the connection.  "None" is a valid portID for an unconfigured, and unmapped Connection.  If you wish to specify the specific port, the portId format is "[adapter_type_prefix] [adapter_id]:[subport_id]".

G7 only:  For LOM ports, the valid portId prefix will be "Lom"
Gen8 only:  For FlexLOMs, the valid portId prefix will be "Flb"
Mezzanine adapter prefix is "Mezz"

An example of a FlexLOM 1, FlexNIC 1a interface would be "Flb 1:1a".  An example Mezzanine 2, FlexNIC 2c interface would be "Mezz 2:2c"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Priority &lt;String&gt;<p>
Optional boot option for this connection, but Required if -bootable is specified.  Allowed values:

	* NotBootable
	* UseBIOS

	* Primary
	* Secondary
	* IscsiPrimary
	* IscsiSecondary

When the Connection Type is Ethernet, this affects PXE boot.  If the Connection Type is FibreChannel, this enables BfS settings. 

	Default: NotBootable

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>NotBootable</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RequestedBW &lt;Int32&gt;<p>
Requested bandwidth (in Mbps) to be used for this connection.
            
Default: 2500

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2500</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetWwpn &lt;String&gt;<p>
Aliases [-ArrayWwpn]

Target FC array WWPN.

<table><tbody><tr><td>Aliases</td><td>ArrayWwpn</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserDefined &lt;SwitchParameter&gt;<p>
Use to specify user defined address values

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Virtualfunctions &lt;Int32&gt;<p>
Specify the number of Virtual Functions to enable on an Ethernet Connection.  Must be in increments of 16.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WWNN &lt;String&gt;<p>
Requested WWNN address of the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WWPN &lt;String&gt;<p>
Requested WWPN address of the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Returns a connection object which may be used during profile creation with the New-HPOVServerProfile CMDLET



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$net41 = Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop
$con41 = New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType Ethernet -Network $net41
</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$con41 = Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1
</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$con41 = Get-HPOVNetwork -Name "FCoE Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType FibreChannel
</pre>
Create a Network Connection ID 1, that is assigned to the FCoE network "FCoE Fabric A", with Auto Port assignment.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$net42 = Get-HPOVNetwork -Name "Net-42" -ErrorAction Stop
$con42 = New-HPOVServerProfileConnection -ConnectionID 2 -ConnectionType Ethernet -network $net42 -bootable -priority Primary
</pre>
Create a Server Profile Connection ID 2, assigned to Net42 that is PXE Primary bootable.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$conFabricA = Get-HPOVNetwork -Name "Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -bootable -priority Primary -Bootable
</pre>
Create a Server Profile Connection ID 3, assigned to Fabric A that is FC BfS Primary bootable.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$con41 =  Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType Ethernet -userdefined -mac 11:22:33:44:55:66 -name "VLAN41 Prod Net"
</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment and custom MAC Address.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$con41 =  Get-HPOVNetwork -Name "Fabric A" | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -userdefined -mac 11:22:33:44:55:66 -wwpn 10:00:00:00:a1:55:1b:8f -wwnn 20:00:00:00:a1:55:1b:8f -name "VC FF Fabric A Connection"
</pre>
Create a Network Connection ID 3, that is assigned to a FibreChannel network, with Auto Port assignment and user defined hardware address values.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
$con41 =  Get-HPOVNetwork -Name "Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -userdefined -mac 11:22:33:44:55:66 -wwpn 10:00:00:00:a1:55:1b:8f -wwnn 20:00:00:00:a1:55:1b:8f -name "VC FF Fabric A Connection"
</pre>
Create a Network Connection ID 3, that is assigned to a FibreChannel network, with Auto Port assignment and user defined hardware address values.


 <pre> -------------------------- EXAMPLE 9 --------------------------<p>
$ISCSINetwork = Get-HPOVNetwork -Name "ImageStreamer Boot Network" -ErrorAction Stop
$IscsiParams = @{
	ConnectionID                  = 1;
	Name                          = "ImageStreamer Connection 1";
	ConnectionType                = "Ethernet";
	Network                       = $ISCSINetwork;
	Bootable                      = $true;
	Priority                      = "Primary";
	IscsiIPv4AddressSource    = "SubnetPool"
}
$ImageStreamerBootConnection1 = New-HPOVServerProfileConnection @IscsiParams</pre>
Create an HPE Synergy Image Streamer compliant connection.



### Related Links

* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVServerProfileConnection
<p>
Create network connection for a server profile.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;] [-BootVolumeSource] &lt;String&gt;[ [-Priority] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;] [-BootVolumeSource] &lt;String&gt;[ [-Priority] &lt;String&gt;][ [-LUN] &lt;Int32&gt;][ [-IscsiIPv4AddressSource] &lt;String&gt;][ [-ISCSIInitatorName] &lt;String&gt;][ [-IscsiIPv4Address] &lt;IPAddress&gt;][ [-IscsiIPv4SubnetMask] &lt;String&gt;][ [-IscsiIPv4Gateway] &lt;IPAddress&gt;][ [-IscsiBootTargetIqn] &lt;String&gt;] [-IscsiPrimaryBootTargetAddress] &lt;IPAddress&gt;[ [-IscsiPrimaryBootTargetPort] &lt;Int32&gt;][ [-IscsiSecondaryBootTargetAddress] &lt;IPAddress&gt;][ [-IscsiSecondaryBootTargetPort] &lt;Int32&gt;][ [-IscsiAuthenticationProtocol] &lt;String&gt;][ [-ChapName] &lt;String&gt;][ [-ChapSecret] &lt;SecureString&gt;][ [-MutualChapName] &lt;String&gt;][ [-MutualChapSecret] &lt;SecureString&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-WWNN] &lt;String&gt;][ [-WWPN] &lt;String&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;] [-BootVolumeSource] &lt;String&gt;[ [-Priority] &lt;String&gt;][ [-TargetWwpn] &lt;String&gt;][ [-LUN] &lt;Int32&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-Virtualfunctions] &lt;Int32&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;][ [-Priority] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A helper function to assist with connections when creating (New-HPOVServerProfile) or editing (Set-HPOVProfile) a server profile.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BootVolumeSource &lt;String&gt;<p>
Specify how the Boot Volume Source will be set.  Allowed values are:

	* AdapterBIOS   - Boot from adapter BIOS volume parameters. 
	* ManagedVolume - Boot from a managed volume defined in SAN Storage section. 
	* UserDefined   - Boot from user defined volume parameters.

Default: AdapterBIOS

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AdapterBIOS</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Bootable &lt;SwitchParameter&gt;<p>
Specify to configure bootable settings.  If omitted, then the connection is not bootable, and -priority is set to NotBootable.

	Default: False

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ChapName &lt;String&gt;<p>
The CHAP challange name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ChapSecret &lt;SecureString&gt;<p>
The CHAP challange secret.  Accepts ASCII or HEX values.  If providing an ASCII secret value, the length must be bewteen 12 and 16 characters.  If HEX, it must start with 0x and with 24-32 characters.  Value is ignored when creating a Connection for a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConnectionID &lt;Int32&gt;<p>
Aliases [-id]
The numeric identifier for this connection.  Connections are normally numbered sequentially from 1 within each profile.

<table><tbody><tr><td>Aliases</td><td>id</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConnectionType &lt;String&gt;<p>
Aliases [-type]
Deprecated parameter.  Connection type is now derived from the provided Network resource object.

<table><tbody><tr><td>Aliases</td><td>type</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Ethernet</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ISCSIInitatorName &lt;String&gt;<p>
Value to provide for the iSCSI Initiator.  All iSCSI Connections will share this value.  If no value is provided, the connection will default to using the Server Profile Name.

If configuring a Connection for a Server Profile Template, the value will be ignored

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiAuthenticationProtocol &lt;String&gt;<p>
Specify the Authentication protocol to use.  Allowed values are None, CHAP, MutualCHAP.  When creating a Server Profile Connection for a Server Profile Template, the CHAP and Mutual CHAP credential parameters are ignored.  They will be enforced when creating a Server Profile from a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiBootTargetIqn &lt;String&gt;<p>
The IQN of the target iSCSI host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4Address &lt;IPAddress&gt;<p>
The IPv4 Address to allocate for the initiator.  This parameter value is ignored when assiging the Connection to a Server Profile Template.  It will be enforced when creating a Server Profile from a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4AddressSource &lt;String&gt;<p>
Specify the IPv4 Address Source for the connection.  Allowed values are:

	* DHCP
	* UserDefined
	* SubnetPool


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4Gateway &lt;IPAddress&gt;<p>
The IPv4 Gateway.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4SubnetMask &lt;String&gt;<p>
The IPv4 Subnet Mask in full or CIDR bit value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiPrimaryBootTargetAddress &lt;IPAddress&gt;<p>
The Primary Boot Target IPv4 Address.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiPrimaryBootTargetPort &lt;Int32&gt;<p>
The Primary Boot Target TCP Port.  Default is 3260 if not otherwise specified.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>3260</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiSecondaryBootTargetAddress &lt;IPAddress&gt;<p>
The Secondary Boot Target IPv4 Address.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiSecondaryBootTargetPort &lt;Int32&gt;<p>
The Secondary Boot Target TCP Port.  Default is 3260 if not otherwise specified.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>3260</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LUN &lt;Int32&gt;<p>
Target LUN ID, if BootVolumeSource is set to UserDefined.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LagName &lt;String&gt;<p>
Specify the LAG Name for a Synergy Ethernet connection.  Allowed value is "LAG1" - "LAG24".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MAC &lt;String&gt;<p>
Requested MAC address of the connection.  Must be specified if setting WWPN and WWNN, and the connection is mapped to a FlexHBA.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MutualChapName &lt;String&gt;<p>
The Mutual CHAP challange.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MutualChapSecret &lt;SecureString&gt;<p>
The Mutual CHAP challange secret.  Accepts ASCII or HEX values.  If providing an ASCII secret value, the length must be bewteen 12 and 16 characters.  If HEX, it must start with 0x and with 24-32 characters.  Value is ignored when creating a Connection for a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A string used to identify the respective connection. The connection name is case insensitive, limited to 63 characters and must be unique within the profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Network &lt;Object&gt;<p>
The Network (Ethernet or Fibre Channel) or Network Set resource object to be used with this connection.  Can either be the Name, URI, or object obtained with Get-HPOVNetwork or Get-HPOVNetworkSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PortId &lt;String&gt;<p>
Identifies the port (FlexNIC) used for this connection. The port can be automatically selected by specifying "Auto" when creating the connection.  "None" is a valid portID for an unconfigured, and unmapped Connection.  If you wish to specify the specific port, the portId format is "[adapter_type_prefix] [adapter_id]:[subport_id]".

G7 only:  For LOM ports, the valid portId prefix will be "Lom"
Gen8 only:  For FlexLOMs, the valid portId prefix will be "Flb"
Mezzanine adapter prefix is "Mezz"

An example of a FlexLOM 1, FlexNIC 1a interface would be "Flb 1:1a".  An example Mezzanine 2, FlexNIC 2c interface would be "Mezz 2:2c"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Priority &lt;String&gt;<p>
Optional boot option for this connection, but Required if -bootable is specified.  Allowed values:

	* NotBootable
	* UseBIOS

	* Primary
	* Secondary
	* IscsiPrimary
	* IscsiSecondary

When the Connection Type is Ethernet, this affects PXE boot.  If the Connection Type is FibreChannel, this enables BfS settings. 

	Default: NotBootable

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>NotBootable</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RequestedBW &lt;Int32&gt;<p>
Requested bandwidth (in Mbps) to be used for this connection.
            
Default: 2500

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2500</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetWwpn &lt;String&gt;<p>
Aliases [-ArrayWwpn]

Target FC array WWPN.

<table><tbody><tr><td>Aliases</td><td>ArrayWwpn</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserDefined &lt;SwitchParameter&gt;<p>
Use to specify user defined address values

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Virtualfunctions &lt;Int32&gt;<p>
Specify the number of Virtual Functions to enable on an Ethernet Connection.  Must be in increments of 16.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WWNN &lt;String&gt;<p>
Requested WWNN address of the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WWPN &lt;String&gt;<p>
Requested WWPN address of the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Returns a connection object which may be used during profile creation with the New-HPOVServerProfile CMDLET



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$net41 = Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop
$con41 = New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType Ethernet -Network $net41
</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$con41 = Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1
</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$con41 = Get-HPOVNetwork -Name "FCoE Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType FibreChannel
</pre>
Create a Network Connection ID 1, that is assigned to the FCoE network "FCoE Fabric A", with Auto Port assignment.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$net42 = Get-HPOVNetwork -Name "Net-42" -ErrorAction Stop
$con42 = New-HPOVServerProfileConnection -ConnectionID 2 -ConnectionType Ethernet -network $net42 -bootable -priority Primary
</pre>
Create a Server Profile Connection ID 2, assigned to Net42 that is PXE Primary bootable.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$conFabricA = Get-HPOVNetwork "Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -bootable -priority Primary -Bootable
</pre>
Create a Server Profile Connection ID 3, assigned to Fabric A that is FC BfS Primary bootable.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$con41 =  Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType Ethernet -userdefined -mac 11:22:33:44:55:66 -name "VLAN41 Prod Net"
</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment and custom MAC Address.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$con41 =  Get-HPOVNetwork -Name "Fabric A" | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -userdefined -mac 11:22:33:44:55:66 -wwpn 10:00:00:00:a1:55:1b:8f -wwnn 20:00:00:00:a1:55:1b:8f -name "VC FF Fabric A Connection"
</pre>
Create a Network Connection ID 3, that is assigned to a FibreChannel network, with Auto Port assignment and user defined hardware address values.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
$con41 =  Get-HPOVNetwork -Name "Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -userdefined -mac 11:22:33:44:55:66 -wwpn 10:00:00:00:a1:55:1b:8f -wwnn 20:00:00:00:a1:55:1b:8f -name "VC FF Fabric A Connection"
</pre>
Create a Network Connection ID 3, that is assigned to a FibreChannel network, with Auto Port assignment and user defined hardware address values.


 <pre> -------------------------- EXAMPLE 9 --------------------------<p>
$ISCSINetwork = Get-HPOVNetwork -Name "ImageStreamer Boot Network" -ErrorAction Stop
$IscsiParams = @{
	ConnectionID                  = 1;
	Name                          = "ImageStreamer Connection 1";
	ConnectionType                = "Ethernet";
	Network                       = $ISCSINetwork;
	Bootable                      = $true;
	Priority                      = "Primary";
	IscsiIPv4AddressSource    = "SubnetPool"
}
$ImageStreamerBootConnection1 = New-HPOVServerProfileConnection @IscsiParams</pre>
Create an HPE Synergy Image Streamer compliant connection.



### Related Links

* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVServerProfileConnection
<p>
Create network connection for a server profile.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;] [-BootVolumeSource] &lt;String&gt;[ [-Priority] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;] [-BootVolumeSource] &lt;String&gt;[ [-Priority] &lt;String&gt;][ [-LUN] &lt;Int32&gt;][ [-IscsiIPv4AddressSource] &lt;String&gt;][ [-ISCSIInitatorName] &lt;String&gt;][ [-IscsiIPv4Address] &lt;IPAddress&gt;][ [-IscsiIPv4SubnetMask] &lt;String&gt;][ [-IscsiIPv4Gateway] &lt;IPAddress&gt;][ [-IscsiBootTargetIqn] &lt;String&gt;] [-IscsiPrimaryBootTargetAddress] &lt;IPAddress&gt;[ [-IscsiPrimaryBootTargetPort] &lt;Int32&gt;][ [-IscsiSecondaryBootTargetAddress] &lt;IPAddress&gt;][ [-IscsiSecondaryBootTargetPort] &lt;Int32&gt;][ [-IscsiAuthenticationProtocol] &lt;String&gt;][ [-ChapName] &lt;String&gt;][ [-ChapSecret] &lt;SecureString&gt;][ [-MutualChapName] &lt;String&gt;][ [-MutualChapSecret] &lt;SecureString&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-WWNN] &lt;String&gt;][ [-WWPN] &lt;String&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;] [-BootVolumeSource] &lt;String&gt;[ [-Priority] &lt;String&gt;][ [-TargetWwpn] &lt;String&gt;][ [-LUN] &lt;Int32&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileConnection [-ConnectionID] &lt;Int32&gt; [-Network] &lt;Object&gt;[ [-ConnectionType] &lt;String&gt;] [-PortId] &lt;String&gt;[ [-Name] &lt;String&gt;][ [-RequestedBW] &lt;Int32&gt;][ [-UserDefined] &lt;SwitchParameter&gt;][ [-MAC] &lt;String&gt;][ [-Virtualfunctions] &lt;Int32&gt;][ [-Bootable] &lt;SwitchParameter&gt;][ [-LagName] &lt;String&gt;][ [-Priority] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A helper function to assist with connections when creating (New-HPOVServerProfile) or editing (Set-HPOVProfile) a server profile.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BootVolumeSource &lt;String&gt;<p>
Specify how the Boot Volume Source will be set.  Allowed values are:

	* AdapterBIOS   - Boot from adapter BIOS volume parameters. 
	* ManagedVolume - Boot from a managed volume defined in SAN Storage section. 
	* UserDefined   - Boot from user defined volume parameters.

Default: AdapterBIOS

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AdapterBIOS</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Bootable &lt;SwitchParameter&gt;<p>
Specify to configure bootable settings.  If omitted, then the connection is not bootable, and -priority is set to NotBootable.

	Default: False

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ChapName &lt;String&gt;<p>
The CHAP challange name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ChapSecret &lt;SecureString&gt;<p>
The CHAP challange secret.  Accepts ASCII or HEX values.  If providing an ASCII secret value, the length must be bewteen 12 and 16 characters.  If HEX, it must start with 0x and with 24-32 characters.  Value is ignored when creating a Connection for a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConnectionID &lt;Int32&gt;<p>
Aliases [-id]
The numeric identifier for this connection.  Connections are normally numbered sequentially from 1 within each profile.

<table><tbody><tr><td>Aliases</td><td>id</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConnectionType &lt;String&gt;<p>
Aliases [-type]
Deprecated parameter.  Connection type is now derived from the provided Network resource object.

<table><tbody><tr><td>Aliases</td><td>type</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Ethernet</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ISCSIInitatorName &lt;String&gt;<p>
Value to provide for the iSCSI Initiator.  All iSCSI Connections will share this value.  If no value is provided, the connection will default to using the Server Profile Name.

If configuring a Connection for a Server Profile Template, the value will be ignored

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiAuthenticationProtocol &lt;String&gt;<p>
Specify the Authentication protocol to use.  Allowed values are None, CHAP, MutualCHAP.  When creating a Server Profile Connection for a Server Profile Template, the CHAP and Mutual CHAP credential parameters are ignored.  They will be enforced when creating a Server Profile from a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiBootTargetIqn &lt;String&gt;<p>
The IQN of the target iSCSI host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4Address &lt;IPAddress&gt;<p>
The IPv4 Address to allocate for the initiator.  This parameter value is ignored when assiging the Connection to a Server Profile Template.  It will be enforced when creating a Server Profile from a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4AddressSource &lt;String&gt;<p>
Specify the IPv4 Address Source for the connection.  Allowed values are:

	* DHCP
	* UserDefined
	* SubnetPool


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4Gateway &lt;IPAddress&gt;<p>
The IPv4 Gateway.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiIPv4SubnetMask &lt;String&gt;<p>
The IPv4 Subnet Mask in full or CIDR bit value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiPrimaryBootTargetAddress &lt;IPAddress&gt;<p>
The Primary Boot Target IPv4 Address.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiPrimaryBootTargetPort &lt;Int32&gt;<p>
The Primary Boot Target TCP Port.  Default is 3260 if not otherwise specified.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>3260</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiSecondaryBootTargetAddress &lt;IPAddress&gt;<p>
The Secondary Boot Target IPv4 Address.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IscsiSecondaryBootTargetPort &lt;Int32&gt;<p>
The Secondary Boot Target TCP Port.  Default is 3260 if not otherwise specified.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>3260</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LUN &lt;Int32&gt;<p>
Target LUN ID, if BootVolumeSource is set to UserDefined.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LagName &lt;String&gt;<p>
Specify the LAG Name for a Synergy Ethernet connection.  Allowed value is "LAG1" - "LAG24".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MAC &lt;String&gt;<p>
Requested MAC address of the connection.  Must be specified if setting WWPN and WWNN, and the connection is mapped to a FlexHBA.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MutualChapName &lt;String&gt;<p>
The Mutual CHAP challange.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MutualChapSecret &lt;SecureString&gt;<p>
The Mutual CHAP challange secret.  Accepts ASCII or HEX values.  If providing an ASCII secret value, the length must be bewteen 12 and 16 characters.  If HEX, it must start with 0x and with 24-32 characters.  Value is ignored when creating a Connection for a Server Profile Template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A string used to identify the respective connection. The connection name is case insensitive, limited to 63 characters and must be unique within the profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Network &lt;Object&gt;<p>
The Network (Ethernet or Fibre Channel) or Network Set resource object to be used with this connection.  Can either be the Name, URI, or object obtained with Get-HPOVNetwork or Get-HPOVNetworkSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PortId &lt;String&gt;<p>
Identifies the port (FlexNIC) used for this connection. The port can be automatically selected by specifying "Auto" when creating the connection.  "None" is a valid portID for an unconfigured, and unmapped Connection.  If you wish to specify the specific port, the portId format is "[adapter_type_prefix] [adapter_id]:[subport_id]".

G7 only:  For LOM ports, the valid portId prefix will be "Lom"
Gen8 only:  For FlexLOMs, the valid portId prefix will be "Flb"
Mezzanine adapter prefix is "Mezz"

An example of a FlexLOM 1, FlexNIC 1a interface would be "Flb 1:1a".  An example Mezzanine 2, FlexNIC 2c interface would be "Mezz 2:2c"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Priority &lt;String&gt;<p>
Optional boot option for this connection, but Required if -bootable is specified.  Allowed values:

	* NotBootable
	* UseBIOS

	* Primary
	* Secondary
	* IscsiPrimary
	* IscsiSecondary

When the Connection Type is Ethernet, this affects PXE boot.  If the Connection Type is FibreChannel, this enables BfS settings. 

	Default: NotBootable

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>NotBootable</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RequestedBW &lt;Int32&gt;<p>
Requested bandwidth (in Mbps) to be used for this connection.
            
Default: 2500

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2500</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetWwpn &lt;String&gt;<p>
Aliases [-ArrayWwpn]

Target FC array WWPN.

<table><tbody><tr><td>Aliases</td><td>ArrayWwpn</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserDefined &lt;SwitchParameter&gt;<p>
Use to specify user defined address values

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Virtualfunctions &lt;Int32&gt;<p>
Specify the number of Virtual Functions to enable on an Ethernet Connection.  Must be in increments of 16.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WWNN &lt;String&gt;<p>
Requested WWNN address of the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WWPN &lt;String&gt;<p>
Requested WWPN address of the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Returns a connection object which may be used during profile creation with the New-HPOVServerProfile CMDLET



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$net41 = Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop
$con41 = New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType Ethernet -Network $net41
</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$con41 = Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1
</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$con41 = Get-HPOVNetwork -Name "FCoE Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType FibreChannel
</pre>
Create a Network Connection ID 1, that is assigned to the FCoE network "FCoE Fabric A", with Auto Port assignment.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$net42 = Get-HPOVNetwork -Name "Net-42" -ErrorAction Stop
$con42 = New-HPOVServerProfileConnection -ConnectionID 2 -ConnectionType Ethernet -network $net42 -bootable -priority Primary
</pre>
Create a Server Profile Connection ID 2, assigned to Net42 that is PXE Primary bootable.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$conFabricA = Get-HPOVNetwork "Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -bootable -priority Primary -Bootable
</pre>
Create a Server Profile Connection ID 3, assigned to Fabric A that is FC BfS Primary bootable.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$con41 =  Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType Ethernet -userdefined -mac 11:22:33:44:55:66 -name "VLAN41 Prod Net"
</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment and custom MAC Address.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$con41 =  Get-HPOVNetwork -Name "Fabric A" | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -userdefined -mac 11:22:33:44:55:66 -wwpn 10:00:00:00:a1:55:1b:8f -wwnn 20:00:00:00:a1:55:1b:8f -name "VC FF Fabric A Connection"
</pre>
Create a Network Connection ID 3, that is assigned to a FibreChannel network, with Auto Port assignment and user defined hardware address values.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
$con41 =  Get-HPOVNetwork -Name "Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -userdefined -mac 11:22:33:44:55:66 -wwpn 10:00:00:00:a1:55:1b:8f -wwnn 20:00:00:00:a1:55:1b:8f -name "VC FF Fabric A Connection"
</pre>
Create a Network Connection ID 3, that is assigned to a FibreChannel network, with Auto Port assignment and user defined hardware address values.


 <pre> -------------------------- EXAMPLE 9 --------------------------<p>
$ISCSINetwork = Get-HPOVNetwork -Name "ImageStreamer Boot Network" -ErrorAction Stop
$IscsiParams = @{
	ConnectionID                  = 1;
	Name                          = "ImageStreamer Connection 1";
	ConnectionType                = "Ethernet";
	Network                       = $ISCSINetwork;
	Bootable                      = $true;
	Priority                      = "Primary";
	IscsiIPv4AddressSource    = "SubnetPool"
}
$ImageStreamerBootConnection1 = New-HPOVServerProfileConnection @IscsiParams</pre>
Create an HPE Synergy Image Streamer compliant connection.



### Related Links

* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList)


***
<div align=right><a href="#Top">Top</a></div>
