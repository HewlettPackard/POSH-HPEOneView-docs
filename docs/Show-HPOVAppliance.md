<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## Show-HPOVAppliance
<p>
Display HP OneView appliance connected to.

### SYNTAX
<p>
<pre><code>Show-HPOVAppliance [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will show the connected appliance information.  Will contain the connected user account and the appliance address.  Can be used when the default prompt has been disabled with the Set-HPOVPrompt cmdlet.


### Parameters

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_
 


### Return Values

_**System.Object**_
 
With a valid session ID, the Connected To appliance information is displayed.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> Show-HPOVAppliance
User      : administrator
Appliance : hpov.contoso.com

</pre>
Display what appliance the library is connected to.



### Related Links

* [Connect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Connect-HPOVMgmt)


***
<div align=right><a href="#Top">Top</a></div>
