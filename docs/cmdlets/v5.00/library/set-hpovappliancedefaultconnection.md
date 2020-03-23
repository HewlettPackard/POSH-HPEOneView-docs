---
description: Set the Default Appliance Connection.
---

# Set-HPOVApplianceDefaultConnection

## Syntax

```text
Set-HPOVApplianceDefaultConnection
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

When establishing multiple Appliance Connections, this Cmdlet will help set one of the appliance connections stored in the ${Global:ConnectedSessions} variable to the default connection. All Cmdlets that require a specific Appliance Connection will use the default.

## Examples

### Example 1

```text
$ConnectedSessions
ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           True
2            Appliance2.domain.local administrator LOCAL           False

Set-HPOVApplianceDefaultConnection "Appliance2"

ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           False
2            Appliance2.domain.local administrator LOCAL           True
```

Display the current appliance connections, then set the new default to "Appliance2" using the parital name value.

### Example 2

```text
$ConnectedSessions
ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           True
2            Appliance2.domain.local administrator LOCAL           False

$ConnectedSessions[1] | Set-HPOVApplianceDefaultConnection

ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           False
2            Appliance2.domain.local administrator LOCAL           True
```

Display the current appliance connections, then set the new default to "Appliance2" using the pipline by passing the `[HPOneView.Appliance.Connection]` object.

## Parameters

### -ApplianceConnection &lt;Object&gt;

\[Aliases `-Connection`\]

Either the `[HPOneView.Appliance.Connection]` object, full or partial value of the connection objects Name property.

| Aliases | Appliance, Connection |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.Connection**_

The Appliance Connection object either provided from the [`Connect-HPOVMgmt`](connect-hpovmgmt.md) output or ${Global:ConnectedSessions} variable

## Return Values

_**System.Collections.ArrayList**_ 

Updated collection of \[HPOneView.Appliance.Connection\] Objects

## Related Links

* [Connect-HPOVMgmt](connect-hpovmgmt.md)
* [Disconnect-HPOVMgmt](disconnect-hpovmgmt.md)
* [about\_Appliance\_Connection\_Permissions](https://github.com/HewlettPackard/POSH-HPOneView-docs/tree/2c3cd0d508b6cdba6336a27d496637fc71c6ce4c/docs/cmdlets/about_Appliance_Connection_Permissions/README.md)
* [\[${Global:ConnectedSessions}\]](https://github.com/HewlettPackard/POSH-HPOneView-docs/tree/2c3cd0d508b6cdba6336a27d496637fc71c6ce4c/docs/cmdlets/about/about_appliance_connections.md)

