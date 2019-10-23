<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVEnclosureGroup
<p>
Modify an existing enclosure group policy.

### SYNTAX
<p>
<pre><code>Set-HPOVEnclosureGroup [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-ConfigurationScript] &lt;String&gt; [-PowerRedundantMode] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
An enclosure group is a logical resource that defines a standard configuration for member logical enclosures. Use this Cmdlet to update the configuration policy for a specific enclosure group resource.

Required permissions: Server administrator or Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurationScript &lt;String&gt;<p>
An Onboard Administrator CLI Script. Only applicable for HPE BladeSystem C-Class.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
An enclosure group resource from Get-HPOVEnclosureGroup.

<table><tbody><tr><td>Aliases</td><td>EnclosureGroup</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a new resource name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerRedundantMode &lt;String&gt;<p>
The Power Redundancy Mode to set when an Enclosure is added to the appliance.

Allowed Values:

	* RedundantPowerFeed - Provides N+N Power Redundancy Configuration
	* RedundantPowerSupply - Provided N+1 Power Redundancy Configuration

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Servers.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 Enclosure group resource from Get-HPOVEnclosureGroup.



### Return Values

_**HPOneView.Servers.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

The updated enclosure group resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$EnclosureGroup = Get-HPOVEnclosureGroup -Name ProdEG1 -ErrorAction Stop Set-HPOVEnclosureGroup -InputObject $EnclosureGroup -Name VirtProdEG1
</pre>
Change the name of the provided enclosure group resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$UpdatedConfigScript = 'REMOVE USER "admin"
ADD USER "ops" "*********"
SET USER CONTACT "ops" "MySecretPassword"
SET USER FULLNAME "ops" ""
SET USER ACCESS "ops" OPERATOR
ASSIGN SERVER 1-16 "ops"
ENABLE USER "ops"
hponcfg all >> end_marker
<RIBCL VERSION="2.0">
<LOGIN USER_LOGIN="ops" PASSWORD="passthrough">
	<USER_INFO MODE="write">
		<ADD_USER
		USER_NAME="ops"
		USER_LOGIN="ops"
		PASSWORD="Supersecretpassword">
			<ADMIN_PRIV value ="N"/>
			<REMOTE_CONS_PRIV value ="Y"/>
			<RESET_SERVER_PRIV value ="N"/>
			<VIRTUAL_MEDIA_PRIV value ="N"/>    
			<CONFIG_ILO_PRIV value="Yes"/>
		</ADD_USER>
	</USER_INFO>
</LOGIN>
</RIBCL>
end_marker' Get-HPOVEnclosureGroup -Name EG1 -ErrorAction Stop | Set-HPOVEnclosureGroup -ConfigurationScript $UpdatedConfigScript
</pre>
Update the configuration script of the provided enclosure group.



### Related Links

* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVEnclosureGroup
<p>
Modify an existing enclosure group policy.

### SYNTAX
<p>
<pre><code>Set-HPOVEnclosureGroup [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-ConfigurationScript] &lt;String&gt; [-PowerRedundantMode] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
An enclosure group is a logical resource that defines a standard configuration for member logical enclosures. Use this Cmdlet to update the configuration policy for a specific enclosure group resource.

Required permissions: Server administrator or Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurationScript &lt;String&gt;<p>
An Onboard Administrator CLI Script. Only applicable for HPE BladeSystem C-Class.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
An enclosure group resource from Get-HPOVEnclosureGroup.

<table><tbody><tr><td>Aliases</td><td>EnclosureGroup</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a new resource name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerRedundantMode &lt;String&gt;<p>
The Power Redundancy Mode to set when an Enclosure is added to the appliance.

Allowed Values:

	* RedundantPowerFeed - Provides N+N Power Redundancy Configuration
	* RedundantPowerSupply - Provided N+1 Power Redundancy Configuration

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Servers.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 Enclosure group resource from Get-HPOVEnclosureGroup.



### Return Values

_**HPOneView.Servers.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

The updated enclosure group resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$EnclosureGroup = Get-HPOVEnclosureGroup -Name ProdEG1 -ErrorAction Stop Set-HPOVEnclosureGroup -InputObject $EnclosureGroup -Name VirtProdEG1
</pre>
Change the name of the provided enclosure group resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$UpdatedConfigScript = 'REMOVE USER "admin"
ADD USER "ops" "*********"
SET USER CONTACT "ops" "MySecretPassword"
SET USER FULLNAME "ops" ""
SET USER ACCESS "ops" OPERATOR
ASSIGN SERVER 1-16 "ops"
ENABLE USER "ops"
hponcfg all >> end_marker
<RIBCL VERSION="2.0">
<LOGIN USER_LOGIN="ops" PASSWORD="passthrough">
	<USER_INFO MODE="write">
		<ADD_USER
		USER_NAME="ops"
		USER_LOGIN="ops"
		PASSWORD="Supersecretpassword">
			<ADMIN_PRIV value ="N"/>
			<REMOTE_CONS_PRIV value ="Y"/>
			<RESET_SERVER_PRIV value ="N"/>
			<VIRTUAL_MEDIA_PRIV value ="N"/>    
			<CONFIG_ILO_PRIV value="Yes"/>
		</ADD_USER>
	</USER_INFO>
</LOGIN>
</RIBCL>
end_marker' Get-HPOVEnclosureGroup -Name EG1 -ErrorAction Stop | Set-HPOVEnclosureGroup -ConfigurationScript $UpdatedConfigScript
</pre>
Update the configuration script of the provided enclosure group.



### Related Links

* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVEnclosureGroup
<p>
Modify an existing enclosure group policy.

### SYNTAX
<p>
<pre><code>Set-HPOVEnclosureGroup [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-ConfigurationScript] &lt;String&gt; [-PowerRedundantMode] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
An enclosure group is a logical resource that defines a standard configuration for member logical enclosures. Use this Cmdlet to update the configuration policy for a specific enclosure group resource.

Required permissions: Server administrator or Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurationScript &lt;String&gt;<p>
An Onboard Administrator CLI Script. Only applicable for HPE BladeSystem C-Class.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
An enclosure group resource from Get-HPOVEnclosureGroup.

<table><tbody><tr><td>Aliases</td><td>EnclosureGroup</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a new resource name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerRedundantMode &lt;String&gt;<p>
The Power Redundancy Mode to set when an Enclosure is added to the appliance.

Allowed Values:

	* RedundantPowerFeed - Provides N+N Power Redundancy Configuration
	* RedundantPowerSupply - Provided N+1 Power Redundancy Configuration

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Servers.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 Enclosure group resource from Get-HPOVEnclosureGroup.



### Return Values

_**HPOneView.Servers.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

The updated enclosure group resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$EnclosureGroup = Get-HPOVEnclosureGroup -Name ProdEG1 -ErrorAction Stop Set-HPOVEnclosureGroup -InputObject $EnclosureGroup -Name VirtProdEG1
</pre>
Change the name of the provided enclosure group resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$UpdatedConfigScript = 'REMOVE USER "admin"
ADD USER "ops" "*********"
SET USER CONTACT "ops" "MySecretPassword"
SET USER FULLNAME "ops" ""
SET USER ACCESS "ops" OPERATOR
ASSIGN SERVER 1-16 "ops"
ENABLE USER "ops"
hponcfg all >> end_marker
<RIBCL VERSION="2.0">
<LOGIN USER_LOGIN="ops" PASSWORD="passthrough">
	<USER_INFO MODE="write">
		<ADD_USER
		USER_NAME="ops"
		USER_LOGIN="ops"
		PASSWORD="Supersecretpassword">
			<ADMIN_PRIV value ="N"/>
			<REMOTE_CONS_PRIV value ="Y"/>
			<RESET_SERVER_PRIV value ="N"/>
			<VIRTUAL_MEDIA_PRIV value ="N"/>    
			<CONFIG_ILO_PRIV value="Yes"/>
		</ADD_USER>
	</USER_INFO>
</LOGIN>
</RIBCL>
end_marker' Get-HPOVEnclosureGroup -Name EG1 -ErrorAction Stop | Set-HPOVEnclosureGroup -ConfigurationScript $UpdatedConfigScript
</pre>
Update the configuration script of the provided enclosure group.



### Related Links

* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
