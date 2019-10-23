<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVRemoteSupportSetting
<p>
Configure supported resource Remote Support settings.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSupportSetting [-InputObject] &lt;Object&gt; [-PrimaryContact] &lt;Object&gt;[ [-SecondaryContact] &lt;Object&gt;][ [-ServicePartner] &lt;Object&gt;][ [-Reseller] &lt;Object&gt;][ [-ContractType] &lt;String&gt;][ [-SupportID] &lt;String&gt;][ [-NewSerialNumber] &lt;String&gt;][ [-NewProductNumber] &lt;String&gt;] [-Enabled] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVRemoteSupportSetting [-InputObject] &lt;Object&gt; [-Disabled] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to configure a supported resources Remote Support collection settings.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ContractType &lt;String&gt;<p>
Use to override the contract type.  If specifying a different contract type, you must supply the SupportID.  Allowed values are:

	* SupportAgreement
	* PackagedSupport.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disabled &lt;SwitchParameter&gt;<p>
Use to disable HPE OneView Remote Support configuration on the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enabled &lt;SwitchParameter&gt;<p>
Use to enable HPE OneView Remote Support configuration on the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NewProductNumber &lt;String&gt;<p>
Use to update the HPE support backend with an updated product number

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NewSerialNumber &lt;String&gt;<p>
Use to update the HPE support backend with an updated serial number.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrimaryContact &lt;Object&gt;<p>
Primary Remote Support Contact user object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reseller &lt;Object&gt;<p>
Authorized HPE reseller partner object from Get-HPOVRemoteSupportPartner.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecondaryContact &lt;Object&gt;<p>
Secondary Remote Support Contact user object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServicePartner &lt;Object&gt;<p>
Authorized HPE service partner object from Get-HPOVRemoteSupportPartner.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SupportID &lt;String&gt;<p>
The support Contract ID.  You must specify the type of contract by using the -ContractType parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 Server hardware resource object.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Enclosure resource object.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$NewReseller = Get-HPOVRemoteSupportContact -Name "New Reseller Name"
Get-HPOVEnclosure -Name Encl1 | Set-HPOVRemoteSupportSetting -Reseller $NewReseller
</pre>
Update "Encl1" with a new reseller contact that was added to the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServer -Name Prd-host-* | Set-HPOVRemoteSupportSetting -ContractType SupportAgreement -SupportID 111199990 
</pre>
Update the servers with a new support agreement.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PrimaryContact = Get-HPOVRemoteSupportContact -Name "Gladi Chua"
$SecondaryContact = Get-HPOVRemoteSupportContact -Name "Luke Smith" 
Get-HPOVEnclosure -Name Prod* | Set-HPOVRemoteSupportSetting -PrimaryContact $PrimaryContact -SecondaryContact $SecondaryContact -Async -OutVariable Tasks
</pre>
Update the Enclosures with new primary and secondary contacts, returning async tasks to monitor using the OutVariable Common Parameter.



### Related Links

* [Get-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportSetting)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVRemoteSupportSetting
<p>
Configure supported resource Remote Support settings.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSupportSetting [-InputObject] &lt;Object&gt; [-PrimaryContact] &lt;Object&gt;[ [-SecondaryContact] &lt;Object&gt;][ [-ServicePartner] &lt;Object&gt;][ [-Reseller] &lt;Object&gt;][ [-ContractType] &lt;String&gt;][ [-SupportID] &lt;String&gt;][ [-NewSerialNumber] &lt;String&gt;][ [-NewProductNumber] &lt;String&gt;] [-Enabled] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVRemoteSupportSetting [-InputObject] &lt;Object&gt; [-Disabled] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to configure a supported resources Remote Support collection settings.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ContractType &lt;String&gt;<p>
Use to override the contract type.  If specifying a different contract type, you must supply the SupportID.  Allowed values are:

	* SupportAgreement
	* PackagedSupport.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disabled &lt;SwitchParameter&gt;<p>
Use to disable HPE OneView Remote Support configuration on the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enabled &lt;SwitchParameter&gt;<p>
Use to enable HPE OneView Remote Support configuration on the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NewProductNumber &lt;String&gt;<p>
Use to update the HPE support backend with an updated product number

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NewSerialNumber &lt;String&gt;<p>
Use to update the HPE support backend with an updated serial number.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrimaryContact &lt;Object&gt;<p>
Primary Remote Support Contact user object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reseller &lt;Object&gt;<p>
Authorized HPE reseller partner object from Get-HPOVRemoteSupportPartner.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecondaryContact &lt;Object&gt;<p>
Secondary Remote Support Contact user object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServicePartner &lt;Object&gt;<p>
Authorized HPE service partner object from Get-HPOVRemoteSupportPartner.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SupportID &lt;String&gt;<p>
The support Contract ID.  You must specify the type of contract by using the -ContractType parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 Server hardware resource object.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Enclosure resource object.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$NewReseller = Get-HPOVRemoteSupportContact -Name "New Reseller Name"
Get-HPOVEnclosure -Name Encl1 | Set-HPOVRemoteSupportSetting -Reseller $NewReseller
</pre>
Update "Encl1" with a new reseller contact that was added to the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServer -Name Prd-host-* | Set-HPOVRemoteSupportSetting -ContractType SupportAgreement -SupportID 111199990 
</pre>
Update the servers with a new support agreement.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PrimaryContact = Get-HPOVRemoteSupportContact -Name "Gladi Chua"
$SecondaryContact = Get-HPOVRemoteSupportContact -Name "Luke Smith" 
Get-HPOVEnclosure -Name Prod* | Set-HPOVRemoteSupportSetting -PrimaryContact $PrimaryContact -SecondaryContact $SecondaryContact -Async -OutVariable Tasks
</pre>
Update the Enclosures with new primary and secondary contacts, returning async tasks to monitor using the OutVariable Common Parameter.



### Related Links

* [Get-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportSetting)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVRemoteSupportSetting
<p>
Configure supported resource Remote Support settings.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSupportSetting [-InputObject] &lt;Object&gt; [-PrimaryContact] &lt;Object&gt;[ [-SecondaryContact] &lt;Object&gt;][ [-ServicePartner] &lt;Object&gt;][ [-Reseller] &lt;Object&gt;][ [-ContractType] &lt;String&gt;][ [-SupportID] &lt;String&gt;][ [-NewSerialNumber] &lt;String&gt;][ [-NewProductNumber] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to configure a supported resources Remote Support collection settings.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>9</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ContractType &lt;String&gt;<p>
Use to override the contract type.  If specifying a different contract type, you must supply the SupportID.  Allowed values are:

	* SupportAgreement
	* PackagedSupport.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NewProductNumber &lt;String&gt;<p>
Use to update the HPE support backend with an updated product number

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>8</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NewSerialNumber &lt;String&gt;<p>
Use to update the HPE support backend with an updated serial number.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>7</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrimaryContact &lt;Object&gt;<p>
Primary Remote Support Contact user object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reseller &lt;Object&gt;<p>
Authorized HPE reseller partner object from Get-HPOVRemoteSupportPartner.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecondaryContact &lt;Object&gt;<p>
Secondary Remote Support Contact user object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServicePartner &lt;Object&gt;<p>
Authorized HPE service partner object from Get-HPOVRemoteSupportPartner.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SupportID &lt;String&gt;<p>
The support Contract ID.  You must specify the type of contract by using the -ContractType parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>6</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 Server hardware resource object.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Enclosure resource object.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$NewReseller = Get-HPOVRemoteSupportContact -Name "New Reseller Name"
Get-HPOVEnclosure -Name Encl1 | Set-HPOVRemoteSupportSetting -Reseller $NewReseller
</pre>
Update "Encl1" with a new reseller contact that was added to the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServer -Name Prd-host-* | Set-HPOVRemoteSupportSetting -ContractType SupportAgreement -SupportID 111199990 
</pre>
Update the servers with a new support agreement.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PrimaryContact = Get-HPOVRemoteSupportContact -Name "Gladi Chua"
$SecondaryContact = Get-HPOVRemoteSupportContact -Name "Luke Smith" 
Get-HPOVEnclosure -Name Prod* | Set-HPOVRemoteSupportSetting -PrimaryContact $PrimaryContact -SecondaryContact $SecondaryContact -Async -OutVariable Tasks
</pre>
Update the Enclosures with new primary and secondary contacts, returning async tasks to monitor using the OutVariable Common Parameter.



### Related Links

* [Get-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportSetting)


***
<div align=right><a href="#Top">Top</a></div>
