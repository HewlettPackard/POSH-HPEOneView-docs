---
description: Retrieve EULA status.
---

# Get-HPOVEulaStatus

## Syntax

```text
Get-HPOVEulaStatus
    [-Appliance] <Object>
    [<CommonParameters>]
```

## Description

Determine if the EULA for the specified appliance needs to be accepted.  This is typically called during First Time Setup of the appliance.

This Cmdlet supports an unauthenticated request.  If attempting to get the EULA status of an appliance not yet configured, provide the IP Address or FQDN of the appliance.  A temporary ApplianceConnection will be created then removed in the ${Global:ConnectedSessions} tracker.

## Examples

###  Example 1 

```text
Get-HPOVEulaStatus -Appliance myappliance.domain.com

Appliance              Accepted
---------              --------
myappliance.domain.com    False
```

Get the EULA status from `[myappliance.domain.com]`

###  Example 2 

```text
$Connection = Connect-HPOVMgmt -Appliance myappliance.domain.com -Username Administrator -Password MyPassw0rd
Get-HPOVEulaStatus -Appliance $Connection

Appliance              Accepted
---------              --------
myappliance.domain.com    False
```

COnnecto to an appliance, then get the EULA status from `[myappliance.domain.com]`

## Parameters

### -Appliance &lt;Object&gt;

The FQDN, IP Address or `[HPOneView.Appliance.Connection]` of an HPE OneView appliance must be provided.

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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.EulaStatus**_

Object that returns the Appliance Name and if the EULA has been accepted with a boolean "Accepted" property.

## Related Links

* [Set-HPOVEulaStatus](set-hpoveulastatus.md)
