---
description: Retrieve Logical Interconnect Group resource(s).
---

# Get-OVLogicalInterconnectGroup

## Syntax

```powershell
Get-OVLogicalInterconnectGroup
    [-Name <String>]
    [-Type <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [-exportFile <String>]
    [<CommonParameters>]
```

```powershell
Get-OVLogicalInterconnectGroup
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A logical interconnect group acts as a recipe for creating a logical interconnect representing the available networks, uplink sets, and interconnect settings for a set of physical interconnects in a set of enclosures.  One or more logical interconnect groups are associated with an enclosure group and are used to define the logical interconnect configuration for every enclosure that is using that enclosure group. 

There are different kinds of logical interconnect groups:

* A multiple-enclosure logical interconnect group must match the interconnect link topology within the set of linked enclosures. All bays must be properly populated in all enclosures in the interconnect link topology. A multiple-enclosure logical interconnect group must include a Virtual Connect SE 40Gb F8 Module for Synergy and/or a HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy and the Interconnect Link Module configuration.
* Single-enclosure logical interconnect groups, such as an HPE Synergy Serial Attached SCSI (SAS) or HPE BladeSystem c7000 logical interconnect group, pertain only to the enclosure in which they are applied. A single-enclosure logical interconnect group can be applied to individual fabric module bays in individual enclosures in the HPE Synergy interconnect link topology or HPE BladeSystem c7000 enclosure. Virtual Connect SE Fibre Channel modules support single-enclosure logical interconnect groups.

All references to a logical interconnect group by an enclosure group or logical interconnect must be removed before you can delete the logical interconnect group.

This Cmdlet retrieves a list of all Logical Interconnect Group or just specific ones via a query if the name parameter is provided. The output can be sent to a file using the exportFile parameter.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVLogicalInterconnectGroup
```

Returns all Logical Interconnect Groups defined on the appliance to standard output.

###  Example 2 

```powershell
Get-OVLogicalInterconnectGroup -Name "Production"
```

Returns just the Production Logical Interconnect Group object to standard output.

###  Example 3 

```powershell
$LigName = "VC FF Virt Prod"
$CreatedLig = New-OVLogicalInterconnectGroup -Name $LigName -bays @{1 = "FlexFabric";2 = "FlexFabric"} -EnableIgmpSnooping $True -InternalNetworks "VMMigration Network" | Wait-OVTaskComplete | Get-OVLogicalInterconnectGroup
$CreatedLig

Name            Enclosure Groups
----            ----------------
VC FF Virt Prod
```

Create a new Logical Interconnect Group resource, wait for the task to complete, then retrieve the created resource.

###  Example 4 

```powershell
Get-OVLogicalInterconnectGroup -exportFile "c:\myApplianceConfig\LogicaICGs.json"
```

Returns the Get-OVLogicalInterconnectGroup query results to the file c:\myApplianceConfig\LogicaICGs.json

## Parameters

### -InputObject &lt;Object&gt;

Pipeline input resource generated from Wait-OVTaskComplete, or successfully completed Async Task resource object.

| Aliases | Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

The name of the Logical Interconnect Group to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Type &lt;String&gt;

Provide the type of Logical Interconnect Group to return.  Omit to return all Logical Interconnect Group resources.

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

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -exportFile &lt;String&gt;

The full path and file name to export the contents retrieved from the call to Get-OVLogicalInterconnectGroup.

| Aliases | x, export |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Networking.LogicalInterconnectGroup [System.Management.Automation.PSCustomObject]"
    A logical interconnect resource.
    

## Return Values

=== "System.Collections.ArrayList"
    A Logical Interconnect Group or collection of Logical Interconnect Groups
    

## Related Links

* [New-OVLogicalInterconnectGroup](new-ovlogicalinterconnectgroup.md)
* [Remove-OVLogicalInterconnectGroup](remove-ovlogicalinterconnectgroup.md)
