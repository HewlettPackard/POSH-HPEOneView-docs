---
description: Change the initial password of the Administrator user account.
---

# Set-OVInitialPassword

## Syntax

```powershell
Set-OVInitialPassword
    [-OldPassword] <String>
    [-NewPassword] <String>
    [-Appliance] <Object>
    [<CommonParameters>]
```

## Description

Changes the initial default password of the Administrator local appliance account to the supplied new password during first time setup (FTS.)

## Examples

###  Example 1 

```powershell
Set-OVInitialPassword -Appliance MyAppliance.domain.com
```

Change the Administrator password, and prompted for both the original and new password.

## Parameters

### -OldPassword &lt;String&gt;

Current default password for this account.  Will prompt for password if not supplied.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NewPassword &lt;String&gt;

New password for this account.  Will prompt for password if not supplied.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Appliance &lt;Object&gt;

Specify Appliance FQDN, Name or IP Address.  If no valid Appliance Connection is found, a temporary connection is created for the specified appliance.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "None."
    
    None
    

## Related Links

