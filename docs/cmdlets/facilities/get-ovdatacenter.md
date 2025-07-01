---
description: Retrieve a defined DataCenter.
---

# Get-OVDataCenter

## Syntax

```powershell
Get-OVDataCenter
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A data center represents a physically contiguous area in which racks containing IT equipment are located. For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas. Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system. When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will retrieve all or a specific DataCenter resource object. If Remote Support has been enabled on the appliance, the DataCenter object will contain a RemoteSupportLocation property that contains the site location (if different from the Default DataCenter), and both the Primary and Secondary contacts.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVDataCenter
```

Retrieve all defined DataCenters on the appliance.

###  Example 2 

```powershell
Get-OVDataCenter -Name DC*
```

Locate all DataCenter objects that begin with "DC".

###  Example 3 

```powershell
Get-OVDataCenter | Select -ExpandProperty RemoteSupportLocation
```

Retrieve the Remote Support Location property from the found DataCenter resource objects.

## Parameters

### -Name &lt;String&gt;

DataCenter name.  Supports wildcard (*) character.

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

=== "HPEOneView.Facilities.DataCenter"
    A DataCenter resource object.
    

## Related Links

* [New-OVDataCenter](new-ovdatacenter.md)
* [Remove-OVDataCenter](remove-ovdatacenter.md)
* [Set-OVDataCenter](set-ovdatacenter.md)
* [Set-OVDataCenterRemoteSupport](../appliance/set-ovdatacenterremotesupport.md)
