---
description: Get the appliance end user license agreement (EULA) status.
---

# Get-OVEulaStatus

## Syntax

```powershell
Get-OVEulaStatus
    [-Appliance] <Object>
    [<CommonParameters>]
```

## Description

The appliance has a EULA (End-User License agreement) that you must accept before using the appliance for the first time. 

This Cmdlet supports an unauthenticated request. If attempting to get the EULA status of an appliance not yet configured, provide the IP Address or FQDN of the appliance. A temporary ApplianceConnection will be created then removed in the ${Global:ConnectedSessions} tracker.

???+ info
    Minimum required privileges: None

## Examples

###  Example 1 

```powershell
Get-OVEulaStatus -Appliance myappliance.domain.com

Appliance              Accepted
---------              --------
myappliance.domain.com    False
```

Get the EULA status from `[myappliance.domain.com]`

###  Example 2 

```powershell
$Connection = Connect-OVMgmt -Appliance myappliance.domain.com -Username Administrator -Password MyPassw0rd
Get-OVEulaStatus -Appliance $Connection

Appliance              Accepted
---------              --------
myappliance.domain.com    False
```

Connect to an appliance, then get the EULA status from `[myappliance.domain.com]`

## Parameters

### -Appliance &lt;Object&gt;

The FQDN, IP Address or `[HPEOneView.Appliance.Connection]` of an HPE OneView appliance must be provided.

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

=== "HPEOneView.Appliance.EulaStatus"
    Object that returns the Appliance Name and if the EULA has been accepted with a boolean "Accepted" property.
    

## Related Links

* [Set-OVEulaStatus](set-oveulastatus.md)
