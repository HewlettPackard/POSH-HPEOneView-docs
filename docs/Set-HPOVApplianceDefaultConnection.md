<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVApplianceDefaultConnection
<p>
Set the Default Appliance Connection.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceDefaultConnection [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
When establishing multiple Appliance Connections, this Cmdlet will help set one of the appliance connections stored in the ${Global:ConnectedSessions} variable to the default connection.  All Cmdlets that require a specific Appliance Connection will use the default.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
[Aliases -Connection]

Either the HPOneView.Appliance.Connection object, full or partial value of the connection objects Name property.

<table><tbody><tr><td>Aliases</td><td>Appliance, Connection</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Connection**_

 The Appliance Connection object either provided from the Connect-HPOVMgmt output or ${Global:ConnectedSessions} variable



### Return Values

_**System.Collections.ArrayList &lt;HPOneView.Appliance.Connection&gt;**_

 

Updated collection of [HPOneView.Appliance.Connection] Objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ConnectedSessions
ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           True
2            Appliance2.domain.local administrator LOCAL           False

Set-HPOVApplianceDefaultConnection "Appliance2"

ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           False
2            Appliance2.domain.local administrator LOCAL           True

</pre>
Display the current appliance connections, then set the new default to "Appliance2" using the parital name value.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ConnectedSessions
ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           True
2            Appliance2.domain.local administrator LOCAL           False

$ConnectedSessions[1] | Set-HPOVApplianceDefaultConnection

ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           False
2            Appliance2.domain.local administrator LOCAL           True

</pre>
Display the current appliance connections, then set the new default to "Appliance2" using the pipline by passing the HPOneView.Appliance.Connection object.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVApplianceDefaultConnection
<p>
Set the Default Appliance Connection.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceDefaultConnection [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
When establishing multiple Appliance Connections, this Cmdlet will help set one of the appliance connections stored in the ${Global:ConnectedSessions} variable to the default connection.  All Cmdlets that require a specific Appliance Connection will use the default.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
[Aliases -Connection]

Either the HPOneView.Appliance.Connection object, full or partial value of the connection objects Name property.

<table><tbody><tr><td>Aliases</td><td>Appliance, Connection</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Connection**_

 The Appliance Connection object either provided from the Connect-HPOVMgmt output or ${Global:ConnectedSessions} variable



### Return Values

_**System.Collections.ArrayList &lt;HPOneView.Appliance.Connection&gt;**_

 

Updated collection of [HPOneView.Appliance.Connection] Objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ConnectedSessions
ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           True
2            Appliance2.domain.local administrator LOCAL           False

Set-HPOVApplianceDefaultConnection "Appliance2"

ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           False
2            Appliance2.domain.local administrator LOCAL           True

</pre>
Display the current appliance connections, then set the new default to "Appliance2" using the parital name value.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ConnectedSessions
ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           True
2            Appliance2.domain.local administrator LOCAL           False

$ConnectedSessions[1] | Set-HPOVApplianceDefaultConnection

ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           False
2            Appliance2.domain.local administrator LOCAL           True

</pre>
Display the current appliance connections, then set the new default to "Appliance2" using the pipline by passing the HPOneView.Appliance.Connection object.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVApplianceDefaultConnection
<p>
Set the Default Appliance Connection.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceDefaultConnection [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
When establishing multiple Appliance Connections, this Cmdlet will help set one of the appliance connections stored in the ${Global:ConnectedSessions} variable to the default connection.  All Cmdlets that require a specific Appliance Connection will use the default.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
[Aliases -Connection]

Either the HPOneView.Appliance.Connection object, full or partial value of the connection objects Name property.

<table><tbody><tr><td>Aliases</td><td>Appliance, Connection</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Connection**_

 The Appliance Connection object either provided from the Connect-HPOVMgmt output or ${Global:ConnectedSessions} variable



### Return Values

_**System.Collections.ArrayList &lt;HPOneView.Appliance.Connection&gt;**_

 

Updated collection of [HPOneView.Appliance.Connection] Objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ConnectedSessions
ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           True
2            Appliance2.domain.local administrator LOCAL           False

Set-HPOVApplianceDefaultConnection "Appliance2"

ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           False
2            Appliance2.domain.local administrator LOCAL           True

</pre>
Display the current appliance connections, then set the new default to "Appliance2" using the parital name value.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ConnectedSessions
ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           True
2            Appliance2.domain.local administrator LOCAL           False

$ConnectedSessions[1] | Set-HPOVApplianceDefaultConnection

ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           False
2            Appliance2.domain.local administrator LOCAL           True

</pre>
Display the current appliance connections, then set the new default to "Appliance2" using the pipline by passing the HPOneView.Appliance.Connection object.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
