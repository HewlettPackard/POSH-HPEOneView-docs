---
description: Show the MAC Table for Logical Interconnect resource(s).
---

# Show-OVLogicalInterconnectMacTable

## Syntax

```powershell
Show-OVLogicalInterconnectMacTable
    [-InputObject] <Object>
    [-network] <String>
    [-Export] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Show-OVLogicalInterconnectMacTable
    [-InputObject] <Object>
    [-network] <String>
    [-Export] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Show-OVLogicalInterconnectMacTable
    [-InputObject] <Object>
    [-MacAddress] <String>
    [-Export] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will help show the MAC Table of Logical Interconnect resources.  The REST API currently limits the first 100 MAC addresses from the MAC table, regardless of the number of MAC Addresses learned in the table.

Use the -Network parameter to specify the Network Name to display learned MAC Addresses.  You can export the results to a CSV file, by providing the full path and filename to export to, using the -ExportFile parameter.

To display the results in a formatted list, use the -List parameter.

## Examples

###  Example 1 

```powershell
Show-OVLogicalInterconnectMacTable
```

Return as many MAC Addresses allowed by the API for all Logical Interconnect resources.

###  Example 2 

```powershell
Show-OVLogicalInterconnectMacTable -network VLAN100
Enclosure Interconnect    Interface Address           Type    Network   VLAN
--------- ------------    --------- -------           ----    -------   ----
Encl1      interconnect 2 LAG 27    38:22:D6:35:5A:62 Learned VLAN100  30
Encl1      interconnect 1 LAG 26    38:22:D6:35:5A:62 Learned VLAN100  30
Encl1      interconnect 1 LAG 26    78:AC:C0:72:E5:D9 Learned VLAN100  30
```

Display all available MAC Addresses learned in "VLAN100" network in all Logical Interconnect resources, and display in a formatted table.

###  Example 3 

```powershell
Show-OVLogicalInterconnectMacTable -network VLAN100 -exportfile C:\reports\Encl1-LI_vlan100_mactable.csv
```

Retrieve the available MAC Addresses learned in "VLAN100" network, and export to C:\reports\Encl1-LI_vlan100_mactable.csv

## Parameters

### -InputObject &lt;Object&gt;

The Name, URI, Logical Interconnect Resource or an array of either to display the MAC Address tables from.

| Aliases | name, li, LogicalInterconnect |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Network &lt;String&gt;

Provide the Network Name to filter the MAC Table results for.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MacAddress &lt;String&gt;

Provide a MAC Address to locate in the MAC Table.

| Aliases | mac |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Export &lt;String&gt;

Export to a CSV, provide the full path and filename.

| Aliases | x, ExportFile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "System.Collections.ArrayList"
    An Array of Logical Interconnect resource URI"s, Names or Objects
    

=== "System.Management.Automation.PSCustomObject"
    Logical Interconnect Resource Object
    

## Return Values

=== "System.Collections.ArrayList"
    Collection of MAC Address Table entries
    

## Related Links

