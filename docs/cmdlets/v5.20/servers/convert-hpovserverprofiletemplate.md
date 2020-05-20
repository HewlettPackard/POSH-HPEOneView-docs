---
description: Migrate Server Profile Template.
---

# Convert-HPOVServerProfileTemplate

## Syntax

```text
Convert-HPOVServerProfileTemplate
    [-InputObject] <>
    [-ServerHardwareType <>]
    [-EnclosureGroup <>]
    [-Async <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to change the Server Hardware Type and/or Enclosure Group set within the Server Profile Template. Changing to a different server hardware type may change the capabilities available to the server profile. Changing the enclosure group may change the connections which are available for the profile template.

    * It may also cause incompatibilities with the current configuration.
    * All defined connections will have their port assignment set to "Auto".
    * Any incompatibilities will be flagged when the server profile template is committed.
    * If the new server hardware type does not support the local storage configuration, some storage may not be configurable.
    * If the enclosure group is changed, mezzanine storage for HPE Synergy is lost and the disk drives are released.
    * Any change in the server hardware type will lead to the associated volume loss.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator.
{% endhint %}

## Examples

###  Example 1 

```text
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "SY480 Gen10 2" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -ServerHardwareType $NewServerHardwareType
```

Transform the specified server profile template object to a different server hardware type resource.

###  Example 2 

```text
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -EnclosureGroup $NewEnclosureGroup
```

Transform the specified server profile template object to a different enclosure group resource.

###  Example 3 

```text
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -EnclosureGroup $NewEnclosureGroup -ServerHardwareType $NewServerHardwareType
```

Transform the specified server profile template object to a different enclosure group and server hardware type resource.

## Parameters

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;&gt;

Override confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnclosureGroup &lt;&gt;

Specify the target `[HPOneView.EnclosureGroup]` resource object.  By changing the Enclosure Group, assigned Networks with Connections that do not exist on in the associated Logical Interconnect Group(s), the Connection may not be assigned to an available FlexNIC.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;&gt;

The `[HPOneView.ServerProfileTemplate]` object from `Get-HPOVServerProfileTemplate`.

| Aliases | ServerProfileTemplate, SPT |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ServerHardwareType &lt;&gt;

Specify the `[HPOneView.ServerHardwareType]` object to transform to.  BIOS Settings will be reset to defaults, and Connection FlexNIC assignment will be reset back to Auto.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;&gt;

default content

| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerProfileTemplate**_

The Server Profile Template resource object to transform.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async Task resource to monitor progress of the Server Profile transformation.

## Related Links

* [ConvertTo-HPOVServerProfileTemplate](convertto-hpovserverprofiletemplate.md)
* [Get-HPOVServerProfileTemplate](get-hpovserverprofiletemplate.md)
* [New-HPOVServerProfileTemplate](new-hpovserverprofiletemplate.md)
* [Remove-HPOVServerProfileTemplate](remove-hpovserverprofiletemplate.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)
