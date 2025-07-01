---
description: Delete Server Profile Template Resource(s).
---

# Remove-OVServerProfileTemplate

## Syntax

```powershell
Remove-OVServerProfileTemplate
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Force]
    [<CommonParameters>]
```

## Description

Delete one or multiple Server Profile Template resource(s).  A Server Profile Template cannot be removed if there are linked Server Profiles.

## Examples

###  Example 1 

```powershell
$spt = Get-OVServerProfileTemplate -name "My Template Profile" -ErrorAction Stop
Remove-OVServerProfileTemplate -InputObject $spt -Confirm:$false
```

Remove the profile template specifed by $spt. Disable confirmation prompt.

###  Example 2 

```powershell
Get-OVServerProfileTemplate | Remove-OVServerProfileTemplate
```

Search for all profile template resources and remove them from appliance.

## Parameters

### -InputObject &lt;Object&gt;

The server profile template object to be removed.

| Aliases | spt, name, ServerProfileTemplate |
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

### -Force &lt;SwitchParameter&gt;

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

=== "HPEOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]"
    Server Profile Template resource object.
    

=== "System.String"
    Server Profile Template resource name.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    A task resource that can be monitored for status of the profile deletion
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>"
    Multiple Async task resources.
    

## Related Links

* [Convert-OVServerProfileTemplate](convert-ovserverprofiletemplate.md)
* [ConvertTo-OVServerProfileTemplate](convertto-ovserverprofiletemplate.md)
* [Get-OVServerProfileTemplate](get-ovserverprofiletemplate.md)
* [New-OVServerProfileTemplate](new-ovserverprofiletemplate.md)
* [Save-OVServerProfileTemplate](save-ovserverprofiletemplate.md)
* [Set-OVServerProfileTemplate](set-ovserverprofiletemplate.md)
