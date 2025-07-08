---
description: Retrieve Uplink Set resource(s).
---

# Get-OVUplinkSet

## Syntax

```powershell
Get-OVUplinkSet
    [-Name] <String>
    [-LogicalInterconnect] <Object>
    [-Report]
    [-ApplianceConnection] <Object>
    [-ExportFile] <String>
    [<CommonParameters>]
```

```powershell
Get-OVUplinkSet
    [-LogicalInterconnect] <Object>
    [-Type] <String>
    [-Report]
    [-ApplianceConnection] <Object>
    [-ExportFile] <String>
    [<CommonParameters>]
```

## Description

This Cmdlet will retrieve the list of all Uplink Sets or specific by the name.  The Cmdlet will only display provisioned Uplink Sets that are members of a Logical Interconnect resource.  To view Uplink Sets of a Logical Interconnect Group, use the Get-OVLogicalInterconnectGroup Cmdlet.

## Examples

###  Example 1 

```powershell
$UplinkSets = Get-OVUplinkSet
```

Get list of all Uplink Sets.

###  Example 2 

```powershell
Get-OVUplinkSet -name "Production Networks"
```

Get the "Production Networks" Uplink Set(s).

###  Example 3 

```powershell
Get-OVUplinkSet -name "Production Networks" -report
```

Get the "Production Networks" Uplink Set(s), and generate a report.

###  Example 4 

```powershell
Get-OVUplinkSet -name "Production Networks" -liname "Encl1-LI" -report
```

Get the "Production Networks" Uplink Set that is associated with "Encl1-LI" Logical Interconnect and generate a report.

## Parameters

### -Name &lt;String&gt;

Name of Uplink Set

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LogicalInterconnect &lt;Object&gt;

Name of the Logical Interconnect to show associated Uplink Set.

| Aliases | liname |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -type &lt;String&gt;

Specify the Uplink Set Type to display.  Will display all Uplink Sets of the type provided.  Allowed values:

* Ethernet
* FibreChannel

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -report &lt;SwitchParameter&gt;

Generate a report of the defined Uplink Sets.  Includes Uplink Set type, networks, redundancy report, and assigned uplink ports.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -exportFile &lt;String&gt;

Export the found Uplink Set resource objects to JSON files in the specified directory.

| Aliases | x, export |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    Single Uplink Set
    

=== "System.Collections.ArrayList"
    Multiple Uplink Sets
    

=== "Collection of Uplink Sets"
    
    

## Related Links

* [New-OVUplinkSet](new-ovuplinkset.md)
