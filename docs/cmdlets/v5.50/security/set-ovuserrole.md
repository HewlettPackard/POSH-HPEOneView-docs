---
description: (Deprecated) Assign or change roles for an existing user.
---

# Set-OVUserRole

## Syntax

```powershell
Set-OVUserRole
    [-Name] <Object>
    [-Roles] <Array>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet is now deprecated. Please use the Set-OVUser Cmdlet to modify user accounts and associated roles/permissions

## Examples

###  Example 1 

```powershell
Set-OVUserRole -user Sally -roleName "Server Administrator"
```

Set the Server Administrator role for Sally"s user account.

## Parameters

### -Name &lt;Object&gt;

The name of the user account to have a role assigned.

| Aliases | user, userName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Roles &lt;Array&gt;

The role(s) to assign to the Directroy Group, in `[System.Collections.ArrayList]` format.  Accepted values are noted within the ApplianceRoles property of the `[HPEOneView.Appliance.Connection]` object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

| Aliases | roleName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

HPE OneView appliance user account

## Return Values

_**HPEOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

Updated user account with new role(s)

## Related Links

