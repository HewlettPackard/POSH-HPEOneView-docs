<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVLoginMessage
<p>
Get appliancce Login Message.

### SYNTAX
<p>
<pre><code>Get-HPOVLoginMessage [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retreive the current Login Message for the connected appliance(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.LoginMessage**_

 

If successful, returns a resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLoginMessage
Appliance   : hpov1.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : True

	
Appliance   : hpov2.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : False


</pre>
Get the Login Message from all connected appliances.



### Related Links

* [Set-HPOVLoginMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLoginMessage)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVLoginMessage
<p>
Get appliancce Login Message.

### SYNTAX
<p>
<pre><code>Get-HPOVLoginMessage [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retreive the current Login Message for the connected appliance(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.LoginMessage**_

 

If successful, returns a resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLoginMessage
Appliance   : hpov1.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : True

	
Appliance   : hpov2.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : False


</pre>
Get the Login Message from all connected appliances.



### Related Links

* [Set-HPOVLoginMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLoginMessage)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVLoginMessage
<p>
Get appliancce Login Message.

### SYNTAX
<p>
<pre><code>Get-HPOVLoginMessage [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retreive the current Login Message for the connected appliance(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.LoginMessage**_

 

If successful, returns a resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLoginMessage
Appliance   : hpov1.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : True

	
Appliance   : hpov2.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : False


</pre>
Get the Login Message from all connected appliances.



### Related Links

* [Set-HPOVLoginMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLoginMessage)


***
<div align=right><a href="#Top">Top</a></div>
