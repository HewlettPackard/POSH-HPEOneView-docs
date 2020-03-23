---
description: Rename Synergy Frame Name or Rack Name.
---

# Set-HPOVEnclosure

## Syntax

```text
Set-HPOVEnclosure
    [-InputObject] <Object>
    [-Name <String>]
    [-RackName <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to set a Synergy Frame/Enclosure Name and/or the Synergy Rack Name to provided values. Each requires a seperate async task to complete.

## Examples

### Example 1

```text
Get-HPOVEnclosure -Name "0000A66101" -ErrorAction Stop | Set-HPOVEnclosure -Name "MyEnclName1" | Wait-HPOVTaskComplete
```

Set the provided Synergy Frame resource Name to a new value.

### Example 2

```text
Get-HPOVEnclosure -Name "0000A66101" -ErrorAction Stop | Set-HPOVEnclosure -Name "MyEnclName1" -RackName "DC11-Rack4A" | Wait-HPOVTaskComplete
```

Set the provided Synergy Frame resource Name and RackName to a new value.

## Parameters

### -InputObject &lt;Object&gt;

Aliases \[-Encl, `-Enclosure`\]

A Syngery Frame/Enclosure Object.

| Aliases | Enclosure, Encl |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
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

Aliases \[-Appliance\]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Enclosure \[System.Management.Automation.PSCustomObject\]**_

Single Syngery Enclosure resource

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Single async task resource for resource name update

_**System.Collections.ArrayList**_ 

Collection of async tasks

## Related Links

* [Add-HPOVEnclosure](add-hpovenclosure.md)
* [Get-HPOVEnclosure](get-hpovenclosure.md)
* [Get-HPOVEnclosureGroup](get-hpovenclosuregroup.md)
* [New-HPOVEnclosureGroup](new-hpovenclosuregroup.md)
* [Remove-HPOVEnclosure](remove-hpovenclosure.md)
* [Remove-HPOVEnclosureGroup](remove-hpovenclosuregroup.md)
* [Reset-HPOVEnclosureDevice](reset-hpovenclosuredevice.md)
* [Set-HPOVEnclosureActiveFLM](set-hpovenclosureactiveflm.md)
* [Set-HPOVEnclosureGroup](set-hpovenclosuregroup.md)
* [Update-HPOVEnclosure](update-hpovenclosure.md)

