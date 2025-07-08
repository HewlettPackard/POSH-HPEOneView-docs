---
description: Generate management processor password report.
---

# Get-OVRotateMPPasswordPolicyReport

## Syntax

```powershell
Get-OVRotateMPPasswordPolicyReport
    [-GetAllReports]
    [<CommonParameters>]
```

```powershell
Get-OVRotateMPPasswordPolicyReport
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can enable and set up a schedule for automatic rotation of passwords for HPE OneView administrator accounts on managed server devices. Based on the security policy of the organization, you can set the timeframe for the password rotation from 1-365 days. This security practice of setting a timeframe for enforcing password change reduces password-based attacks.

You can schedule password rotation for the following accounts:

* HPE iLO: hpOneViewAdmin account
* HPE Compute Scale-up Server 3200: HPEOneViewMonitor account
* HPE Superdome Flex Servers Family: HPEOneViewMonitor account

Considerations

If devices have accounts set up with LDAP or Microsoft Active Directory, the password cannot be rotated.

If a server is engaged in another task, password rotation is skipped for the server, and rotation is done in the next schedule.

Only non-HPE Synergy Servers are supported.

Use this Cmdlet to generate a report of the last executed task.  To get all previous and current password rotation task results, use the `-GetAllReports` switch parameter.

???+ info
    Minimum required privileges:
    
    * Read-only

## Examples

###  Example 1 

```powershell
Get-OVRotateMPPasswordPolicyReport

```

Return the most current password rotation report and servers that successfully or failed to rotate the password.

## Parameters

### -GetAllReports &lt;SwitchParameter&gt;

Get all available password rotation results.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Appliance.RotateMPPasswordPolicyReport[]"
    Class object that contains the report.
    

## Related Links

* [Get-OVRotateMPPasswordPolicy](get-ovrotatemppasswordpolicy.md)
* [Set-OVRotateMPPasswordPolicy](set-ovrotatemppasswordpolicy.md)
