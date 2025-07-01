---
description: Removes an enclosure and associated devices.
---

# Remove-OVEnclosure

## Syntax

```powershell
Remove-OVEnclosure
    [-InputObject] <Object>
    [-ApplianceConnection] <Array>
    [-Force]
    [<CommonParameters>]
```

## Description

Removes an enclosure, its servers, and interconnects from appliance management

## Examples

###  Example 1 

```powershell
$enclosure = Get-OVEnclosure -name "Enclosure1"
Remove-OVEnclosure $enclosure -confirm:$false
```

Remove the enclosure specifed by $enclosure. Disable confirmation prompt.

###  Example 2 

```powershell
Get-OVEnclosure | Remove-OVEnclosure
```

Search for all enclosures and remove them from appliance.

## Parameters

### -InputObject &lt;Object&gt;

The Enclosure object(s) or name(s) to be removed from management.

| Aliases | uri, name, Enclosure, Resource |
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

### -Force &lt;SwitchParameter&gt;

Set to force-remove the enclosure. For example, if the enclosure is gone or is now being managed by a different appliance, force-removing will remove the enclosure from this appliance without clearing vcmode. 

When the request is accepted by the appliance, it does not return an Async Task Resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
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

=== "System.Collections.ArrayList"
    Collection of Enclosure Resources
    

=== "HPEOneView.Enclosure [System.Management.Automation.PSCustomObject]"
    Single Enclosure resource object
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Removal async task
    

=== "System.Management.Automation.PSCustomObject"
    When using the `-Force` parameter, a PSCustomObject is returned indicating successful removal of the resource
    

## Related Links

* [Add-OVEnclosure](add-ovenclosure.md)
* [Get-OVEnclosure](get-ovenclosure.md)
* [Get-OVEnclosureGroup](get-ovenclosuregroup.md)
* [New-OVEnclosureGroup](new-ovenclosuregroup.md)
* [Remove-OVEnclosureGroup](remove-ovenclosuregroup.md)
* [Reset-OVEnclosureDevice](reset-ovenclosuredevice.md)
* [Set-OVEnclosure](set-ovenclosure.md)
* [Set-OVEnclosureActiveFLM](set-ovenclosureactiveflm.md)
* [Set-OVEnclosureGroup](set-ovenclosuregroup.md)
* [Update-OVEnclosure](update-ovenclosure.md)
