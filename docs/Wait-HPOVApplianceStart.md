<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Wait-HPOVApplianceStart
<p>
Wait for Appliance services to start.

### SYNTAX
<p>
<pre><code>Wait-HPOVApplianceStart [-Hostname] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Internal module helper function to wait for the appliance services to start.  This helper function will be called by Send-HPOVRequest when the [System.Net.WebRequest] GetResponse() client generates an [Net.WebException] exception.  Then, this function will be called to provide the caller with an indication that the appliance is starting its services.  This will display two prompts:

1. An initial text-based progress bar while the System.Net.WebRequest is able to access the web service on the appliance to begin polling for service startup status.
2. Write-Progress indicator displaying the overall service startup.

If any service fails to startup, this function will cause a terminating error, informing the caller to go visit the appliance kiosk console to get more information about the startup error.

When the appliance successfully starts, this function will return.


### Parameters

-Hostname &lt;String&gt;<p>
Aliases [-Appliance]

Specify the appliance FQDN or IP Address without a valid connection created by using Connect-HPOVMgmt.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**Write-Progress**_

 

The Write-Progress cmdlet is used to display the startup progress



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Wait-HPOVApplianceStart -Appliance appliance.contoso.com
</pre>
Wait for the appliance to start, and specify the appliance name.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Wait-HPOVApplianceStart
<p>
Wait for Appliance services to start.

### SYNTAX
<p>
<pre><code>Wait-HPOVApplianceStart [-Hostname] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Internal module helper function to wait for the appliance services to start.  This helper function will be called by Send-HPOVRequest when the [System.Net.WebRequest] GetResponse() client generates an [Net.WebException] exception.  Then, this function will be called to provide the caller with an indication that the appliance is starting its services.  This will display two prompts:

1. An initial text-based progress bar while the System.Net.WebRequest is able to access the web service on the appliance to begin polling for service startup status.
2. Write-Progress indicator displaying the overall service startup.

If any service fails to startup, this function will cause a terminating error, informing the caller to go visit the appliance kiosk console to get more information about the startup error.

When the appliance successfully starts, this function will return.


### Parameters

-Hostname &lt;String&gt;<p>
Aliases [-Appliance]

Specify the appliance FQDN or IP Address without a valid connection created by using Connect-HPOVMgmt.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**Write-Progress**_

 

The Write-Progress cmdlet is used to display the startup progress



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Wait-HPOVApplianceStart -Appliance appliance.contoso.com
</pre>
Wait for the appliance to start, and specify the appliance name.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Wait-HPOVApplianceStart
<p>
Wait for Appliance services to start.

### SYNTAX
<p>
<pre><code>Wait-HPOVApplianceStart [-Hostname] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Internal module helper function to wait for the appliance services to start.  This helper function will be called by Send-HPOVRequest when the [System.Net.WebRequest] GetResponse() client generates an [Net.WebException] exception.  Then, this function will be called to provide the caller with an indication that the appliance is starting its services.  This will display two prompts:

1. An initial text-based progress bar while the System.Net.WebRequest is able to access the web service on the appliance to begin polling for service startup status.
2. Write-Progress indicator displaying the overall service startup.

If any service fails to startup, this function will cause a terminating error, informing the caller to go visit the appliance kiosk console to get more information about the startup error.

When the appliance successfully starts, this function will return.


### Parameters

-Hostname &lt;String&gt;<p>
Aliases [-Appliance]

Specify the appliance FQDN or IP Address without a valid connection created by using Connect-HPOVMgmt.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**Write-Progress**_

 

The Write-Progress cmdlet is used to display the startup progress



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Wait-HPOVApplianceStart -Appliance appliance.contoso.com
</pre>
Wait for the appliance to start, and specify the appliance name.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
