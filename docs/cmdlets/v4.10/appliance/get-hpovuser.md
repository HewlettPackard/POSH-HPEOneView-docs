---
description: Retrieve user account resource(s).
---

# Get-HPOVUser

## Syntax

```text
Get-HPOVUser
    [<CommonParameters>]
```

## Description

Get a local user account on the management appliance, and display it"s properties.  The account password will not be displayed.

## Examples

###  Example 1 

```text
Get-HPOVUser

```

List all user accounts from all connected appliances.

###  Example 2 

```text
Get-HPOVUser "Sally"

```

List Sally"s user account from `[MyAppliance.domain.com]`.

## Parameters

### -Name &lt;String&gt;

The name of the new user account to display.

| Aliases | Username |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

Single User resource

_**System.Collections.ArrayList**_

Multiple User resourses, or formatted table displaying a report of user accounts

_**User Account Information**_



## Related Links

* [New-HPOVUser](../security/new-hpovuser.md)
* [Remove-HPOVUser](../security/remove-hpovuser.md)
* [Set-HPOVUser](../security/set-hpovuser.md)
* [Set-HPOVUserPassword](../security/set-hpovuserpassword.md)
* [Set-HPOVUserRole](../security/set-hpovuserrole.md)
* [Show-HPOVUserSession](show-hpovusersession.md)
