---
description: Create a new resource.
---

# New-OVResource

## Syntax

```powershell
New-OVResource
    [-Uri] <String>
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Create a new resource by passing the URI and the resource details in the form of a PowerShell hashtable.

## Examples

###  Example 1 

```powershell
New-OVResource /rest/ethernet-networks @{vlanId=2000; purpose="General"; name="VLAN 2000"; smartLink=$true; privateNetwork=$false; type="ethernet-networkV2"}
```

Create a new Ethernet Network, "VLAN 2000".

## Parameters

### -Uri &lt;String&gt;

The location where the new object is to be created, using the HTTP POST method.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The new resource that is to be created

| Aliases | Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

=== "System.Management.Automation.PSCustomObject"
    Resource object to create
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    The newly created resource, or async task
    

## Related Links

* [Add-OVResourceToLabel](../facilities/add-ovresourcetolabel.md)
* [Add-OVResourceToRack](../facilities/add-ovresourcetorack.md)
* [Add-OVResourceToScope](../appliance/add-ovresourcetoscope.md)
* [Remove-OVResource](remove-ovresource.md)
* [Remove-OVResourceFromLabel](../appliance/remove-ovresourcefromlabel.md)
* [Remove-OVResourceFromScope](../appliance/remove-ovresourcefromscope.md)
* [Set-OVResource](set-ovresource.md)
