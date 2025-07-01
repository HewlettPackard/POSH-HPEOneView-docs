---
description: Retrieve Interconnect Type resource(s).
---

# Get-OVInterconnectType

## Syntax

```powershell
Get-OVInterconnectType
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Get-OVInterconnectType
    [-PartNumber <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Interconnects enable communication between the server hardware in the enclosure and the data center networks. Interconnects and their configuration are derived from either a Logical Switch Group or Logical Interconnect Group.  When configuring either resource, you will need to specify an interconnect type that is supported by the appliance.

This Cmdlet will retrieve a list of all supported interconnect types (Ethernet, FC, Converged Network, and/or SAS) or specific ones via a query if the name parameter is provided. The output can be sent to a file using the Export parameter.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVInterconnectType
```

Returns all Interconnect Types available from all connected appliances to standard output.

###  Example 2 

```powershell
Get-OVInterconnect -Name "HPE VC FlexFabric 10Gb/24-Port Module"
```

Returns just the "HPE VC FlexFabric 10Gb/24-Port Module" Interconnect Type object to standard output.

###  Example 3 

```powershell
Get-OVInterconnect -Partnumber "571956-B21"
```

Returns just the partnumber "571956-B21" Interconnect Type object to standard output.

## Parameters

### -Name &lt;String&gt;

The name of the interconnect type model name to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PartNumber &lt;String&gt;

The Part Number of an Interconnect Type to search for.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Networking.InterconnectType [System.Management.Automation.PSCustomObject]"
    Single Interconnect Type resource.
    

=== "System.Collections.ArrayList <HPEOneView.Networking.InterconnectType>"
    Multiple Interconnect Type resources or formatted table dispalying basic Interconnect Type information.
    

=== "An Interconnect Type or collection of Interconnect Types."
    
    

## Related Links

