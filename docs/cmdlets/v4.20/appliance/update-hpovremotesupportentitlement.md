---
description: Refresh Remote Support entitlement for a supported resource.
---

# Update-HPOVRemoteSupportEntitlement

## Syntax

```text
Update-HPOVRemoteSupportEntitlement
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will initiate a refresh of the Remote Support entitlement for a compute or enclosure resource.  If remote support has not been globally enabled and configured on the appliance, this Cmdlet will fail.

## Examples

###  Example 1 

```text
Get-HPOVServer -Name Prod* | Update-HPOVRemoteSupportEntitlement

```

Get the servers with their name matching "Prod" and refresh their Remote Support entitlement.

###  Example 2 

```text
$Enclosure = Get-HPOVEnclousre -Name Enclosure-1A
Update-HPOVRemoteSupportEntitlement -InputObject $Enclusre

```

Get the specific enclosure reousrce and refresh Remote Support entitlement.

## Parameters

### -InputObject &lt;Object&gt;

The compute or enclosure resource to enable Remote Support for.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for monitoring.

## Related Links

* [Get-HPOVRemoteSupportEntitlementStatus](get-hpovremotesupportentitlementstatus.md)
