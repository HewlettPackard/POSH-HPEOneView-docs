<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVLdapDefaultDirectory
<p>
Configure Authentication Directory default directory.

### SYNTAX
<p>
<pre><code>Set-HPOVLdapDefaultDirectory [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-DisableLocalLogin] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this cmdlet to set the default Authentication Directory on the appliance.  Use Get-HPOVLdapDirectory to pass in the directory to configure as the default.  Once the Default Directory is set, the CMDLET will configure a Registry Key (HKCU:\Software\Hewlett-Packard\HPOneView) called "AuthProvider#{ApplianceConnectionName}".  The Library will read this value upon load and use it as the default value for the -AuthDirectory parameter in Connect-HPOVMgmt.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableLocalLogin &lt;SwitchParameter&gt;<p>
Use to disable appliance local login accounts.  You cannot use this parameter if an Authentication Directory is not configured.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Directory]
Provide the Directory Name, URI or Object.  If you want to set the Authentication Directory back to Local, specify LOCAL as the name.

<table><tbody><tr><td>Aliases</td><td>Directory</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 Authentication Directory retrieved using Get-HPOVLdapDirectory



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Appliance Authentication Directory setting



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVLdapDefaultDirectory -InputObject "Domain1"
# CMDLET will create:
# HKCU:\Software\Hewlett-Packard\HPOneView\AuthProvider#MyAppliance.domain.com REG_SZ, value = "Domain1"

</pre>
Set "Domain1" as the default authentication directory for the appliance.  Then, the CMDLET will create the REG_SZ "AuthProvider#MyAppliance.domain.com" with a value of "Domain1".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVLdapDefaultDirectory
<p>
Configure Authentication Directory default directory.

### SYNTAX
<p>
<pre><code>Set-HPOVLdapDefaultDirectory [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-DisableLocalLogin] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this cmdlet to set the default Authentication Directory on the appliance.  Use Get-HPOVLdapDirectory to pass in the directory to configure as the default.  Once the Default Directory is set, the CMDLET will configure a Registry Key (HKCU:\Software\Hewlett-Packard\HPOneView) called "AuthProvider#{ApplianceConnectionName}".  The Library will read this value upon load and use it as the default value for the -AuthDirectory parameter in Connect-HPOVMgmt.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableLocalLogin &lt;SwitchParameter&gt;<p>
Use to disable appliance local login accounts.  You cannot use this parameter if an Authentication Directory is not configured.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Directory]
Provide the Directory Name, URI or Object.  If you want to set the Authentication Directory back to Local, specify LOCAL as the name.

<table><tbody><tr><td>Aliases</td><td>Directory</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 Authentication Directory retrieved using Get-HPOVLdapDirectory



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Appliance Authentication Directory setting



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVLdapDefaultDirectory -InputObject "Domain1"
# CMDLET will create:
# HKCU:\Software\Hewlett-Packard\HPOneView\AuthProvider#MyAppliance.domain.com REG_SZ, value = "Domain1"

</pre>
Set "Domain1" as the default authentication directory for the appliance.  Then, the CMDLET will create the REG_SZ "AuthProvider#MyAppliance.domain.com" with a value of "Domain1".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVLdapDefaultDirectory
<p>
Configure Authentication Directory default directory.

### SYNTAX
<p>
<pre><code>Set-HPOVLdapDefaultDirectory [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-DisableLocalLogin] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this cmdlet to set the default Authentication Directory on the appliance.  Use Get-HPOVLdapDirectory to pass in the directory to configure as the default.  Once the Default Directory is set, the CMDLET will configure a Registry Key (HKCU:\Software\Hewlett-Packard\HPOneView) called "AuthProvider#{ApplianceConnectionName}".  The Library will read this value upon load and use it as the default value for the -AuthDirectory parameter in Connect-HPOVMgmt.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableLocalLogin &lt;SwitchParameter&gt;<p>
Use to disable appliance local login accounts.  You cannot use this parameter if an Authentication Directory is not configured.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Directory]
Provide the Directory Name, URI or Object.  If you want to set the Authentication Directory back to Local, specify LOCAL as the name.

<table><tbody><tr><td>Aliases</td><td>Directory</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 Authentication Directory retrieved using Get-HPOVLdapDirectory



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Appliance Authentication Directory setting



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVLdapDefaultDirectory -InputObject "Domain1"
# CMDLET will create:
# HKCU:\Software\Hewlett-Packard\HPOneView\AuthProvider#MyAppliance.domain.com REG_SZ, value = "Domain1"

</pre>
Set "Domain1" as the default authentication directory for the appliance.  Then, the CMDLET will create the REG_SZ "AuthProvider#MyAppliance.domain.com" with a value of "Domain1".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
