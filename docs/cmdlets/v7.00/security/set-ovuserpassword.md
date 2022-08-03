---
description: Update current user account password.
---

# Set-OVUserPassword

## Syntax

```powershell
Set-OVUserPassword
    [-Current] <String>
    [-New] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to update the current user account password.  Only HPE OneView appliance local account passwords will be changed.  This Cmdlet does not assist with modifying or updating an LDAP or Active Directory user account"s password.

## Examples

###  Example 1 

```powershell
Set-OVUserPassword MyCurrentPass NewP@ssw0rd
```

Update your HPE OneView account password to the new value on all connected appliances.

## Parameters

### -Current &lt;String&gt;

The current password of the user account. If omitted, the Cmdlet will prompt for the users password as a secure string.

| Aliases | CurrentPassword |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -New &lt;String&gt;

The new password to be set for the user account. If omitted, the Cmdlet will prompt for the users password as a secure string.

| Aliases | NewPassword |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

    
Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).
    
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

## Return Values

## Related Links

