---
description: Update current user account password.
---

# Set-HPOVUserPassword

## Syntax

```text
Set-HPOVUserPassword
    [-Current] <String>
    [-New] <String>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This cmdlet provides the ability to update the current user account password.  Only HPE OneView appliance local account passwords will be changed.  This cmdlet does not assist with modifying or updating an LDAP or Active Directory user account"s password.

## Examples

###  Example 1 

```text
Set-HPOVUserPassword -Current MyCurrentPass -New NewP@ssw0rd

```

Update your HPE OneView account password to the new value on all connected appliances.

## Parameters

### -Current &lt;String&gt;

The current password of the user account. If omitted, the cmdlet will prompt for the users password as a secure string.

| Aliases | CurrentPassword |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -New &lt;String&gt;

The new password to be set for the user account. If omitted, the cmdlet will prompt for the users password as a secure string.

| Aliases | NewPassword |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

HPOneView appliance local user account.

## Related Links

