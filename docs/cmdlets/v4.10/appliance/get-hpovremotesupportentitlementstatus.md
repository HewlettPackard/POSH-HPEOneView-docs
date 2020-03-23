---
description: Disable Remote Support for a supported resource.
---

# Get-HPOVRemoteSupportEntitlementStatus

## Syntax

```text
Get-HPOVRemoteSupportEntitlementStatus
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will return the Remote Support entitlement status for a compute or enclosure resource.  If remote support has not been globally enabled and configured on the appliance, this Cmdlet will fail.

## Examples

###  Example 1 

```text
Get-HPOVServer -Name Prod* | Get-HPOVRemoteSupportEntitlementStatus

```

Get the servers with their name matching "Prod" and get their Remote Support entitlement status.

###  Example 2 

```text
$Enclosure = Get-HPOVEnclousre -Name Enclosure-1A
Get-HPOVRemoteSupportEntitlementStatus -InputObject $Enclusre

```

Get the specific enclosure reousrce and get Remote Support entitlement status.

## Parameters

### -InputObject &lt;Object&gt;

The compute or enclosure resource to enable Remote Support for.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

A Gen8 or newer generation server hardware resource object from [`Get-HPOVServer`](../servers/get-hpovserver.md).

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

A Gen8 or newer generation server hardware resource object from [`Get-HPOVServer`](../servers/get-hpovserver.md).

## Return Values

_**HPOneView.RemoteSupport.ContractAndWarrantyStatus**_

The object with the current contract and warranty status.


## Related Links

