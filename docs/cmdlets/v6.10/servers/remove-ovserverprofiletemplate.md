﻿---
description: Delete Server Profile Template Resource(s).
---

# Remove-OVServerProfileTemplate

## Syntax

```powershell
Remove-OVServerProfileTemplate
    [-ServerProfileTemplate] <Object>
    [-ApplianceConnection] <Object>
    [-force]
    [<CommonParameters>]
```

## Description

Delete one or multiple Server Profile Template resource(s).  A Server Profile Template cannot be removed if there are linked Server Profiles.

## Examples

###  Example 1 

```powershell
$task = Remove-OVServerProfileTemplate -ServerProfileTemplate "My Template Profile"
Wait-OVTaskComplete $task.uri
                        
```

Remove the profile template specifed by name. Wait for remove to complete.

###  Example 2 

```powershell
$spt = Get-OVServerProfileTemplate -name "My Template Profile"
Remove-OVServerProfileTemplate $spt -confirm:$false
```

Remove the profile template specifed by $spt. Disable confirmation prompt.

###  Example 3 

```powershell
Get-OVServerProfileTemplate | Remove-OVServerProfileTemplate
```

Search for all profile template resources and remove them from appliance.

## Parameters

### -ServerProfileTemplate &lt;Object&gt;

The server profile template object(s) or name(s) to be removed.

| Aliases | spt, name |
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

### -force &lt;SwitchParameter&gt;

Set to force-delete the profile.  For example, force-remove will successfully remove the profile, even when connectivity has been lost to the server or enclosure.

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

_**HPEOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]**_

Server Profile Template resource object.

_**System.String**_

Server Profile Template resource name.

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

A task resource that can be monitored for status of the profile deletion

_**System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>**_

Multiple Async task resources.

## Related Links

* [Convert-OVServerProfileTemplate](convert-ovserverprofiletemplate.md)
* [ConvertTo-OVServerProfileTemplate](convertto-ovserverprofiletemplate.md)
* [Get-OVServerProfileTemplate](get-ovserverprofiletemplate.md)
* [New-OVServerProfileTemplate](new-ovserverprofiletemplate.md)
* [Save-OVServerProfileTemplate](save-ovserverprofiletemplate.md)
* [Set-OVServerProfileTemplate](set-ovserverprofiletemplate.md)
