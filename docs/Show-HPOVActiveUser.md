<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Show-HPOVActiveUser
<p>
Display active and connected users.

### SYNTAX
<p>
<pre><code>Show-HPOVActiveUser[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to display active and connected users to an HPE OneView or Synergy management appliance.  Infrastructure administrator or Security administrator role is required in order to view all connected users.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ActiveUserSession**_

 

Connected user session and its details.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVActiveUser  UserName              LoginDomain       ClientHost    LoginTime --------              -----------       ----------    --------- BobSmith@domain.local doctors-lab.local 192.168.19.3  11/1/2018 9: 39: 34 PM administrator         Local             192.168.19.20 11/7/2018 1: 58: 48 PM Administrator         Local             192.168.19.3  11/10/2018 5: 36: 39 AM</pre>
Display connected active users to the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Show-HPOVActiveUser
<p>
Display active and connected users.

### SYNTAX
<p>
<pre><code>Show-HPOVActiveUser[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to display active and connected users to an HPE OneView or Synergy management appliance.  Infrastructure administrator or Security administrator role is required in order to view all connected users.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ActiveUserSession**_

 

Connected user session and its details.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVActiveUser  UserName              LoginDomain       ClientHost    LoginTime --------              -----------       ----------    --------- BobSmith@domain.local doctors-lab.local 192.168.19.3  11/1/2018 9: 39: 34 PM administrator         Local             192.168.19.20 11/7/2018 1: 58: 48 PM Administrator         Local             192.168.19.3  11/10/2018 5: 36: 39 AM</pre>
Display connected active users to the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Show-HPOVActiveUser
<p>
Display active and connected users.

### SYNTAX
<p>
<pre><code>Show-HPOVActiveUser[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to display active and connected users to an HPE OneView or Synergy management appliance.  Infrastructure administrator or Security administrator role is required in order to view all connected users.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ActiveUserSession**_

 

Connected user session and its details.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVActiveUser  UserName              LoginDomain       ClientHost    LoginTime --------              -----------       ----------    --------- BobSmith@domain.local doctors-lab.local 192.168.19.3  11/1/2018 9: 39: 34 PM administrator         Local             192.168.19.20 11/7/2018 1: 58: 48 PM Administrator         Local             192.168.19.3  11/10/2018 5: 36: 39 AM</pre>
Display connected active users to the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
