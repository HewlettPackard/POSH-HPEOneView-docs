---
description: Set the Default Appliance Connection.
---

# Set-OVApplianceDefaultConnection

## Syntax

```powershell
Set-OVApplianceDefaultConnection
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

When establishing multiple Appliance Connections, this Cmdlet will help set one of the appliance connections stored in the ${Global:ConnectedSessions} variable to the default connection.  All Cmdlets that require a specific Appliance Connection will use the default.

## Examples

###  Example 1 

```powershell
$ConnectedSessions
ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           True
2            Appliance2.domain.local administrator LOCAL           False

Set-OVApplianceDefaultConnection "Appliance2"

ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           False
2            Appliance2.domain.local administrator LOCAL           True
```

Display the current appliance connections, then set the new default to "Appliance2" using the parital name value.

###  Example 2 

```powershell
$ConnectedSessions
ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           True
2            Appliance2.domain.local administrator LOCAL           False

$ConnectedSessions[1] | Set-OVApplianceDefaultConnection

ConnectionID Name                    UserName      AuthLoginDomain Default Connection
------------ ----                    --------      --------------- ------------------
1            Appliance1.domain.local administrator LOCAL           False
2            Appliance2.domain.local administrator LOCAL           True
```

Display the current appliance connections, then set the new default to "Appliance2" using the pipline by passing the `[HPEOneView.Appliance.Connection]` object.

## Parameters

### -ApplianceConnection &lt;Object&gt;

[Aliases `-Connection`]

Either the `[HPEOneView.Appliance.Connection]` object, full or partial value of the connection objects Name property.

| Aliases | Appliance, Connection |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Appliance.Connection**_

The Appliance Connection object either provided from the Connect-OVMgmt output or ${Global:ConnectedSessions} variable

## Return Values

_**System.Collections.ArrayList <HPEOneView.Appliance.Connection>**_

Updated collection of [HPEOneView.Appliance.Connection] Objects

## Related Links

* [Connect-OVMgmt](connect-ovmgmt.md)
* [Disconnect-OVMgmt](disconnect-ovmgmt.md)
* [about_Appliance_Connection_Permissions](https://hpe-docs.gitbook.io/posh-hpeoneview/about/about_appliance_connection_permissions)
* [[${Global:ConnectedSessions}]](https://hpe-docs.gitbook.io/posh-hpeoneview/about/about_appliance_connections)
