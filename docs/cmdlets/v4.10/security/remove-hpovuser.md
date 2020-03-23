---
description: Remove a user account.
---

# Remove-HPOVUser

## Syntax

```text
Remove-HPOVUser
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Remove a specific local user account from the management appliance

## Examples

###  Example 1 

```text
Get-HPOVUser Sally | Remove-HPOVUser

```

Retrieve "Sally" user account using `Get-HPOVUser`, then pipe it to `Remove-HPOVUser`.

## Parameters

### -InputObject &lt;Object&gt;

The user account object to be removed.

| Aliases | u, user, UserName, Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
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

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

HPE OneView User Account object created on an appliance

## Return Values

_**System.Collections.Hashtable**_

Success message if user was deleted

## Related Links

* [Get-HPOVUser](../appliance/get-hpovuser.md)
* [New-HPOVUser](new-hpovuser.md)
* [Set-HPOVUser](set-hpovuser.md)
* [Set-HPOVUserPassword](set-hpovuserpassword.md)
* [Set-HPOVUserRole](set-hpovuserrole.md)
* [Show-HPOVUserSession](../appliance/show-hpovusersession.md)
