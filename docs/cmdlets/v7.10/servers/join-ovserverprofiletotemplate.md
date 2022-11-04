---
description: Attach an existing server profile to a server profile template
---

# Join-OVServerProfileToTemplate

## Syntax

```powershell
Join-OVServerProfileToTemplate
    [-Template] <Object>
    [-ServerProfile] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Binds a server profile resource to the provided server profile template

## Examples

###  Example 1 

```powershell
Join-OVServerProfileToTemplate -template "MyTemplate" -profile "MyProfile" -appliance HPEOneView.contoso.com
```

Attaches the server profile template named MyTemplate to the server profile name MyProfile on the OneView appliance `[HPEOneView.contoso.com]`

###  Example 2 

```powershell
$p = Get-OVServerProfile -Name "myProfile"
Get-OVServerProfileTemplate "myTemplate" | Join-OVServerProfileToTemplate -profile $p -appliance HPEOneView.contoso.com
```

Attaches the server profile template named MyTemplate to the server profile name MyProfile on the OneView appliance `[HPEOneView.contoso.com]`

## Parameters

### -Template &lt;Object&gt;

A server profile template name, URI, or resource object

| Aliases | t |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ServerProfile &lt;Object&gt;

A server profile name, URI, or resource object

| Aliases | p, Profile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | $Global:ConnectedSessions |
| Accept pipeline input? | true (ByPropertyName) |
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

_**HPEOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

A PSCustom object representing a server profile template resource retrieved from the HPE OneView appliance

## Return Values

_**System.Collections.ArrayList<HPEOneView.Appliance.TaskResource>**_

Collection of task resource objects

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

An HPE OneView task resource object

## Related Links

