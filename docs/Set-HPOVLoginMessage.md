<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVLoginMessage
<p>
Set appliancce Login Message.

### SYNTAX
<p>
<pre><code>Set-HPOVLoginMessage [-Message] &lt;String&gt; [-Acknowledgment] &lt;Boolean&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVLoginMessage [-Acknowledgment] &lt;Boolean&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Configure the Login Message for the connected appliance(s).  You can also set the Acknowledgement to be required.


### Parameters

-Acknowledgment &lt;Boolean&gt;<p>
Set to True if the login message should be acknowledged before authentication completes.  If set to True, the COnnect-HPOVMgmt Cmdlet will prompt the user to acknowledge the message, if -LoginAcknowledge is not provided in the Cmdlet parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Message &lt;String&gt;<p>
The login message to set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 


### Return Values

_**HPOneView.Appliance.LoginMessage**_

 

If successful, returns a resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVLoginMessage -Message "************************************
>> *****        WARNING        ********
>> ************************************
>> Updated Message: This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
>> abuse of this system may lead to corrective action including termination, civil and/or criminal penalties."
>> -Acknowledgement $true

</pre>
Set the Login Message from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Message = "************************************
>> *****        WARNING        ********
>> ************************************
>> Updated Message: This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
>> abuse of this system may lead to corrective action including termination, civil and/or criminal penalties."
>>
Set-HPOVLoginMessage -Message $Message -Acknowledgment $true 

</pre>
Set the Login Message from the specified appliance connection.



### Related Links

* [Get-HPOVLoginMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLoginMessage)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVLoginMessage
<p>
Set appliancce Login Message.

### SYNTAX
<p>
<pre><code>Set-HPOVLoginMessage [-Message] &lt;String&gt; [-Acknowledgment] &lt;Boolean&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVLoginMessage [-Acknowledgment] &lt;Boolean&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Configure the Login Message for the connected appliance(s).  You can also set the Acknowledgement to be required.


### Parameters

-Acknowledgment &lt;Boolean&gt;<p>
Set to True if the login message should be acknowledged before authentication completes.  If set to True, the COnnect-HPOVMgmt Cmdlet will prompt the user to acknowledge the message, if -LoginAcknowledge is not provided in the Cmdlet parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Message &lt;String&gt;<p>
The login message to set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 


### Return Values

_**HPOneView.Appliance.LoginMessage**_

 

If successful, returns a resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVLoginMessage -Message "************************************
>> *****        WARNING        ********
>> ************************************
>> Updated Message: This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
>> abuse of this system may lead to corrective action including termination, civil and/or criminal penalties."
>> -Acknowledgement $true

</pre>
Set the Login Message from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Message = "************************************
>> *****        WARNING        ********
>> ************************************
>> Updated Message: This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
>> abuse of this system may lead to corrective action including termination, civil and/or criminal penalties."
>>
Set-HPOVLoginMessage -Message $Message -Acknowledgment $true 

</pre>
Set the Login Message from the specified appliance connection.



### Related Links

* [Get-HPOVLoginMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLoginMessage)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVLoginMessage
<p>
Set appliancce Login Message.

### SYNTAX
<p>
<pre><code>Set-HPOVLoginMessage [-Message] &lt;String&gt; [-Acknowledgment] &lt;Boolean&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Configure the Login Message for the connected appliance(s).  You can also set the Acknowledgement to be required.


### Parameters

-Acknowledgment &lt;Boolean&gt;<p>
Set to True if the login message should be acknowledged before authentication completes.  If set to True, the COnnect-HPOVMgmt Cmdlet will prompt the user to acknowledge the message, if -LoginAcknowledge is not provided in the Cmdlet parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Message &lt;String&gt;<p>
The login message to set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 


### Return Values

_**HPOneView.Appliance.LoginMessage**_

 

If successful, returns a resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVLoginMessage -Message "************************************
>> *****        WARNING        ********
>> ************************************
>> Updated Message: This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
>> abuse of this system may lead to corrective action including termination, civil and/or criminal penalties."
>> -Acknowledgement $true

</pre>
Set the Login Message from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Message = "************************************
>> *****        WARNING        ********
>> ************************************
>> Updated Message: This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
>> abuse of this system may lead to corrective action including termination, civil and/or criminal penalties."
>>
Set-HPOVLoginMessage -Message $Message -Acknowledgment $true 

</pre>
Set the Login Message from the specified appliance connection.



### Related Links

* [Get-HPOVLoginMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLoginMessage)


***
<div align=right><a href="#Top">Top</a></div>
