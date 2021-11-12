---
description: Remove a SAN Manager.
---

# Remove-OVSanManager

## Syntax

```powershell
Remove-OVSanManager
    [-InputObject] <Object>
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

This Cmdlet is used to remove the specified SAN Manager from the appliance.  Before removing a SAN Manager, the Managed SAN resource must be removed from any configured FC or FCoE Network resources.

## Examples

###  Example 1 

```powershell
Remove-OVSanManager bna.contoso.com
```

Remove the `[bna.contoso.com]` SAN Manager from the appliance.

###  Example 2 

```powershell
Get-OVSanManager | Remove-OVSanManager
```

Remove all SAN Managers from all connected appliances.

## Parameters

### -InputObject &lt;Object&gt;

Managed SAN resource object or name to remove.

| Aliases | Name, SanManager |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

SAN Manager resource object(s)

## Return Values

_**System.Management.Automation.PSCustomObject**_

A PSCustomObject is returned indicating successful removal of the resource

## Related Links

* [Add-OVSanManager](add-ovsanmanager.md)
* [Get-OVSanManager](get-ovsanmanager.md)
* [Set-OVSanManager](set-ovsanmanager.md)
* [Update-OVSanManager](update-ovsanmanager.md)
