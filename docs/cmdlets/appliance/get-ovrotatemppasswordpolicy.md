---
description: Get the appliance management processor password policy configuration.
---

# Get-OVRotateMPPasswordPolicy

## Syntax

```powershell
Get-OVRotateMPPasswordPolicy
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

Use this Cmdlet to get the current password rotation policy configuration.

???+ info
    Minimum required privileges:
    
    * Read-only

## Examples

###  Example 1 

```powershell
Get-OVRotateMPPasswordPolicy

```

Get the password rotation policy configuration.

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Appliance.RotateMPPasswordPolicy"
    Appliance RotateMPPasswordPolicy class.  This defines the device embedded management process (e.g. iLO) privileged account password rotation policy and how it is configured on the appliance.
    
    

## Related Links

* [Get-OVRotateMPPasswordPolicyReport](get-ovrotatemppasswordpolicyreport.md)
* [Set-OVRotateMPPasswordPolicy](set-ovrotatemppasswordpolicy.md)
