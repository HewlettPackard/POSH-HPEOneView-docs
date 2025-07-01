---
description: Retrieve Interconnect resource(s).
---

# Get-OVInterconnect

## Syntax

```powershell
Get-OVInterconnect
    [-Name <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [-Export <String>]
    [<CommonParameters>]
```

## Description

Interconnects enable communication between the server hardware in the enclosure and the data center networks. Interconnects that are managed are put in a Configured state when the Synergy frame is configured by creating a logical enclosure. An unmanaged interconnect remains in the Monitored state when the Synergy frame is configured by creating a logical enclosure.
Retrieves a list of all Interconnects (Ethernet, FC, Converged Network, and/or SAS) or just specific ones via a query if the name parameter is provided. The output can be sent to a file using the Export parameter.
???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVInterconnect
```

Returns all Interconnects managed by all connected appliances to standard output.

###  Example 2 

```powershell
Get-OVInterconnect -Name "Encl1, Interconnect 1"
```

Returns just the Encl1, Interconnect 1 Interconnect object to standard output.

###  Example 3 

```powershell
Get-OVInterconnect -exportFile "c:\myApplianceConfig\ICs.json"
```

Returns the Get-OVInterconnect query results to the file c:\myApplianceConfig\ICs.json

## Parameters

### -Name &lt;String&gt;

The name of the interconnect to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

* AllResources
* AllResourcesInScope
* `[HPEOneView.Appliance.ScopeCollection]`
* `[HPEOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
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

### -Export &lt;String&gt;

The full path and file name to export the contents retrieved from the call to Get-OVInterconnect.

| Aliases | x, exportFile |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Networking.Interconnect [System.Management.Automation.PSCustomObject]"
    Single Interconnect object.
    

=== "HPEOneView.Networking.SasInterconnect [System.Management.Automation.PSCustomObject]"
    Single SAS Interconnect object.
    

=== "System.Collections.ArrayList"
    Multiple Interconnect objects.
    

=== "An Interconnect or collection of Interconnects"
    
    

## Related Links

* [Get-OVInterconnectType](get-ovinterconnecttype.md)
* [Reset-OVInterconnectNetOpPassword](reset-ovinterconnectnetoppassword.md)
