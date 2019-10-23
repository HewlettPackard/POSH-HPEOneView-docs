<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVScope
<p>
Create new Scope.

### SYNTAX
<p>
<pre><code>New-HPOVScope [-Name] &lt;String&gt;[ [-Description] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A scope is a grouping of resources that can be used to restrict the range of an operation or action. For example, you can create scopes based on:

	* Organizations (Marketing, Research and Development, Finance)
	* Usage (Production, Development, Testing)
	* Skills (Linux, Windows)

The resources are arranged by categories. All the resources in these categories can be added to or removed from a scope:

	* Enclosures
	* Server Hardware
	* Networks (Ethernet, FC, and FCoE)
	* Network Sets
	* Interconnects, excluding SAS resources
	* Logical Interconnects, excluding SAS resources
	* Logical Interconnect Groups, excluding SAS resources
	* Switches
	* Logical Switches
	* Logical Switch Groups

NOTE: Resources in other categories are considered to be included in all scopes, and they cannot be removed.

When scopes are defined and resources assigned to them, you can:

	* Restrict your view of the user interface (UI) to the resources in the scope.
	* Filter email notifications for alerts based on the scope of the associated resources.

Minimum required privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Administrator account of the target iLO.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the scope to create.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Scope [System.Management.Automation.PSCustomObject]**_

 

Appliance Scope resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVScope -Name MyFinanceScope
</pre>
Create a "MyFinanceScope" for the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVScope -Name MyFinanceScope -Descrition "Finance Scope of resources"
</pre>
Create a "MyFinanceScope" with a descrition for the default appliance connection.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVScope -Name MyFinanceScope -Descrition "Finance Scope of resources" -ApplianceConnection $ConnectedSessions
</pre>
Create a "MyFinanceScope" with a descrition for all appliance connections.



### Related Links

* [Get-HPOVScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVScope)
* [Remove-HPOVScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVScope)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVScope
<p>
Create new Scope.

### SYNTAX
<p>
<pre><code>New-HPOVScope [-Name] &lt;String&gt;[ [-Description] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A scope is a grouping of resources that can be used to restrict the range of an operation or action. For example, you can create scopes based on:

	* Organizations (Marketing, Research and Development, Finance)
	* Usage (Production, Development, Testing)
	* Skills (Linux, Windows)

The resources are arranged by categories. All the resources in these categories can be added to or removed from a scope:

	* Enclosures
	* Server Hardware
	* Networks (Ethernet, FC, and FCoE)
	* Network Sets
	* Interconnects, excluding SAS resources
	* Logical Interconnects, excluding SAS resources
	* Logical Interconnect Groups, excluding SAS resources
	* Switches
	* Logical Switches
	* Logical Switch Groups

NOTE: Resources in other categories are considered to be included in all scopes, and they cannot be removed.

When scopes are defined and resources assigned to them, you can:

	* Restrict your view of the user interface (UI) to the resources in the scope.
	* Filter email notifications for alerts based on the scope of the associated resources.

Minimum required privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Administrator account of the target iLO.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the scope to create.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Scope [System.Management.Automation.PSCustomObject]**_

 

Appliance Scope resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVScope -Name MyFinanceScope
</pre>
Create a "MyFinanceScope" for the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVScope -Name MyFinanceScope -Descrition "Finance Scope of resources"
</pre>
Create a "MyFinanceScope" with a descrition for the default appliance connection.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVScope -Name MyFinanceScope -Descrition "Finance Scope of resources" -ApplianceConnection $ConnectedSessions
</pre>
Create a "MyFinanceScope" with a descrition for all appliance connections.



### Related Links

* [Get-HPOVScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVScope)
* [Remove-HPOVScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVScope)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVScope
<p>
Create new Scope.

### SYNTAX
<p>
<pre><code>New-HPOVScope [-Name] &lt;String&gt;[ [-Description] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A scope is a grouping of resources that can be used to restrict the range of an operation or action. For example, you can create scopes based on:

	* Organizations (Marketing, Research and Development, Finance)
	* Usage (Production, Development, Testing)
	* Skills (Linux, Windows)

The resources are arranged by categories. All the resources in these categories can be added to or removed from a scope:

	* Enclosures
	* Server Hardware
	* Networks (Ethernet, FC, and FCoE)
	* Network Sets
	* Interconnects, excluding SAS resources
	* Logical Interconnects, excluding SAS resources
	* Logical Interconnect Groups, excluding SAS resources
	* Switches
	* Logical Switches
	* Logical Switch Groups

NOTE: Resources in other categories are considered to be included in all scopes, and they cannot be removed.

When scopes are defined and resources assigned to them, you can:

	* Restrict your view of the user interface (UI) to the resources in the scope.
	* Filter email notifications for alerts based on the scope of the associated resources.

Minimum required privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Administrator account of the target iLO.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the scope to create.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Scope [System.Management.Automation.PSCustomObject]**_

 

Appliance Scope resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVScope -Name MyFinanceScope
</pre>
Create a "MyFinanceScope" for the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVScope -Name MyFinanceScope -Descrition "Finance Scope of resources"
</pre>
Create a "MyFinanceScope" with a descrition for the default appliance connection.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVScope -Name MyFinanceScope -Descrition "Finance Scope of resources" -ApplianceConnection $ConnectedSessions
</pre>
Create a "MyFinanceScope" with a descrition for all appliance connections.



### Related Links

* [Get-HPOVScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVScope)
* [Remove-HPOVScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVScope)


***
<div align=right><a href="#Top">Top</a></div>
