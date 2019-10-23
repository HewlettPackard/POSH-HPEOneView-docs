<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVFabricManager
<p>
Get configured fabric manager(s).

### SYNTAX
<p>
<pre><code>Get-HPOVFabricManager[ [-Name] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Fabric Managers is a resource manager in HPE OneView that enables integration of a Cisco ACI fabric (an external entity) with HPE Synergy. A fabric manager aligns HPE OneView resources as defined by Cisco Application Policy Infrastructure Controller (APIC) policies. It represents a remote Cisco APIC or an APIC cluster that manages a Cisco ACI fabric.

You can operate a fabric manager after adding it in HPE OneView and configure a list of tenants to cover policies necessary for HPE Synergy and Cisco APIC integration.

Remediation of networks, network sets, and logical interconnects Remediation is a process to convert a noncompliant health state of an HPE OneView resource to a compliant health state with respect to APIC policy definitions.

The following conditions cause the fabric manager to be unable to synchronize with network policies:

	*  One or more networks connected across uplink sets in a logical interconnect within HPE Synergy have the same VLAN tag
	*  The two networks are shared across tenants 

When a fabric manager is non compliant with APIC network policies, a software remediation enables a fabric manager to synchronize with network policies. A compliance report is generated immediately after adding a fabric manager and is updated again after remediation. The compliance report details actions that you can perform to remediate inconsistencies. There are indicators for compliant, noncompliant, and compliance-check progress for each resource. Every tenant has a list of consistent and inconsistent reports based on the compliance records generated for a tenant. An inconsistency appears in the form of an alert, which contains an action choice: auto-remediate or manual. If you choose to auto-remediate, an automatic update of the selected HPE OneView resource will initiate.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify the fabric manager name to filter for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.FabricManager**_

 

Configured fabric manager resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVFabricManager
</pre>
Get all defined fabric managers.



### Related Links

* [Add-HPOVFabricManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVFabricManager)
* [Remove-HPOVFabricManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVFabricManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVFabricManager
<p>
Get configured fabric manager(s).

### SYNTAX
<p>
<pre><code>Get-HPOVFabricManager[ [-Name] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Fabric Managers is a resource manager in HPE OneView that enables integration of a Cisco ACI fabric (an external entity) with HPE Synergy. A fabric manager aligns HPE OneView resources as defined by Cisco Application Policy Infrastructure Controller (APIC) policies. It represents a remote Cisco APIC or an APIC cluster that manages a Cisco ACI fabric.

You can operate a fabric manager after adding it in HPE OneView and configure a list of tenants to cover policies necessary for HPE Synergy and Cisco APIC integration.

Remediation of networks, network sets, and logical interconnects Remediation is a process to convert a noncompliant health state of an HPE OneView resource to a compliant health state with respect to APIC policy definitions.

The following conditions cause the fabric manager to be unable to synchronize with network policies:

	*  One or more networks connected across uplink sets in a logical interconnect within HPE Synergy have the same VLAN tag
	*  The two networks are shared across tenants 

When a fabric manager is non compliant with APIC network policies, a software remediation enables a fabric manager to synchronize with network policies. A compliance report is generated immediately after adding a fabric manager and is updated again after remediation. The compliance report details actions that you can perform to remediate inconsistencies. There are indicators for compliant, noncompliant, and compliance-check progress for each resource. Every tenant has a list of consistent and inconsistent reports based on the compliance records generated for a tenant. An inconsistency appears in the form of an alert, which contains an action choice: auto-remediate or manual. If you choose to auto-remediate, an automatic update of the selected HPE OneView resource will initiate.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify the fabric manager name to filter for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.FabricManager**_

 

Configured fabric manager resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVFabricManager
</pre>
Get all defined fabric managers.



### Related Links

* [Add-HPOVFabricManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVFabricManager)
* [Remove-HPOVFabricManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVFabricManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVFabricManager
<p>
Get configured fabric manager(s).

### SYNTAX
<p>
<pre><code>Get-HPOVFabricManager[ [-Name] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Fabric Managers is a resource manager in HPE OneView that enables integration of a Cisco ACI fabric (an external entity) with HPE Synergy. A fabric manager aligns HPE OneView resources as defined by Cisco Application Policy Infrastructure Controller (APIC) policies. It represents a remote Cisco APIC or an APIC cluster that manages a Cisco ACI fabric.

You can operate a fabric manager after adding it in HPE OneView and configure a list of tenants to cover policies necessary for HPE Synergy and Cisco APIC integration.

Remediation of networks, network sets, and logical interconnects Remediation is a process to convert a noncompliant health state of an HPE OneView resource to a compliant health state with respect to APIC policy definitions.

The following conditions cause the fabric manager to be unable to synchronize with network policies:

	*  One or more networks connected across uplink sets in a logical interconnect within HPE Synergy have the same VLAN tag
	*  The two networks are shared across tenants 

When a fabric manager is non compliant with APIC network policies, a software remediation enables a fabric manager to synchronize with network policies. A compliance report is generated immediately after adding a fabric manager and is updated again after remediation. The compliance report details actions that you can perform to remediate inconsistencies. There are indicators for compliant, noncompliant, and compliance-check progress for each resource. Every tenant has a list of consistent and inconsistent reports based on the compliance records generated for a tenant. An inconsistency appears in the form of an alert, which contains an action choice: auto-remediate or manual. If you choose to auto-remediate, an automatic update of the selected HPE OneView resource will initiate.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify the fabric manager name to filter for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.FabricManager**_

 

Configured fabric manager resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVFabricManager
</pre>
Get all defined fabric managers.



### Related Links

* [Add-HPOVFabricManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVFabricManager)
* [Remove-HPOVFabricManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVFabricManager)


***
<div align=right><a href="#Top">Top</a></div>
