<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Show-HPOVPortStatistics
<p>
Display Interconnect Port Statistics.

### SYNTAX
<p>
<pre><code>Show-HPOVPortStatistics [-Interconnect] &lt;Object&gt; [-Port] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVPortStatistics [-Port] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the utilization (Format-Table view) or error (Format-List) statistics of a given Interconnect or Interconnect Port.  The default view is Format-Table.  Piping output to Format-List will display error statistics.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Interconnect &lt;Object&gt;<p>
The Interconnect resource the Port ID is a member of.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Object&gt;<p>
The name of the Interconnect Port ID (i.e. X1 or D5) to retrieve.  If no Port ID is provided, all Ports of the Interconnect will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Netwroking.Interconnect.Port [System.Management.Automation.PSCustomObject]**_

 An Interconnect Port object



### Return Values

_**HPOneView.Networking.PortStatistics.Ethernet [System.Management.Automation.PSCustomObject]**_

 

Ethernet Uplink Port statistics

 _**HPOneView.Networking.PortStatistics.FibreChannel [System.Management.Automation.PSCustomObject]**_

 

Ethernet Uplink Port statistics

 _**System.Collections.ArrayList**_

 

Collection of multiple Interconnect Port statistics



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVPortStatistics -interconnect "Encl1, Interconnect 1" -port X1
Port Type: Ethernet

Name Rx Kb/s      Tx Kb/s      Rx Packets  Tx Packets  Rx Non-Unicast PPS Tx Non-Unicast PPS
---- -------      -------      ----------  ----------  ------------------ ------------------
X1   5Kbps (1min) 0Kbps (1min) 6pps (1min) 0pps (1min) 6pps (1min)        0pps (1min)

</pre>
Displays the interface throughput statistics for X1 in a Format-Table display.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Show-HPOVPortStatistics -interconnect "Encl1, Interconnect 1" -port X1 | FL
Port Type: Ethernet


Name                        : X4
Rx Kb/s                     : 5Kbps (1min)
Tx Kb/s                     : 0Kbps (1min)
In Discards                 :
Out Discards                :
In Errors                   :
Out Errors                  :
CRC Errors Rx/Tx            :
MTU Exceeded Discards Rx/Tx :
Giants Rx/Tx                :

</pre>
Displays the interface error statistics for X1 in a Format-List display.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
(Get-HPOVInterconnect "Encl1, Interconnect 1").ports | ? name -eq X1 | Show-HPOVPortStatistics
</pre>
Pipe an Interconnect Port object to Show-HPOVPortStatistics and show the interface throughput statistics.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Show-HPOVPortStatistics -interconnect "Encl1, Interconnect 1"
Port Type: Ethernet

Name Rx Kb/s      Tx Kb/s       Rx Packets  Tx Packets   Rx Non-Unicast PPS Tx Non-Unicast PPS
---- -------      -------       ----------  ----------   ------------------ ------------------
d1   0Kbps (1min) 8Kbps (1min)  0pps (1min) 6pps (1min)  0pps (1min)        5pps (1min)
d10  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d11  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d12  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d13  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d14  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d15  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d16  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d2   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d3   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d4   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d5   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d6   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d7   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d8   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d9   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
X4   6Kbps (1min) 0Kbps (1min)  6pps (1min) 0pps (1min)  6pps (1min)        0pps (1min)
X5   6Kbps (1min) 0Kbps (1min)  4pps (1min) 0pps (1min)  4pps (1min)        0pps (1min)
X6   4Kbps (1min) 0Kbps (1min)  3pps (1min) 0pps (1min)  3pps (1min)        0pps (1min)
X7   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
X8   6Kbps (1min) 11Kbps (1min) 7pps (1min) 14pps (1min) 7pps (1min)        14pps (1min)




   Port Type: FibreChannel

Name Rx Throughput Tx Throughput Rx Frames (Total) Tx Frames (Total) Rx Bytes (Total) Tx Bytes (Total)
---- ------------- ------------- ----------------- ----------------- ---------------- ----------------
X1   0 MB/s        0 MB/s        56868             85074             84809592         146546884
X2   0 MB/s        0 MB/s        7999              7999              579644           622152
X3   0 MB/s        0 MB/s        0                 0                 0                0

</pre>
Display all available ports of the provided Interconnect, using the Interconnect Name.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$Interconnect = Get-HPOVInterconnect "Encl1, Interconnect 1"
Show-HPOVPortStatistics $Interconnect

</pre>
Display all available ports of the provided Interconnect, using an Interconnect PowerShell object.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Show-HPOVPortStatistics
<p>
Display Interconnect Port Statistics.

### SYNTAX
<p>
<pre><code>Show-HPOVPortStatistics [-Interconnect] &lt;Object&gt; [-Port] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVPortStatistics [-Port] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the utilization (Format-Table view) or error (Format-List) statistics of a given Interconnect or Interconnect Port.  The default view is Format-Table.  Piping output to Format-List will display error statistics.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Interconnect &lt;Object&gt;<p>
The Interconnect resource the Port ID is a member of.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Object&gt;<p>
The name of the Interconnect Port ID (i.e. X1 or D5) to retrieve.  If no Port ID is provided, all Ports of the Interconnect will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Netwroking.Interconnect.Port [System.Management.Automation.PSCustomObject]**_

 An Interconnect Port object



### Return Values

_**HPOneView.Networking.PortStatistics.Ethernet [System.Management.Automation.PSCustomObject]**_

 

Ethernet Uplink Port statistics

 _**HPOneView.Networking.PortStatistics.FibreChannel [System.Management.Automation.PSCustomObject]**_

 

Ethernet Uplink Port statistics

 _**System.Collections.ArrayList**_

 

Collection of multiple Interconnect Port statistics



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVPortStatistics -interconnect "Encl1, Interconnect 1" -port X1
Port Type: Ethernet

Name Rx Kb/s      Tx Kb/s      Rx Packets  Tx Packets  Rx Non-Unicast PPS Tx Non-Unicast PPS
---- -------      -------      ----------  ----------  ------------------ ------------------
X1   5Kbps (1min) 0Kbps (1min) 6pps (1min) 0pps (1min) 6pps (1min)        0pps (1min)

</pre>
Displays the interface throughput statistics for X1 in a Format-Table display.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Show-HPOVPortStatistics -interconnect "Encl1, Interconnect 1" -port X1 | FL
Port Type: Ethernet


Name                        : X4
Rx Kb/s                     : 5Kbps (1min)
Tx Kb/s                     : 0Kbps (1min)
In Discards                 :
Out Discards                :
In Errors                   :
Out Errors                  :
CRC Errors Rx/Tx            :
MTU Exceeded Discards Rx/Tx :
Giants Rx/Tx                :

</pre>
Displays the interface error statistics for X1 in a Format-List display.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
(Get-HPOVInterconnect "Encl1, Interconnect 1").ports | ? name -eq X1 | Show-HPOVPortStatistics
</pre>
Pipe an Interconnect Port object to Show-HPOVPortStatistics and show the interface throughput statistics.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Show-HPOVPortStatistics -interconnect "Encl1, Interconnect 1"
Port Type: Ethernet

Name Rx Kb/s      Tx Kb/s       Rx Packets  Tx Packets   Rx Non-Unicast PPS Tx Non-Unicast PPS
---- -------      -------       ----------  ----------   ------------------ ------------------
d1   0Kbps (1min) 8Kbps (1min)  0pps (1min) 6pps (1min)  0pps (1min)        5pps (1min)
d10  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d11  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d12  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d13  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d14  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d15  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d16  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d2   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d3   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d4   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d5   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d6   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d7   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d8   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d9   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
X4   6Kbps (1min) 0Kbps (1min)  6pps (1min) 0pps (1min)  6pps (1min)        0pps (1min)
X5   6Kbps (1min) 0Kbps (1min)  4pps (1min) 0pps (1min)  4pps (1min)        0pps (1min)
X6   4Kbps (1min) 0Kbps (1min)  3pps (1min) 0pps (1min)  3pps (1min)        0pps (1min)
X7   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
X8   6Kbps (1min) 11Kbps (1min) 7pps (1min) 14pps (1min) 7pps (1min)        14pps (1min)




   Port Type: FibreChannel

Name Rx Throughput Tx Throughput Rx Frames (Total) Tx Frames (Total) Rx Bytes (Total) Tx Bytes (Total)
---- ------------- ------------- ----------------- ----------------- ---------------- ----------------
X1   0 MB/s        0 MB/s        56868             85074             84809592         146546884
X2   0 MB/s        0 MB/s        7999              7999              579644           622152
X3   0 MB/s        0 MB/s        0                 0                 0                0

</pre>
Display all available ports of the provided Interconnect, using the Interconnect Name.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$Interconnect = Get-HPOVInterconnect "Encl1, Interconnect 1"
Show-HPOVPortStatistics $Interconnect

</pre>
Display all available ports of the provided Interconnect, using an Interconnect PowerShell object.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Show-HPOVPortStatistics
<p>
Display Interconnect Port Statistics.

### SYNTAX
<p>
<pre><code>Show-HPOVPortStatistics [-Interconnect] &lt;Object&gt; [-Port] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVPortStatistics [-Port] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the utilization (Format-Table view) or error (Format-List) statistics of a given Interconnect or Interconnect Port.  The default view is Format-Table.  Piping output to Format-List will display error statistics.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Interconnect &lt;Object&gt;<p>
The Interconnect resource the Port ID is a member of.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Object&gt;<p>
The name of the Interconnect Port ID (i.e. X1 or D5) to retrieve.  If no Port ID is provided, all Ports of the Interconnect will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Netwroking.Interconnect.Port [System.Management.Automation.PSCustomObject]**_

 An Interconnect Port object



### Return Values

_**HPOneView.Networking.PortStatistics.Ethernet [System.Management.Automation.PSCustomObject]**_

 

Ethernet Uplink Port statistics

 _**HPOneView.Networking.PortStatistics.FibreChannel [System.Management.Automation.PSCustomObject]**_

 

Ethernet Uplink Port statistics

 _**System.Collections.ArrayList**_

 

Collection of multiple Interconnect Port statistics



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVPortStatistics -interconnect "Encl1, Interconnect 1" -port X1
Port Type: Ethernet

Name Rx Kb/s      Tx Kb/s      Rx Packets  Tx Packets  Rx Non-Unicast PPS Tx Non-Unicast PPS
---- -------      -------      ----------  ----------  ------------------ ------------------
X1   5Kbps (1min) 0Kbps (1min) 6pps (1min) 0pps (1min) 6pps (1min)        0pps (1min)

</pre>
Displays the interface throughput statistics for X1 in a Format-Table display.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Show-HPOVPortStatistics -interconnect "Encl1, Interconnect 1" -port X1 | FL
Port Type: Ethernet


Name                        : X4
Rx Kb/s                     : 5Kbps (1min)
Tx Kb/s                     : 0Kbps (1min)
In Discards                 :
Out Discards                :
In Errors                   :
Out Errors                  :
CRC Errors Rx/Tx            :
MTU Exceeded Discards Rx/Tx :
Giants Rx/Tx                :

</pre>
Displays the interface error statistics for X1 in a Format-List display.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
(Get-HPOVInterconnect "Encl1, Interconnect 1").ports | ? name -eq X1 | Show-HPOVPortStatistics
</pre>
Pipe an Interconnect Port object to Show-HPOVPortStatistics and show the interface throughput statistics.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Show-HPOVPortStatistics -interconnect "Encl1, Interconnect 1"
Port Type: Ethernet

Name Rx Kb/s      Tx Kb/s       Rx Packets  Tx Packets   Rx Non-Unicast PPS Tx Non-Unicast PPS
---- -------      -------       ----------  ----------   ------------------ ------------------
d1   0Kbps (1min) 8Kbps (1min)  0pps (1min) 6pps (1min)  0pps (1min)        5pps (1min)
d10  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d11  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d12  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d13  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d14  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d15  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d16  0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d2   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d3   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d4   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d5   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d6   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d7   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d8   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
d9   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
X4   6Kbps (1min) 0Kbps (1min)  6pps (1min) 0pps (1min)  6pps (1min)        0pps (1min)
X5   6Kbps (1min) 0Kbps (1min)  4pps (1min) 0pps (1min)  4pps (1min)        0pps (1min)
X6   4Kbps (1min) 0Kbps (1min)  3pps (1min) 0pps (1min)  3pps (1min)        0pps (1min)
X7   0Kbps (1min) 0Kbps (1min)  0pps (1min) 0pps (1min)  0pps (1min)        0pps (1min)
X8   6Kbps (1min) 11Kbps (1min) 7pps (1min) 14pps (1min) 7pps (1min)        14pps (1min)




   Port Type: FibreChannel

Name Rx Throughput Tx Throughput Rx Frames (Total) Tx Frames (Total) Rx Bytes (Total) Tx Bytes (Total)
---- ------------- ------------- ----------------- ----------------- ---------------- ----------------
X1   0 MB/s        0 MB/s        56868             85074             84809592         146546884
X2   0 MB/s        0 MB/s        7999              7999              579644           622152
X3   0 MB/s        0 MB/s        0                 0                 0                0

</pre>
Display all available ports of the provided Interconnect, using the Interconnect Name.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$Interconnect = Get-HPOVInterconnect "Encl1, Interconnect 1"
Show-HPOVPortStatistics $Interconnect

</pre>
Display all available ports of the provided Interconnect, using an Interconnect PowerShell object.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
