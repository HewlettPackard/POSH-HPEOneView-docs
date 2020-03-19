---
description: 
---

# New-HPOVLogicalEnclosure

## Syntax

```text
New-HPOVLogicalEnclosure
    [-Name] <String>
    [-Enclosure] <Object>
    [-EnclosureGroup] <Object>
    [-FirmwareBaseline] <String>
    [-ForceFirmwareBaseline] <Boolean>
    [-Scope <HPOneView.Appliance.ScopeCollection>]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

A logical enclosure represents a logical view of a single enclosure with an enclosure group serving as a template. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, configuration scripts, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

Use this Cmdlet to define a new Logical Enclosure that will include multiple Synergy Frames that share the same Virtual Connect Fabric Domain.
## Examples

###  Example 1 

```text
$EG = Get-HPOVEnclosureGroup -Name "Prod Synergy EG 1"
Get-HPOVEnclosure -Name 0000A66101 | New-HPOVLogicalEnclosure "My Synergy LE 1" -EnclosureGroup $EG


```

Create a new Logical Enclosure, "My Synergy LE 1", using the specified Enclosure Group and a specific Synergy Frame.

## Parameters

### -Name &lt;String&gt;

A name for the new Logical Enclosure.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Enclosure &lt;Object&gt;

One of the connected Frames.  The Interlink Topology will be discovered to include the other Frame members.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -EnclosureGroup &lt;Object&gt;

The Enclosure Group resource to deploy the policy from.

| Aliases | eg |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FirmwareBaseline &lt;String&gt;

Provide the Firmware Baseline object to use with the Logical Enclosure is being created.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ForceFirmwareBaseline &lt;Boolean&gt;

Specify to force the installation of firmware if the same version is found or if you wish to downgrade from a newer installed version.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the `Add-HPOVResourceToScope` Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

Single Enclosure (Synergy Frame) resource object

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The async task resource

## Related Links

* [Get-HPOVLogicalEnclosure](get-hpovlogicalenclosure.md)
* [Remove-HPOVLogicalEnclosure](remove-hpovlogicalenclosure.md)
* [Set-HPOVLogicalEnclosure](set-hpovlogicalenclosure.md)
* [Update-HPOVLogicalEnclosure](update-hpovlogicalenclosure.md)
* [Update-HPOVLogicalEnclosureFirmware](../networking/update-hpovlogicalenclosurefirmware.md)
