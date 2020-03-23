---
description: Attach an existing server profile to a server profile template
---

# Join-HPOVServerProfileToTemplate

## Syntax

```text
Join-HPOVServerProfileToTemplate
    [<CommonParameters>]
```

## Description

Binds a server profile resource to the provided server profile template

## Examples

### Example 1

```text
Join-HPOVServerProfileToTemplate -template "MyTemplate" -profile "MyProfile" -appliance hpOneView.contoso.com
```

Attaches the server profile template named MyTemplate to the server profile name MyProfile on the OneView appliance `[hpOneView.contoso.com]`

### Example 2

```text
$p = Get-HPOVServerProfile "myProfile"
Get-HPOVServerProfileTemplate "myTemplate" | Join-HPOVServerProfileToTemplate -profile $p -appliance hpOneView.contoso.com
```

Attaches the server profile template named MyTemplate to the server profile name MyProfile on the OneView appliance `[hpOneView.contoso.com]`

## Parameters

### -Template &lt;Object&gt;

A server profile template name, URI, or resource object

| Aliases | t |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -ServerProfile &lt;Object&gt;

Aliases \[-Profile, `-p`\] A server profile name, URI, or resource object

| Aliases | p, Profile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases \[-Appliance\]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `$Global:ConnectedSessions` |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\]**_

A PSCustom object representing a server profile template resource retrieved from the HPE OneView appliance

## Return Values

_**System.Collections.ArrayList**_

Collection of task resource objects

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

An HPE OneView task resource object

## Related Links

