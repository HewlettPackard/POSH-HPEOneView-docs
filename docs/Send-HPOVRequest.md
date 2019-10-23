<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Send-HPOVRequest
<p>
Sends a request to the management appliance

### SYNTAX
<p>
<pre><code>Send-HPOVRequest [-uri] &lt;String&gt; [-method] &lt;String&gt; [-body] &lt;Object&gt; [-start] &lt;Int32&gt; [-count] &lt;Int32&gt; [-AddHeader] &lt;Hashtable&gt;[ [-OverrideContentType] &lt;String&gt;][ [-OverrideTimeout] &lt;Int&gt;] [-Hostname] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Receives the request input, properly constructs and formats the request header and body and sends the request to the management appliance.  This is the main cmdlet that interacts with the appliance.

The message body can contain valid JSON data, with the correct URI and accepted HTTP method accepted by the target resource manager.  Please see the on-appliance Resource Model for more information (https://[appliance_IP]/help/cic/en/content/images/api/.)


### Parameters

-AddHeader &lt;Hashtable&gt;<p>
If additional headers are needed/required than the defaults, include header names and values within a Hashtable.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;Object&gt;<p>
The destination appliance to process the request.  When specifying a Value, it must match the HostName attribute of a valid HPOneView.Appliance.Connection object within the Global $ConnectedSessions variable.  If no match is found, or no HPOneView.Appliance.Connection objects exist, an error will be thrown.

Default Value: All valid Appliance Connections within $Global:ConnectedSessions

<table><tbody><tr><td>Aliases</td><td>Appliance, ApplianceConnection</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideContentType &lt;String&gt;<p>
Workaround to override ContentType where needed (e.g. PATCH /rest/scopes/{GUID}.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>6</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideTimeout &lt;Int&gt;<p>
Specify to override the HttpWebRequest syncronous timeout being made.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>7</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -body &lt;Object&gt;<p>
Body for the request.  Required if the method is POST or PUT.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -count &lt;Int32&gt;<p>
For GETs on resource collections, this specifies the number of collection members to return.
If not specified, all members of the collection are returned from this function.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -method &lt;String&gt;<p>
The request HTTP Method.

	* "GET" (default) to get a resource from the appliance (read)
	* "POST" to create a new resource
	* "PUT" to modify a resource (write)
	* "PATCH" to modify a resource (write), with specific attributes set to values, other attributes should be set to $null.
	* "DELETE" to delete a resource

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>GET</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -start &lt;Int32&gt;<p>
For GETs on resource collections, this specifies the starting index in the collection.
If not specified, collection members starting from the beginning are returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -uri &lt;String&gt;<p>
The uri that identifies the required resource on the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList**_

 

If collection of resources (.i.e. GET /rest/ethernet-networks)

 _**System.Management.Automation.PSCustomObject**_

 

Single object returned from appliance
 
     If Async task, a Hashtable is returned with the following contents:
 
         @{
             uri = TaskUri;
             category = "tasks";
             type = "TaskResourceV2";
             taskState = "New";
             resource = @{};
         }

 _**System.Management.Automation.PSCustomObject**_

 

If no resources are found, a PsCustomObject is returned that contains:
 
         @{
             statusCode = [int]HTTP Status Code;
             statusMessage = [string]HTTP Status Message;
             lastCall = [string]URI;
         }



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Send-HPOVRequest "/rest/enclosures"
</pre>
Returns all the enclosure objects managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$e = Send-HPOVRequest "/rest/enclosures/SGH2X6J1" -Appliance MyAppliance.domain.com
$e.name = "New Name"
Send-HPOVRequest $e.uri "PUT" $e -Appliance MyAppliance.domain.com

</pre>
Updates the name of the enclosure object specified by the uri and Appliance Connection name.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Send-HPOVRequest
<p>
Sends a request to the management appliance

### SYNTAX
<p>
<pre><code>Send-HPOVRequest [-uri] &lt;String&gt; [-method] &lt;String&gt; [-body] &lt;Object&gt; [-start] &lt;Int32&gt; [-count] &lt;Int32&gt; [-AddHeader] &lt;Hashtable&gt;[ [-OverrideContentType] &lt;String&gt;][ [-OverrideTimeout] &lt;Int&gt;] [-Hostname] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Receives the request input, properly constructs and formats the request header and body and sends the request to the management appliance.  This is the main cmdlet that interacts with the appliance.

The message body can contain valid JSON data, with the correct URI and accepted HTTP method accepted by the target resource manager.  Please see the on-appliance Resource Model for more information (https://[appliance_IP]/help/cic/en/content/images/api/.)


### Parameters

-AddHeader &lt;Hashtable&gt;<p>
If additional headers are needed/required than the defaults, include header names and values within a Hashtable.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;Object&gt;<p>
The destination appliance to process the request.  When specifying a Value, it must match the HostName attribute of a valid HPOneView.Appliance.Connection object within the Global $ConnectedSessions variable.  If no match is found, or no HPOneView.Appliance.Connection objects exist, an error will be thrown.

Default Value: All valid Appliance Connections within $Global:ConnectedSessions

<table><tbody><tr><td>Aliases</td><td>Appliance, ApplianceConnection</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideContentType &lt;String&gt;<p>
Workaround to override ContentType where needed (e.g. PATCH /rest/scopes/{GUID}.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>6</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideTimeout &lt;Int&gt;<p>
Specify to override the HttpWebRequest syncronous timeout being made.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>7</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -body &lt;Object&gt;<p>
Body for the request.  Required if the method is POST or PUT.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -count &lt;Int32&gt;<p>
For GETs on resource collections, this specifies the number of collection members to return.
If not specified, all members of the collection are returned from this function.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -method &lt;String&gt;<p>
The request HTTP Method.

	* "GET" (default) to get a resource from the appliance (read)
	* "POST" to create a new resource
	* "PUT" to modify a resource (write)
	* "PATCH" to modify a resource (write), with specific attributes set to values, other attributes should be set to $null.
	* "DELETE" to delete a resource

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>GET</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -start &lt;Int32&gt;<p>
For GETs on resource collections, this specifies the starting index in the collection.
If not specified, collection members starting from the beginning are returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -uri &lt;String&gt;<p>
The uri that identifies the required resource on the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList**_

 

If collection of resources (.i.e. GET /rest/ethernet-networks)

 _**System.Management.Automation.PSCustomObject**_

 

Single object returned from appliance
 
     If Async task, a Hashtable is returned with the following contents:
 
         @{
             uri = TaskUri;
             category = "tasks";
             type = "TaskResourceV2";
             taskState = "New";
             resource = @{};
         }

 _**System.Management.Automation.PSCustomObject**_

 

If no resources are found, a PsCustomObject is returned that contains:
 
         @{
             statusCode = [int]HTTP Status Code;
             statusMessage = [string]HTTP Status Message;
             lastCall = [string]URI;
         }



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Send-HPOVRequest "/rest/enclosures"
</pre>
Returns all the enclosure objects managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$e = Send-HPOVRequest "/rest/enclosures/SGH2X6J1" -Appliance MyAppliance.domain.com
$e.name = "New Name"
Send-HPOVRequest $e.uri "PUT" $e -Appliance MyAppliance.domain.com

</pre>
Updates the name of the enclosure object specified by the uri and Appliance Connection name.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Send-HPOVRequest
<p>
Sends a request to the management appliance

### SYNTAX
<p>
<pre><code>Send-HPOVRequest [-uri] &lt;String&gt; [-method] &lt;String&gt; [-body] &lt;Object&gt; [-start] &lt;Int32&gt; [-count] &lt;Int32&gt; [-AddHeader] &lt;Hashtable&gt;[ [-OverrideContentType] &lt;String&gt;][ [-OverrideTimeout] &lt;Int&gt;] [-Hostname] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Receives the request input, properly constructs and formats the request header and body and sends the request to the management appliance.  This is the main cmdlet that interacts with the appliance.

The message body can contain valid JSON data, with the correct URI and accepted HTTP method accepted by the target resource manager.  Please see the on-appliance Resource Model for more information (https://[appliance_IP]/help/cic/en/content/images/api/.)


### Parameters

-AddHeader &lt;Hashtable&gt;<p>
If additional headers are needed/required than the defaults, include header names and values within a Hashtable.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;Object&gt;<p>
The destination appliance to process the request.  When specifying a Value, it must match the HostName attribute of a valid HPOneView.Appliance.Connection object within the Global $ConnectedSessions variable.  If no match is found, or no HPOneView.Appliance.Connection objects exist, an error will be thrown.

Default Value: All valid Appliance Connections within $Global:ConnectedSessions

<table><tbody><tr><td>Aliases</td><td>Appliance, ApplianceConnection</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideContentType &lt;String&gt;<p>
Workaround to override ContentType where needed (e.g. PATCH /rest/scopes/{GUID}.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>6</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideTimeout &lt;Int&gt;<p>
Specify to override the HttpWebRequest syncronous timeout being made.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>7</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -body &lt;Object&gt;<p>
Body for the request.  Required if the method is POST or PUT.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -count &lt;Int32&gt;<p>
For GETs on resource collections, this specifies the number of collection members to return.
If not specified, all members of the collection are returned from this function.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -method &lt;String&gt;<p>
The request HTTP Method.

	* "GET" (default) to get a resource from the appliance (read)
	* "POST" to create a new resource
	* "PUT" to modify a resource (write)
	* "PATCH" to modify a resource (write), with specific attributes set to values, other attributes should be set to $null.
	* "DELETE" to delete a resource

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>GET</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -start &lt;Int32&gt;<p>
For GETs on resource collections, this specifies the starting index in the collection.
If not specified, collection members starting from the beginning are returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -uri &lt;String&gt;<p>
The uri that identifies the required resource on the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList**_

 

If collection of resources (.i.e. GET /rest/ethernet-networks)

 _**System.Management.Automation.PSCustomObject**_

 

Single object returned from appliance
 
     If Async task, a Hashtable is returned with the following contents:
 
         @{
             uri = TaskUri;
             category = "tasks";
             type = "TaskResourceV2";
             taskState = "New";
             resource = @{};
         }

 _**System.Management.Automation.PSCustomObject**_

 

If no resources are found, a PsCustomObject is returned that contains:
 
         @{
             statusCode = [int]HTTP Status Code;
             statusMessage = [string]HTTP Status Message;
             lastCall = [string]URI;
         }



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Send-HPOVRequest "/rest/enclosures"
</pre>
Returns all the enclosure objects managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$e = Send-HPOVRequest "/rest/enclosures/SGH2X6J1" -Appliance MyAppliance.domain.com
$e.name = "New Name"
Send-HPOVRequest $e.uri "PUT" $e -Appliance MyAppliance.domain.com

</pre>
Updates the name of the enclosure object specified by the uri and Appliance Connection name.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
