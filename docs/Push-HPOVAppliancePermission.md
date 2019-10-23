<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Push-HPOVAppliancePermission
<p>
Change appliance connection active permissions.

### SYNTAX
<p>
<pre><code>Push-HPOVAppliancePermission [-SetActivePermissions] &lt;Object&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Upon successful login, the caller can change their active permissions, and operate in a less priviledge mode at anytime.  The Push-HPOVAppliancePermission Cmdlet will accept a single or collection of [HPOneView.Appliance.ConnectionPermission] objects.  A new SessionID token will be stored within the ApplianceConnection, and the ConnectionPermissions within the ActivePermissions property that were not provided will have their State set to "false".


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SetActivePermissions &lt;Object&gt;<p>
One or more [HPOneView.Appliance.ConnectionPermission] objects from an [HPOneView.Appliance.Connection] ActivePermissions property.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ConnectionPermission**_

 

One or more appliance connection permissions and their active state.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ConnectedSessions[0].ActivePermissions

RoleName              ScopeName     Active
--------              ---------     ------
Network administrator Site A Admins True
Server administrator  AllResources  True

$NewPermissions = $ConnectedSessions[0].ActivePermissions | ? RoleName -match "Network"
Push-HPOVAppliancePermission -SetActivePermissions $NewPermissions</pre>
Change active permissions by filtering for a specific Role.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ConnectedSessions[0].ActivePermissions

RoleName              ScopeName     Active
--------              ---------     ------
Network administrator Site A Admins True
Server administrator  AllResources  True
Server administrator  AllResources  True

$NewPermissions = $ConnectedSessions[0].ActivePermissions | ? ScopeName -match "Site A Admins"
Push-HPOVAppliancePermission -SetActivePermissions $NewPermissions</pre>
Change active permissions by filtering for a specific Scope.



### Related Links

* [Pop-HPOVAppliancePermission](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Pop-HPOVAppliancePermission)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Push-HPOVAppliancePermission
<p>
Change appliance connection active permissions.

### SYNTAX
<p>
<pre><code>Push-HPOVAppliancePermission [-SetActivePermissions] &lt;Object&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Upon successful login, the caller can change their active permissions, and operate in a less priviledge mode at anytime.  The Push-HPOVAppliancePermission Cmdlet will accept a single or collection of [HPOneView.Appliance.ConnectionPermission] objects.  A new SessionID token will be stored within the ApplianceConnection, and the ConnectionPermissions within the ActivePermissions property that were not provided will have their State set to "false".


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SetActivePermissions &lt;Object&gt;<p>
One or more [HPOneView.Appliance.ConnectionPermission] objects from an [HPOneView.Appliance.Connection] ActivePermissions property.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ConnectionPermission**_

 

One or more appliance connection permissions and their active state.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ConnectedSessions[0].ActivePermissions

RoleName              ScopeName     Active
--------              ---------     ------
Network administrator Site A Admins True
Server administrator  AllResources  True

$NewPermissions = $ConnectedSessions[0].ActivePermissions | ? RoleName -match "Network"
Push-HPOVAppliancePermission -SetActivePermissions $NewPermissions</pre>
Change active permissions by filtering for a specific Role.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ConnectedSessions[0].ActivePermissions

RoleName              ScopeName     Active
--------              ---------     ------
Network administrator Site A Admins True
Server administrator  AllResources  True
Server administrator  AllResources  True

$NewPermissions = $ConnectedSessions[0].ActivePermissions | ? ScopeName -match "Site A Admins"
Push-HPOVAppliancePermission -SetActivePermissions $NewPermissions</pre>
Change active permissions by filtering for a specific Scope.



### Related Links

* [Pop-HPOVAppliancePermission](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Pop-HPOVAppliancePermission)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Push-HPOVAppliancePermission
<p>
Change appliance connection active permissions.

### SYNTAX
<p>
<pre><code>Push-HPOVAppliancePermission [-SetActivePermissions] &lt;Object&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Upon successful login, the caller can change their active permissions, and operate in a less priviledge mode at anytime.  The Push-HPOVAppliancePermission Cmdlet will accept a single or collection of [HPOneView.Appliance.ConnectionPermission] objects.  A new SessionID token will be stored within the ApplianceConnection, and the ConnectionPermissions within the ActivePermissions property that were not provided will have their State set to "false".


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SetActivePermissions &lt;Object&gt;<p>
One or more [HPOneView.Appliance.ConnectionPermission] objects from an [HPOneView.Appliance.Connection] ActivePermissions property.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ConnectionPermission**_

 

One or more appliance connection permissions and their active state.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ConnectedSessions[0].ActivePermissions

RoleName              ScopeName     Active
--------              ---------     ------
Network administrator Site A Admins True
Server administrator  AllResources  True

$NewPermissions = $ConnectedSessions[0].ActivePermissions | ? RoleName -match "Network"
Push-HPOVAppliancePermission -SetActivePermissions $NewPermissions</pre>
Change active permissions by filtering for a specific Role.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ConnectedSessions[0].ActivePermissions

RoleName              ScopeName     Active
--------              ---------     ------
Network administrator Site A Admins True
Server administrator  AllResources  True
Server administrator  AllResources  True

$NewPermissions = $ConnectedSessions[0].ActivePermissions | ? ScopeName -match "Site A Admins"
Push-HPOVAppliancePermission -SetActivePermissions $NewPermissions</pre>
Change active permissions by filtering for a specific Scope.



### Related Links

* [Pop-HPOVAppliancePermission](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Pop-HPOVAppliancePermission)


***
<div align=right><a href="#Top">Top</a></div>
