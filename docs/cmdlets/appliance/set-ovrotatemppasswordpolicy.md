---
description: Configure management processor password rotation policy.
---

# Set-OVRotateMPPasswordPolicy

## Syntax

```powershell
Set-OVRotateMPPasswordPolicy
    [-Frequency] <int>
    [-Time] <TimeSpan>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVRotateMPPasswordPolicy
    [-Disable]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can enable and set up a schedule for automatic rotation of passwords for HPE OneView administrator accounts on managed devices. Based on the security policy of the organization, you can set the timeframe for the password rotation from 1-365 days. This security practice of setting a timeframe for enforcing password change reduces password-based attacks.

You can schedule password rotation for the following accounts:

* HPE iLO: hpOneViewAdmin
* HPE Compute Scale-up Server 3200: HPEOneViewMonitor
* HPE Superdome Flex Servers Family: HPEOneViewMonitor

Considerations

If devices have accounts set up with LDAP or Microsoft Active Directory, the password cannot be rotated.

If a server is engaged in another task, password rotation is skipped for the server, and rotation is done in the next schedule.

Only non-HPE Synergy Servers are supported.

Use this Cmdlet to enable or disable a password rotation policy.

???+ info
    Minimum required privileges:
    
    * Infrastructure administrator

## Examples

###  Example 1 

```powershell
Set-OVRotateMPPasswordPolicy -Days 30 -Timespan (New-Timespan -Hours 01 -Minutes 00)

```

Enable or change the password rotation policy on the appliance to every 30 days at 01:00 local time of the user.

###  Example 2 

```powershell
Set-OVRotateMPPasswordPolicy -Disable

```

Disable the password rotation policy on the appliance.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
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

### -Disable &lt;SwitchParameter&gt;

Disable password rotation for HPE OneView administrator account on managed devices.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Frequency &lt;int&gt;

The number of days to perform the password rotation.  Must be between 1 and 365 days.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Time &lt;TimeSpan&gt;

The time of day to execute in a TimeSpan object.  Only hours and minutes are supported, and in 24 hour time.  This time will be set to UTC on the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Appliance.RotateMPPasswordPolicy"
    The class object containing the password rotation policy configuration.
    
    

## Related Links

* [Get-OVRotateMPPasswordPolicy](get-ovrotatemppasswordpolicy.md)
* [Get-OVRotateMPPasswordPolicyReport](get-ovrotatemppasswordpolicyreport.md)
