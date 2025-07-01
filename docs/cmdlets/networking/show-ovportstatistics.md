---
description: Display Interconnect Port Statistics.
---

# Show-OVPortStatistics

## Syntax

```powershell
Show-OVPortStatistics
    [-Interconnect] <Object>
    [-Port] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Show-OVPortStatistics
    [-Port] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will display the utilization (Format-Table view) or error (Format-List) statistics of a given Interconnect or Interconnect Port.  The default view is Format-Table.  Piping output to Format-List will display error statistics.

## Examples

###  Example 1 

```powershell
Show-OVPortStatistics -interconnect "Encl1, Interconnect 1" -port X1
Port Type: Ethernet

Name Rx Kb/s      Tx Kb/s      Rx Packets  Tx Packets  Rx Non-Unicast PPS Tx Non-Unicast PPS
---- -------      -------      ----------  ----------  ------------------ ------------------
X1   5Kbps (1min) 0Kbps (1min) 6pps (1min) 0pps (1min) 6pps (1min)        0pps (1min)
```

Displays the interface throughput statistics for X1 in a Format-Table display.

###  Example 2 

```powershell
Show-OVPortStatistics -interconnect "Encl1, Interconnect 1" -port X1 | FL
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
```

Displays the interface error statistics for X1 in a Format-List display.

###  Example 3 

```powershell
(Get-OVInterconnect "Encl1, Interconnect 1").ports | ? name -eq X1 | Show-OVPortStatistics
```

Pipe an Interconnect Port object to Show-OVPortStatistics and show the interface throughput statistics.

###  Example 4 

```powershell
Show-OVPortStatistics -interconnect "Encl1, Interconnect 1"
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
```

Display all available ports of the provided Interconnect, using the Interconnect Name.

###  Example 5 

```powershell
$Interconnect = Get-OVInterconnect "Encl1, Interconnect 1"
Show-OVPortStatistics $Interconnect
```

Display all available ports of the provided Interconnect, using an Interconnect PowerShell object.

## Parameters

### -Port &lt;Object&gt;

The name of the Interconnect Port ID (i.e. X1 or D5) to retrieve.  If no Port ID is provided, all Ports of the Interconnect will be returned.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Interconnect &lt;Object&gt;

The Interconnect resource the Port ID is a member of.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Netwroking.Interconnect.Port [System.Management.Automation.PSCustomObject]"
    An Interconnect Port object
    

## Return Values

=== "HPEOneView.Networking.PortStatistics.Ethernet [System.Management.Automation.PSCustomObject]"
    Ethernet Uplink Port statistics
    

=== "HPEOneView.Networking.PortStatistics.FibreChannel [System.Management.Automation.PSCustomObject]"
    Ethernet Uplink Port statistics
    

=== "System.Collections.ArrayList"
    Collection of multiple Interconnect Port statistics
    

## Related Links

