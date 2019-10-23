<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## New-HPOVProfileConnection
<p>
Create network connection for a server profile.

### SYNTAX
<p>
<pre><code>New-HPOVProfileConnection [-connectionID] &lt;connectionID&gt; [-connectionType] &lt;connectionType&gt; [-network] &lt;network&gt;[ [-portId] &lt;portId&gt;][ [-name] &lt;name&gt;][ [-requestedBW] &lt;requestedBW&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileConnection [-connectionID] &lt;connectionID&gt; [-connectionType] &lt;connectionType&gt; [-network] &lt;network&gt;[ [-portId] &lt;portId&gt;][ [-name] &lt;name&gt;][ [-requestedBW] &lt;requestedBW&gt;] [-userDefined] &lt;userDefined&gt; [-mac] &lt;mac&gt; [-wwnn] &lt;wwnn&gt; [-wwpn] &lt;wwpn&gt; [-bootable] &lt;bootable&gt; [-priority] &lt;priority&gt; [-arrayWwpn] &lt;arrayWwpn&gt; [-lun] &lt;lun&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileConnection [-connectionID] &lt;connectionID&gt; [-connectionType] &lt;connectionType&gt; [-network] &lt;network&gt;[ [-portId] &lt;portId&gt;][ [-name] &lt;name&gt;][ [-requestedBW] &lt;requestedBW&gt;] [-userDefined] &lt;userDefined&gt; [-mac] &lt;mac&gt; [-bootable] &lt;bootable&gt; [-priority] &lt;priority&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileConnection [-connectionID] &lt;connectionID&gt; [-connectionType] &lt;connectionType&gt; [-network] &lt;network&gt;[ [-portId] &lt;portId&gt;][ [-name] &lt;name&gt;][ [-requestedBW] &lt;requestedBW&gt;] [-bootable] &lt;bootable&gt; [-priority] &lt;priority&gt; [-arrayWwpn] &lt;arrayWwpn&gt; [-lun] &lt;lun&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileConnection [-connectionID] &lt;connectionID&gt; [-connectionType] &lt;connectionType&gt; [-network] &lt;network&gt;[ [-portId] &lt;portId&gt;][ [-name] &lt;name&gt;][ [-requestedBW] &lt;requestedBW&gt;] [-bootable] &lt;bootable&gt; [-priority] &lt;priority&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileConnection [-connectionID] &lt;connectionID&gt; [-connectionType] &lt;connectionType&gt; [-network] &lt;network&gt;[ [-portId] &lt;portId&gt;][ [-name] &lt;name&gt;][ [-requestedBW] &lt;requestedBW&gt;] [-userDefined] &lt;userDefined&gt; [-mac] &lt;mac&gt; [-wwnn] &lt;wwnn&gt; [-wwpn] &lt;wwpn&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileConnection [-connectionID] &lt;connectionID&gt; [-connectionType] &lt;connectionType&gt; [-network] &lt;network&gt;[ [-portId] &lt;portId&gt;][ [-name] &lt;name&gt;][ [-requestedBW] &lt;requestedBW&gt;] [-userDefined] &lt;userDefined&gt; [-mac] &lt;mac&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileConnection [-connectionID] &lt;connectionID&gt; [-connectionType] &lt;connectionType&gt; [-network] &lt;network&gt;[ [-portId] &lt;portId&gt;][ [-name] &lt;name&gt;][ [-requestedBW] &lt;requestedBW&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A helper function to assist with connections when creating (New-HPOVProfile) or editing (Set-HPOVProfile) a server profile.


### Parameters

-connectionID &lt;connectionID&gt;<p>
Aliases [-id]
The numeric identifier for this connection.  Connections are normally numbered sequentially from 1 within each profile.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -connectionType &lt;connectionType&gt;<p>
Aliases [-type]
Optional network type to be used for this connection ("Ethernet" or "FibreChannel").

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>Ethernet</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -network &lt;network&gt;<p>
The Network (Ethernet or Fibre Channel) or Network Set resource object to be used with this connection.  Can either be the Name, URI, or object obtained with Get-HPOVNetwork or Get-HPOVNetworkSet.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -portId &lt;portId&gt;<p>
Optional. Identifies the port (FlexNIC) used for this connection. The port can be automatically selected by specifying ‘Auto’ when creating the connection.  'None' is a valid portID for an unconfigured, and unmapped Connection.  If you wish to specify the specific port, the portId format is "[adapter_type_prefix] [adapter_id]:[subport_id]".

G7 only:  For LOM ports, the valid portId prefix will be "Lom"
Gen8 only:  For FlexLOMs, the valid portId prefix will be "Flb"
Mezzanine adapter prefix is "Mezz"

An example of a FlexLOM 1, FlexNIC 1a interface would be "Flb 1:1a".  An example Mezzanine 2, FlexNIC 2c interface would be "Mezz 2:2c"

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -name &lt;name&gt;<p>
A string used to identify the respective connection. The connection name is case insensitive, limited to 63 characters and must be unique within the profile.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -requestedBW &lt;requestedBW&gt;<p>
Optional. Requested bandwidth (in Mbps) to be used for this connection.
	
Default: 2500

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2500</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -userDefined &lt;userDefined&gt;<p>
Use to specify user defined address values

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -mac &lt;mac&gt;<p>
Requested MAC address of the connection.  Must be specified if setting WWPN and WWNN, and the connection is mapped to a FlexHBA.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -wwnn &lt;wwnn&gt;<p>
Requested WWNN address of the connection.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -wwpn &lt;wwpn&gt;<p>
Requested WWPN address of the connection.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -bootable &lt;bootable&gt;<p>
Specify to configure bootable settings.  If omitted, then the connection is not bootable, and -priority is set to NotBootable.
	
Default: False

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -priority &lt;priority&gt;<p>
Optional boot option for this connection, but Required if -bootable is specified.  Accepted values are NotBootable, Primary or Secondary. When the Connection Type is Ethernet, this affects PXE boot.  If the Connection Type is FibreChannel, this enables BfS settings. 

Default: NotBootable

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>NotBootable</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -arrayWwpn &lt;arrayWwpn&gt;<p>
Target array WWPN

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -lun &lt;lun&gt;<p>
Target LUN ID

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_
 


### Return Values

_**System.Management.Automation.PSCustomObject**_
 
Returns a connection object which may be used during profile creation with the New-HPOVProfile CMDLET.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> $net41 = Get-HPOVNetwork "Net-41"
PS C:\> $con41 = New-HPOVProfileConnection 1 Ethernet $net41

</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:\> $con41 = Get-HPOVNetwork "Net-41" | New-HPOVProfileConnection -connectionId 1 -connectionType Ethernet
</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PS C:\> $net42 = Get-HPOVNetwork "Net-42"
PS C:\> $con42 = New-HPOVProfileConnection -connectionId 2 -connectionType Ethernet -network $net42 -bootable -priority Primary

</pre>
Create a Server Profile Connection ID 2, assigned to Net42 that is PXE Primary bootable.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
PS C:\> $conFabricA = Get-HPOVNetwork "Fabric A" | New-HPOVProfileConnection -connectionId 3 -connectionType FibreChannel -bootable -priority Primary -arrayWwpn '20:21:00:02:AC:00:15:2C' -lun 1
</pre>
Create a Server Profile Connection ID 3, assigned to Fabric A that is FC BfS Primary bootable.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
PS C:\> $con41 =  Get-HPOVNetwork "Net-41" | New-HPOVProfileConnection -connectionId 1 -connectionType Ethernet -userdefined -mac 11:22:33:44:55:66 -name "VLAN41 Prod Net"
</pre>
Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment and custom MAC Address.



### Related Links

* [New-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfile)
* [Get-HPOVProfileConnetionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVProfileConnetionList)


***
<div align=right><a href="#Top">Top</a></div>
