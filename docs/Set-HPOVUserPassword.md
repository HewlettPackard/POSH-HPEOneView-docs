<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVUserPassword
<p>
Update current user account password.

### SYNTAX
<p>
<pre><code>Set-HPOVUserPassword [-Current] &lt;String&gt; [-New] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet provides the ability to update the current user account password.  Only HPE OneView appliance local account passwords will be changed.  This cmdlet does not assist with modifying or updating an LDAP or Active Directory user account"s password.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]
	
Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).
	
Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Current &lt;String&gt;<p>
Aliases [-CurrentPassword]

The current password of the user account. If omitted, the cmdlet will prompt for the users password as a secure string.

<table><tbody><tr><td>Aliases</td><td>CurrentPassword</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -New &lt;String&gt;<p>
Aliases [-NewPassword]

The new password to be set for the user account. If omitted, the cmdlet will prompt for the users password as a secure string.

<table><tbody><tr><td>Aliases</td><td>NewPassword</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types



### Return Values



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVUserPassword MyCurrentPass NewP@ssw0rd
</pre>
Update your HPE OneView account password to the new value on all connected appliances.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVUserPassword
<p>
Update current user account password.

### SYNTAX
<p>
<pre><code>Set-HPOVUserPassword [-Current] &lt;String&gt; [-New] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet provides the ability to update the current user account password.  Only HPE OneView appliance local account passwords will be changed.  This cmdlet does not assist with modifying or updating an LDAP or Active Directory user account"s password.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]
	
Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).
	
Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Current &lt;String&gt;<p>
Aliases [-CurrentPassword]

The current password of the user account. If omitted, the cmdlet will prompt for the users password as a secure string.

<table><tbody><tr><td>Aliases</td><td>CurrentPassword</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -New &lt;String&gt;<p>
Aliases [-NewPassword]

The new password to be set for the user account. If omitted, the cmdlet will prompt for the users password as a secure string.

<table><tbody><tr><td>Aliases</td><td>NewPassword</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types



### Return Values



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVUserPassword MyCurrentPass NewP@ssw0rd
</pre>
Update your HPE OneView account password to the new value on all connected appliances.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVUserPassword
<p>
Update current user account password.

### SYNTAX
<p>
<pre><code>Set-HPOVUserPassword [-Current] &lt;String&gt; [-New] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet provides the ability to update the current user account password.  Only HPE OneView appliance local account passwords will be changed.  This cmdlet does not assist with modifying or updating an LDAP or Active Directory user account"s password.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]
	
Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).
	
Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Current &lt;String&gt;<p>
Aliases [-CurrentPassword]

The current password of the user account. If omitted, the cmdlet will prompt for the users password as a secure string.

<table><tbody><tr><td>Aliases</td><td>CurrentPassword</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -New &lt;String&gt;<p>
Aliases [-NewPassword]

The new password to be set for the user account. If omitted, the cmdlet will prompt for the users password as a secure string.

<table><tbody><tr><td>Aliases</td><td>NewPassword</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types



### Return Values



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVUserPassword MyCurrentPass NewP@ssw0rd
</pre>
Update your HPE OneView account password to the new value on all connected appliances.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
