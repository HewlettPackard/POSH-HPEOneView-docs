---
description: Delete Server Profile Template Resource(s).
---

# Remove-HPOVServerProfileTemplate

## Syntax

```text
Remove-HPOVServerProfileTemplate
    [-ServerProfileTemplate] <Object>
    [-ApplianceConnection] <Object>
    [-force]
    [<CommonParameters>]
```

## Description

Delete one or multiple Server Profile Template resource\(s\). A Server Profile Template cannot be removed if there are linked Server Profiles.

## Examples

### Example 1

```text
$task = Remove-HPOVServerProfileTemplate -ServerProfileTemplate "My Template Profile"
Wait-HPOVTaskComplete $task.uri
```

Remove the profile template specifed by name. Wait for remove to complete.

### Example 2

```text
$spt = Get-HPOVServerProfileTemplate -name "My Template Profile"
Remove-HPOVServerProfileTemplate $spt -confirm:$false
```

Remove the profile template specifed by $spt. Disable confirmation prompt.

### Example 3

```text
Get-HPOVServerProfileTemplate | Remove-HPOVServerProfileTemplate
```

Search for all profile template resources and remove them from appliance.

## Parameters

### -ServerProfileTemplate &lt;Object&gt;

The server profile template object\(s\) or name\(s\) to be removed.

| Aliases | spt, name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### -force &lt;SwitchParameter&gt;

Set to `force-delete` the profile. For example, `force-remove` will successfully remove the profile, even when connectivity has been lost to the server or enclosure.

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

_**HPOneView.ServerProfileTemplate \[System.Management.Automation.PSCustomObject\]**_

Server Profile Template resource object.

_**System.String**_

Server Profile Template resource name.

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

A task resource that can be monitored for status of the profile deletion

_**System.Collections.ArrayList**_ 

Multiple Async task resources.

## Related Links

* [Convert-HPOVServerProfileTemplate](convert-hpovserverprofiletemplate.md)
* [ConvertTo-HPOVServerProfileTemplate](convertto-hpovserverprofiletemplate.md)
* [Get-HPOVServerProfileTemplate](get-hpovserverprofiletemplate.md)
* [New-HPOVServerProfileTemplate](new-hpovserverprofiletemplate.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)

