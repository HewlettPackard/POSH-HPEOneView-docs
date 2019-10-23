<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVResource
<p>
Update existing resource(s).

### SYNTAX
<p>
<pre><code>Set-HPOVResource [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [-Force] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET will assist the user to update an existing resource.  The resource should first be retrieved with a "Get-HPOV[resourcename]" CMDLET.  The PowerShell resource may then be modified, followed by this "Set-HPOVResource" cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;String&gt;<p>
Set to $true to force-update the resource.  Not all resources support force-update.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The modified resource that is to be updated. Can be resource object, name or URI.

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Resource Object to modify by either using Send-HPOVRequest with the resource URI, or the resource GET CMDLET



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The modified resource or async task depending on the resource being modified



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$profile = Get-HPOVServerProfile "Profile 1"
$profile.name = "New Name"
Set-HPOVResource $profile

</pre>
Updates the name of the Server Profile resource.



### Related Links

* [Add-HPOVResourceToLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToLabel)
* [Add-HPOVResourceToRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToRack)
* [Add-HPOVResourceToScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToScope)
* [New-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVResource)
* [Remove-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResource)
* [Remove-HPOVResourceFromLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromLabel)
* [Remove-HPOVResourceFromScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromScope)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVResource
<p>
Update existing resource(s).

### SYNTAX
<p>
<pre><code>Set-HPOVResource [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [-Force] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET will assist the user to update an existing resource.  The resource should first be retrieved with a "Get-HPOV[resourcename]" CMDLET.  The PowerShell resource may then be modified, followed by this "Set-HPOVResource" cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;String&gt;<p>
Set to $true to force-update the resource.  Not all resources support force-update.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The modified resource that is to be updated. Can be resource object, name or URI.

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Resource Object to modify by either using Send-HPOVRequest with the resource URI, or the resource GET CMDLET



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The modified resource or async task depending on the resource being modified



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$profile = Get-HPOVServerProfile "Profile 1"
$profile.name = "New Name"
Set-HPOVResource $profile

</pre>
Updates the name of the Server Profile resource.



### Related Links

* [Add-HPOVResourceToLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToLabel)
* [Add-HPOVResourceToRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToRack)
* [Add-HPOVResourceToScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToScope)
* [New-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVResource)
* [Remove-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResource)
* [Remove-HPOVResourceFromLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromLabel)
* [Remove-HPOVResourceFromScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromScope)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVResource
<p>
Update existing resource(s).

### SYNTAX
<p>
<pre><code>Set-HPOVResource [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [-Force] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET will assist the user to update an existing resource.  The resource should first be retrieved with a "Get-HPOV[resourcename]" CMDLET.  The PowerShell resource may then be modified, followed by this "Set-HPOVResource" cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;String&gt;<p>
Set to $true to force-update the resource.  Not all resources support force-update.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The modified resource that is to be updated. Can be resource object, name or URI.

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Resource Object to modify by either using Send-HPOVRequest with the resource URI, or the resource GET CMDLET



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The modified resource or async task depending on the resource being modified



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$profile = Get-HPOVServerProfile "Profile 1"
$profile.name = "New Name"
Set-HPOVResource $profile

</pre>
Updates the name of the Server Profile resource.



### Related Links

* [Add-HPOVResourceToLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToLabel)
* [Add-HPOVResourceToRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToRack)
* [Add-HPOVResourceToScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToScope)
* [New-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVResource)
* [Remove-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResource)
* [Remove-HPOVResourceFromLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromLabel)
* [Remove-HPOVResourceFromScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromScope)


***
<div align=right><a href="#Top">Top</a></div>
