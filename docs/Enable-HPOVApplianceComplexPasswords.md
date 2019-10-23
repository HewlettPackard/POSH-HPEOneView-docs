<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Enable-HPOVApplianceComplexPasswords
<p>
Enable appliance complex password policy.

### SYNTAX
<p>
<pre><code>Enable-HPOVApplianceComplexPasswords[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Enables whether users are required to have complex passwords.  This option does not force existing users to change their passwords, nor has any impact on directory accounts.  By default, the appliance does not enforce complex passwords during creating or modifying internal user account passwords.  Use this Cmdlet to enable the policy.

Complex passwords must contain the following:

	* Minimum of 14 characters
	* Minimum of one uppercase character
	* Minimum of one lowercase character
	* Minimum one number
	* Minimum of one special character. For example: !@#$^*_-=+,.?
	* No whitespace



### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Appliance global security settings.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Enable-HPOVApplianceComplexPasswords
</pre>
Enable appliance complex password policy.



### Related Links

* [Disable-HPOVApplianceComplexPasswords](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceComplexPasswords)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Enable-HPOVApplianceComplexPasswords
<p>
Enable appliance complex password policy.

### SYNTAX
<p>
<pre><code>Enable-HPOVApplianceComplexPasswords[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Enables whether users are required to have complex passwords.  This option does not force existing users to change their passwords, nor has any impact on directory accounts.  By default, the appliance does not enforce complex passwords during creating or modifying internal user account passwords.  Use this Cmdlet to enable the policy.

Complex passwords must contain the following:

	* Minimum of 14 characters
	* Minimum of one uppercase character
	* Minimum of one lowercase character
	* Minimum one number
	* Minimum of one special character. For example: !@#$^*_-=+,.?
	* No whitespace



### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Appliance global security settings.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Enable-HPOVApplianceComplexPasswords
</pre>
Enable appliance complex password policy.



### Related Links

* [Disable-HPOVApplianceComplexPasswords](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceComplexPasswords)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Enable-HPOVApplianceComplexPasswords
<p>
Enable appliance complex password policy.

### SYNTAX
<p>
<pre><code>Enable-HPOVApplianceComplexPasswords[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Enables whether users are required to have complex passwords.  This option does not force existing users to change their passwords, nor has any impact on directory accounts.  By default, the appliance does not enforce complex passwords during creating or modifying internal user account passwords.  Use this Cmdlet to enable the policy.

Complex passwords must contain the following:

	* Minimum of 14 characters
	* Minimum of one uppercase character
	* Minimum of one lowercase character
	* Minimum one number
	* Minimum of one special character. For example: !@#$^*_-=+,.?
	* No whitespace



### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Appliance global security settings.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Enable-HPOVApplianceComplexPasswords
</pre>
Enable appliance complex password policy.



### Related Links

* [Disable-HPOVApplianceComplexPasswords](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceComplexPasswords)


***
<div align=right><a href="#Top">Top</a></div>
