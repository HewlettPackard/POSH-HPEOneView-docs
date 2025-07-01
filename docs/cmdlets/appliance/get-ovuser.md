---
description: Retrieve user account resource(s).
---

# Get-OVUser

## Syntax

```powershell
Get-OVUser
    [-Name] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Get a local user account on the management appliance, and display it"s properties.  The account password will not be displayed.

## Examples

###  Example 1 

```powershell
Get-OVUser
```

List all user accounts from all connected appliances.

###  Example 2 

```powershell
Get-OVUser "Sally"
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

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    Single User resource
    

=== "System.Collections.ArrayList"
    Multiple User resourses, or formatted table displaying a report of user accounts
    

=== "User Account Information"
    
    

## Related Links

* [New-OVUser](../security/new-ovuser.md)
* [Remove-OVUser](../security/remove-ovuser.md)
* [Set-OVUser](../security/set-ovuser.md)
* [Set-OVUserPassword](../security/set-ovuserpassword.md)
* [Set-OVUserRole](../security/set-ovuserrole.md)
* [Show-OVUserSession](show-ovusersession.md)
