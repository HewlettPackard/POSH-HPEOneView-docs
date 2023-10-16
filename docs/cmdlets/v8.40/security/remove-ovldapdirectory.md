---
description: Remove authentication Directory.
---

# Remove-OVLdapDirectory

## Syntax

```powershell
Remove-OVLdapDirectory
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Force]
    [<CommonParameters>]
```

## Description

Remove authentication Directory from the appliance. Can provide Directory Name or Object for removal.

## Examples

###  Example 1 

```powershell
Remove-OVLdapDirectory -Directory "My Directory1"
```

Remove "My Directroy Group1" from the appliance.

###  Example 2 

```powershell
Get-OVLdapDirectory | Remove-OVLdapDirectory
```

Get all Directories and remove them from the default connected appliance.

## Parameters

### -InputObject &lt;Object&gt;

Configured authentication Directory Name or Object.

| Aliases | d, Directory |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Foreably remove the resource from the appliance.

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

_**System.Collections.ArrayList**_

Collection of Directories

_**System.Management.Automation.PSCustomObject**_

Single Directory object

## Return Values

_**System.Management.Automation.PSCustomObject**_

Resource Removed Status

## Related Links

* [Get-OVLdapDirectory](get-ovldapdirectory.md)
* [New-OVLdapDirectory](new-ovldapdirectory.md)
