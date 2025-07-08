---
description: Retrieve Logical Switch resources.
---

# Get-OVLogicalSwitch

## Syntax

```powershell
Get-OVLogicalSwitch
    [-Name <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [-exportFile <String>]
    [<CommonParameters>]
```

```powershell
Get-OVLogicalSwitch
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A logical switch is added into HPE OneView as a managed or monitored logical switch. The logical switch can consist of a maximum of two physical top-of-rack switches (external to the HPE Synergy frame) configured in a single stacking domain.

There is a connectivity limitation of one logical interconnect to one logical switch. Interconnects within a logical interconnect cannot be connected to more than one logical switch.

A logical switch is based on a logical switch group configuration. If the logical switch transitions to an Inconsistent with group state (due to the changes in either the logical switch or the logical switch group), update the logical switch configuration based on the logical switch group to return to a consistent state.

About assigning Arista switches to a logical switch (HPE Synergy only)

You can create a logical switch with a maximum of two Arista switches. When there are two Arista switches in a logical switch, they must be in a multichassis link aggregation (MLAG) environment. MLAG must be configured on both the switches, and they must belong to the same MLAG domain.

About assigning Cisco Nexus switches to a logical switch (HPE BladeSystem only)

You can create a logical switch with a maximum of two Cisco Nexus switches. When there are two Cisco Nexus switches in a logical switch, they must be in a virtual PortChannel (vPC) environment. vPC must be configured on both the switches, and they must belong to the same vPC domain.

A virtual PortChannel (vPC) allows links that are physically connected to two different switches to appear as a single port channel to a third switch. vPC domain ID, vPC primary MAC address, vPC member ID, vPC role in a vPC domain can be configured for Cisco Nexus switches.

Stacking links can be set from the originating peer or the destination peer when two switches are participating in the vPC environment. Also, stacking links can be set to the destination end of the peer link between two vPC switches.

About assigning rack connectivity modules to a logical switch

You can create a logical switch that pairs two rack connectivity modules. You can assign rack servers and server profiles to the two rack connectivity modules that are associated with the logical switch.

When rack servers are assigned to the rack connectivity modules that are associated with the logical switch, the following configurations are checked:

* The rack servers are consistently connected with the two rack connectivity modules.
* The rack server is connected to the same port on both rack connectivity modules.

If there are issues during the initial server profile assignment, validation errors are displayed during server profile creation.

If the cabling configuration is changed after the server profile assignment, alerts are displayed on the Logical Switches, Server Profiles, and Switches screens as applicable.

Stacking links can be set from the originating peer or from the destination peer when two switches are participating in the MLAG environment.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVLogicalSwitch
```

Retrieve all Logical Switch resources from the default appliance connection.

###  Example 2 

```powershell
Get-OVLogicalSwitch -Name MyLogicalSwitch1
```

Retrieve the specified MyLogicalSwitch1 resource from the default appliance connection.

## Parameters

### -Name &lt;String&gt;

Name of the Logical Switch resource.  Supports wildcard * character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Provide an `[HPEOneView.Appliance.TaskResource]` object and the Cmdlet will return the associated Logical Switch resource created from the New-OVLogicalSwitch Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
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

### -ExportFile &lt;String&gt;

Save the Logical Switch resource(s) to the specified JSON file.

| Aliases | x, export |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async Task resource object, from New-OVLogicalSwitch.
    

## Return Values

=== "HPEOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]"
    Single Logical Switch resource.
    

## Related Links

* [Get-OVLogicalSwitchGroup](get-ovlogicalswitchgroup.md)
* [New-OVLogicalSwitch](new-ovlogicalswitch.md)
* [New-OVLogicalSwitchGroup](new-ovlogicalswitchgroup.md)
* [Remove-OVLogicalSwitch](remove-ovlogicalswitch.md)
* [Remove-OVLogicalSwitchGroup](remove-ovlogicalswitchgroup.md)
* [Update-OVLogicalSwitch](update-ovlogicalswitch.md)
