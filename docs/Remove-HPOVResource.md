<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVResource
<p>
Remove existing resource(s).

### SYNTAX
<p>
<pre><code>Remove-HPOVResource [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-force] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes a resource identified by either the resource uri or a resource object.  Remove-HPOVResource can be called with either -nameOrUri or -resource.  

	*** This cmdlet will not prompt for delete confirmation. Please use with caution. ***


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-ro, -name, -uri, -nameOruri]
A resource to be deleted. Value can be either resource object, Name or URI.

<table><tbody><tr><td>Aliases</td><td>ro, nameOruri, uri, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -force &lt;SwitchParameter&gt;<p>
Invoke switch force-delete the resource when OneView can no longer communicate with the resource and removal is needed.  -Force is not a PowerShell option, rather an HPE OneView API feature.  This does not override the -Confirm PowerShell option. Not all resources support force-delete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 A valid resource object first retrieved by a call to a Get-HPOV*** cmdlet



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Removal async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVResource -Resource "/rest/resource/1234-5678-9123"
</pre>
Removes the resource specified by the URI.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Remove-HPOVResource -nameOrUri "ServerProfile-A"
</pre>
Removes the resource named "ServerProfile-A".  If multiple resources exist with the name "ServerProfile-A", an error is returned.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$MyResourceObject = send-hpovrequest "/rest/resource/1234-5678-9123"
Remove-HPOVResource -Resource $MyResourceObject

</pre>
Removes the resource $MyReSourceObject.



### Related Links

* [Add-HPOVResourceToLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToLabel)
* [Add-HPOVResourceToRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToRack)
* [Add-HPOVResourceToScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToScope)
* [New-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVResource)
* [Remove-HPOVResourceFromLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromLabel)
* [Remove-HPOVResourceFromScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromScope)
* [Set-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVResource)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVResource
<p>
Remove existing resource(s).

### SYNTAX
<p>
<pre><code>Remove-HPOVResource [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-force] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes a resource identified by either the resource uri or a resource object.  Remove-HPOVResource can be called with either -nameOrUri or -resource.  

	*** This cmdlet will not prompt for delete confirmation. Please use with caution. ***


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-ro, -name, -uri, -nameOruri]
A resource to be deleted. Value can be either resource object, Name or URI.

<table><tbody><tr><td>Aliases</td><td>ro, nameOruri, uri, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -force &lt;SwitchParameter&gt;<p>
Invoke switch force-delete the resource when OneView can no longer communicate with the resource and removal is needed.  -Force is not a PowerShell option, rather an HPE OneView API feature.  This does not override the -Confirm PowerShell option. Not all resources support force-delete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 A valid resource object first retrieved by a call to a Get-HPOV*** cmdlet



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Removal async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVResource -Resource "/rest/resource/1234-5678-9123"
</pre>
Removes the resource specified by the URI.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Remove-HPOVResource -nameOrUri "ServerProfile-A"
</pre>
Removes the resource named "ServerProfile-A".  If multiple resources exist with the name "ServerProfile-A", an error is returned.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$MyResourceObject = send-hpovrequest "/rest/resource/1234-5678-9123"
Remove-HPOVResource -Resource $MyResourceObject

</pre>
Removes the resource $MyReSourceObject.



### Related Links

* [Add-HPOVResourceToLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToLabel)
* [Add-HPOVResourceToRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToRack)
* [Add-HPOVResourceToScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToScope)
* [New-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVResource)
* [Remove-HPOVResourceFromLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromLabel)
* [Remove-HPOVResourceFromScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromScope)
* [Set-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVResource)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVResource
<p>
Remove existing resource(s).

### SYNTAX
<p>
<pre><code>Remove-HPOVResource [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-force] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes a resource identified by either the resource uri or a resource object.  Remove-HPOVResource can be called with either -nameOrUri or -resource.  

	*** This cmdlet will not prompt for delete confirmation. Please use with caution. ***


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-ro, -name, -uri, -nameOruri]
A resource to be deleted. Value can be either resource object, Name or URI.

<table><tbody><tr><td>Aliases</td><td>ro, nameOruri, uri, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -force &lt;SwitchParameter&gt;<p>
Invoke switch force-delete the resource when OneView can no longer communicate with the resource and removal is needed.  -Force is not a PowerShell option, rather an HPE OneView API feature.  This does not override the -Confirm PowerShell option. Not all resources support force-delete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 A valid resource object first retrieved by a call to a Get-HPOV*** cmdlet



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Removal async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVResource -Resource "/rest/resource/1234-5678-9123"
</pre>
Removes the resource specified by the URI.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Remove-HPOVResource -nameOrUri "ServerProfile-A"
</pre>
Removes the resource named "ServerProfile-A".  If multiple resources exist with the name "ServerProfile-A", an error is returned.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$MyResourceObject = send-hpovrequest "/rest/resource/1234-5678-9123"
Remove-HPOVResource -Resource $MyResourceObject

</pre>
Removes the resource $MyReSourceObject.



### Related Links

* [Add-HPOVResourceToLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToLabel)
* [Add-HPOVResourceToRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToRack)
* [Add-HPOVResourceToScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToScope)
* [New-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVResource)
* [Remove-HPOVResourceFromLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromLabel)
* [Remove-HPOVResourceFromScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromScope)
* [Set-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVResource)


***
<div align=right><a href="#Top">Top</a></div>
