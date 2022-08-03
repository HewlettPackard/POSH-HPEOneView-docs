---
description: Rename Synergy Frame Name or Rack Name.
---

# Set-OVEnclosure

## Syntax

```powershell
Set-OVEnclosure
    [-InputObject] <Object>
    [-Name <String>]
    [-RackName <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to set a Synergy Frame/Enclosure Name and/or the Synergy Rack Name to provided values.  Each requires a seperate async task to complete.

## Examples

###  Example 1 

```powershell
Get-OVEnclosure -Name "0000A66101" -ErrorAction Stop | Set-OVEnclosure -Name "MyEnclName1" | Wait-OVTaskComplete
```

Set the provided Synergy Frame resource Name to a new value.

###  Example 2 

```powershell
Get-OVEnclosure -Name "0000A66101" -ErrorAction Stop | Set-OVEnclosure -Name "MyEnclName1" -RackName "DC11-Rack4A" | Wait-OVTaskComplete
```

Set the provided Synergy Frame resource Name and RackName to a new value.

## Parameters

### -InputObject &lt;Object&gt;

A Syngery Frame/Enclosure Object.

| Aliases | Enclosure, Encl |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

The new name of a Synergy Frame.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RackName &lt;String&gt;

The new name of ta Synergy Rack.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

Single Syngery Enclosure resource

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Single async task resource for resource name update

_**System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>**_

Collection of async tasks

## Related Links

* [Add-OVEnclosure](add-ovenclosure.md)
* [Get-OVEnclosure](get-ovenclosure.md)
* [Get-OVEnclosureGroup](get-ovenclosuregroup.md)
* [New-OVEnclosureGroup](new-ovenclosuregroup.md)
* [Remove-OVEnclosure](remove-ovenclosure.md)
* [Remove-OVEnclosureGroup](remove-ovenclosuregroup.md)
* [Reset-OVEnclosureDevice](reset-ovenclosuredevice.md)
* [Set-OVEnclosureActiveFLM](set-ovenclosureactiveflm.md)
* [Set-OVEnclosureGroup](set-ovenclosuregroup.md)
* [Update-OVEnclosure](update-ovenclosure.md)
