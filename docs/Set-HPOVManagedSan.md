<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVManagedSan
<p>
Enable or Disable Automated SAN Zoning.

### SYNTAX
<p>
<pre><code>Set-HPOVManagedSan [-InputObject] &lt;Object&gt;[ [-EnableAutomatedZoning] &lt;SwitchParameter&gt;] [-ZoningPolicy] &lt;String&gt;[ [-EnableAliasing] &lt;SwitchParameter&gt;][ [-InitiatorNameFormat] &lt;String&gt;][ [-TargetGroupNameFormat] &lt;String&gt;][ [-TargetNameFormat] &lt;String&gt;][ [-ZoneNameFormat] &lt;String&gt;][ [-UpdateZoneNames] &lt;Boolean&gt;][ [-UpdateInitiatorAliases] &lt;Boolean&gt;][ [-UpdateTargetAliases] &lt;Boolean&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVManagedSan [-InputObject] &lt;Object&gt;[ [-EnableAutomatedZoning] &lt;SwitchParameter&gt;] [-ZoningPolicy] &lt;String&gt;[ [-DisableAliasing] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVManagedSan [-InputObject] &lt;Object&gt; [-DisableAutomatedZoning] &lt;SwitchParameter&gt; [-ZoningPolicy] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to Enable or Disable a Managed SAN resource on the appliance.  Disabling a Managed SAN will prevent the appliance from configuring FC Zones.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableAliasing &lt;SwitchParameter&gt;<p>
Disable aliases to be created for initiators, targets and target groups based on the specified name formats

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableAutomatedZoning &lt;SwitchParameter&gt;<p>
(DEPRICATED - Please use -ZoningPolicy parameter.) Disable Automated Zoning for the specified Managed SAN.

<table><tbody><tr><td>Aliases</td><td>ZoningDisable, Disable</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAliasing &lt;SwitchParameter&gt;<p>
Enable aliases to be created for initiators, targets and target groups based on the specified name formats

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAutomatedZoning &lt;SwitchParameter&gt;<p>
(DEPRICATED - Please use -ZoningPolicy parameter.) Enable Automated Zoning for the specified Managed SAN.  When used, the default Zone Policy "SingleInitiatorAllTargets" is set.

<table><tbody><tr><td>Aliases</td><td>ZoningEnable, Enable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InitiatorNameFormat &lt;String&gt;<p>
Format to use for initiator alias names. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}.

Example: "initiator_{hostname}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Fabric, -Name, -ManagedSan]

Managed SAN Name or Object.

<table><tbody><tr><td>Aliases</td><td>Fabric, Name, ManagedSan, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetGroupNameFormat &lt;String&gt;<p>
Format to use for target group (ex. storage system port group) alias names. The following built-in variables can be used: {storageSystemName}, {targetGroupName}.

Example: "TargetGroup_{storageSystemName}_{targetGroupName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetNameFormat &lt;String&gt;<p>
Format to use for target (ex. storage system port) alias names. The following built-in variables can be used: {storageSystemName}, {targetName}.

Example: "Target_{storageSystemName}_{targetName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateInitiatorAliases &lt;Boolean&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateTargetAliases &lt;Boolean&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateZoneNames &lt;Boolean&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ZoneNameFormat &lt;String&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ZoningPolicy &lt;String&gt;<p>
Policy setting that affects the way that zones are created. Allowed values:

	* NoZoning - Disable all automated zoning on the SAN and ignore policy settings related to zoning.
	* SingleInitiatorAllTargets - Create one zone per initiator containing all targets connected to that initiator.
	* SingleInitiatorSingleStorageSystem - Similar to SingleInitiatorAllTargets except that separate zones are created for targets that reside on different storage systems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SingleInitiatorAllTargets</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 Single Resource

 _**System.Collection.ArrayList &lt;HPOneView.Storage.ManagedSan&gt;**_

 Multiple Resources



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single Resource

 _**System.Collections.ArrayList**_

 

Multiple Resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVManagedSan Fabric_A -ZoningPolicy SingleInitiatorAllTargets
</pre>
Enable Automated SAN Zoning for "Fabric_A"


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVManagedSan Fabric_A -ZoningPolicy NoZoning
</pre>
Disable Automated SAN Zoning for "Fabric_A"


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVManagedSan | Set-HPOVManagedSan -ZoningPolicy SingleInitiatorAllTargets
</pre>
Enable Automated SAN Zoning for all managed SAN Fabrics



### Related Links

* [Get-HPOVManagedSan](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVManagedSan)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVManagedSan
<p>
Enable or Disable Automated SAN Zoning.

### SYNTAX
<p>
<pre><code>Set-HPOVManagedSan [-InputObject] &lt;Object&gt;[ [-EnableAutomatedZoning] &lt;SwitchParameter&gt;] [-ZoningPolicy] &lt;String&gt;[ [-EnableAliasing] &lt;SwitchParameter&gt;][ [-InitiatorNameFormat] &lt;String&gt;][ [-TargetGroupNameFormat] &lt;String&gt;][ [-TargetNameFormat] &lt;String&gt;][ [-ZoneNameFormat] &lt;String&gt;][ [-UpdateZoneNames] &lt;Boolean&gt;][ [-UpdateInitiatorAliases] &lt;Boolean&gt;][ [-UpdateTargetAliases] &lt;Boolean&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVManagedSan [-InputObject] &lt;Object&gt;[ [-EnableAutomatedZoning] &lt;SwitchParameter&gt;] [-ZoningPolicy] &lt;String&gt;[ [-DisableAliasing] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVManagedSan [-InputObject] &lt;Object&gt; [-DisableAutomatedZoning] &lt;SwitchParameter&gt; [-ZoningPolicy] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to Enable or Disable a Managed SAN resource on the appliance.  Disabling a Managed SAN will prevent the appliance from configuring FC Zones.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableAliasing &lt;SwitchParameter&gt;<p>
Disable aliases to be created for initiators, targets and target groups based on the specified name formats

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableAutomatedZoning &lt;SwitchParameter&gt;<p>
(DEPRICATED - Please use -ZoningPolicy parameter.) Disable Automated Zoning for the specified Managed SAN.

<table><tbody><tr><td>Aliases</td><td>ZoningDisable, Disable</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAliasing &lt;SwitchParameter&gt;<p>
Enable aliases to be created for initiators, targets and target groups based on the specified name formats

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAutomatedZoning &lt;SwitchParameter&gt;<p>
(DEPRICATED - Please use -ZoningPolicy parameter.) Enable Automated Zoning for the specified Managed SAN.  When used, the default Zone Policy "SingleInitiatorAllTargets" is set.

<table><tbody><tr><td>Aliases</td><td>ZoningEnable, Enable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InitiatorNameFormat &lt;String&gt;<p>
Format to use for initiator alias names. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}.

Example: "initiator_{hostname}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Fabric, -Name, -ManagedSan]

Managed SAN Name or Object.

<table><tbody><tr><td>Aliases</td><td>Fabric, Name, ManagedSan, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetGroupNameFormat &lt;String&gt;<p>
Format to use for target group (ex. storage system port group) alias names. The following built-in variables can be used: {storageSystemName}, {targetGroupName}.

Example: "TargetGroup_{storageSystemName}_{targetGroupName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetNameFormat &lt;String&gt;<p>
Format to use for target (ex. storage system port) alias names. The following built-in variables can be used: {storageSystemName}, {targetName}.

Example: "Target_{storageSystemName}_{targetName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateInitiatorAliases &lt;Boolean&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateTargetAliases &lt;Boolean&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateZoneNames &lt;Boolean&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ZoneNameFormat &lt;String&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ZoningPolicy &lt;String&gt;<p>
Policy setting that affects the way that zones are created. Allowed values:

	* NoZoning - Disable all automated zoning on the SAN and ignore policy settings related to zoning.
	* SingleInitiatorAllTargets - Create one zone per initiator containing all targets connected to that initiator.
	* SingleInitiatorSingleStorageSystem - Similar to SingleInitiatorAllTargets except that separate zones are created for targets that reside on different storage systems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SingleInitiatorAllTargets</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 Single Resource

 _**System.Collection.ArrayList &lt;HPOneView.Storage.ManagedSan&gt;**_

 Multiple Resources



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single Resource

 _**System.Collections.ArrayList**_

 

Multiple Resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVManagedSan Fabric_A -ZoningPolicy SingleInitiatorAllTargets
</pre>
Enable Automated SAN Zoning for "Fabric_A"


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVManagedSan Fabric_A -ZoningPolicy NoZoning
</pre>
Disable Automated SAN Zoning for "Fabric_A"


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVManagedSan | Set-HPOVManagedSan -ZoningPolicy SingleInitiatorAllTargets
</pre>
Enable Automated SAN Zoning for all managed SAN Fabrics



### Related Links

* [Get-HPOVManagedSan](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVManagedSan)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVManagedSan
<p>
Enable or Disable Automated SAN Zoning.

### SYNTAX
<p>
<pre><code>Set-HPOVManagedSan [-InputObject] &lt;Object&gt;[ [-EnableAutomatedZoning] &lt;SwitchParameter&gt;] [-ZoningPolicy] &lt;String&gt;[ [-EnableAliasing] &lt;SwitchParameter&gt;][ [-InitiatorNameFormat] &lt;String&gt;][ [-TargetGroupNameFormat] &lt;String&gt;][ [-TargetNameFormat] &lt;String&gt;][ [-ZoneNameFormat] &lt;String&gt;][ [-UpdateZoneNames] &lt;Boolean&gt;][ [-UpdateInitiatorAliases] &lt;Boolean&gt;][ [-UpdateTargetAliases] &lt;Boolean&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVManagedSan [-InputObject] &lt;Object&gt;[ [-EnableAutomatedZoning] &lt;SwitchParameter&gt;] [-ZoningPolicy] &lt;String&gt;[ [-DisableAliasing] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVManagedSan [-InputObject] &lt;Object&gt; [-DisableAutomatedZoning] &lt;SwitchParameter&gt; [-ZoningPolicy] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to Enable or Disable a Managed SAN resource on the appliance.  Disabling a Managed SAN will prevent the appliance from configuring FC Zones.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableAliasing &lt;SwitchParameter&gt;<p>
Disable aliases to be created for initiators, targets and target groups based on the specified name formats

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableAutomatedZoning &lt;SwitchParameter&gt;<p>
(DEPRICATED - Please use -ZoningPolicy parameter.) Disable Automated Zoning for the specified Managed SAN.

<table><tbody><tr><td>Aliases</td><td>ZoningDisable, Disable</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAliasing &lt;SwitchParameter&gt;<p>
Enable aliases to be created for initiators, targets and target groups based on the specified name formats

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAutomatedZoning &lt;SwitchParameter&gt;<p>
(DEPRICATED - Please use -ZoningPolicy parameter.) Enable Automated Zoning for the specified Managed SAN.  When used, the default Zone Policy "SingleInitiatorAllTargets" is set.

<table><tbody><tr><td>Aliases</td><td>ZoningEnable, Enable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InitiatorNameFormat &lt;String&gt;<p>
Format to use for initiator alias names. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}.

Example: "initiator_{hostname}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Fabric, -Name, -ManagedSan]

Managed SAN Name or Object.

<table><tbody><tr><td>Aliases</td><td>Fabric, Name, ManagedSan, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetGroupNameFormat &lt;String&gt;<p>
Format to use for target group (ex. storage system port group) alias names. The following built-in variables can be used: {storageSystemName}, {targetGroupName}.

Example: "TargetGroup_{storageSystemName}_{targetGroupName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetNameFormat &lt;String&gt;<p>
Format to use for target (ex. storage system port) alias names. The following built-in variables can be used: {storageSystemName}, {targetName}.

Example: "Target_{storageSystemName}_{targetName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateInitiatorAliases &lt;Boolean&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateTargetAliases &lt;Boolean&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateZoneNames &lt;Boolean&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ZoneNameFormat &lt;String&gt;<p>
Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ZoningPolicy &lt;String&gt;<p>
Policy setting that affects the way that zones are created. Allowed values:

	* NoZoning - Disable all automated zoning on the SAN and ignore policy settings related to zoning.
	* SingleInitiatorAllTargets - Create one zone per initiator containing all targets connected to that initiator.
	* SingleInitiatorSingleStorageSystem - Similar to SingleInitiatorAllTargets except that separate zones are created for targets that reside on different storage systems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SingleInitiatorAllTargets</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 Single Resource

 _**System.Collection.ArrayList &lt;HPOneView.Storage.ManagedSan&gt;**_

 Multiple Resources



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single Resource

 _**System.Collections.ArrayList**_

 

Multiple Resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVManagedSan Fabric_A -ZoningPolicy SingleInitiatorAllTargets
</pre>
Enable Automated SAN Zoning for "Fabric_A"


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVManagedSan Fabric_A -ZoningPolicy NoZoning
</pre>
Disable Automated SAN Zoning for "Fabric_A"


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVManagedSan | Set-HPOVManagedSan -ZoningPolicy SingleInitiatorAllTargets
</pre>
Enable Automated SAN Zoning for all managed SAN Fabrics



### Related Links

* [Get-HPOVManagedSan](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVManagedSan)


***
<div align=right><a href="#Top">Top</a></div>
