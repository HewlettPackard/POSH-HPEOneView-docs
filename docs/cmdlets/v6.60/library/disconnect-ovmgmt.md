---
description: Logoff from the appliance.
---

# Disconnect-OVMgmt

## Syntax

```powershell
Disconnect-OVMgmt
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will logoff the current user, which terminates the user session, on the specified HPE OneView appliance.  When logging off of an appliance, and multiple connections have been established, the next appliance connection within ${Global:ApplianceConnections} is made the default connection.  To change the default connection to a different appliance, use Set-OVApplianceDefaultConnection.

## Examples

###  Example 1 

```powershell
$Connection1 = Connect-OVMgmt MyAppliance.domain.com
Disconnect-OVMgmt -Hostname $Connection1
```

Disconnect from the specific appliance session.

###  Example 2 

```powershell
Disconnect-OVMgmt -Hostname 1
```

Disconnect ConnectionID 1 appliance session.

###  Example 3 

```powershell
$ConnectedSessions | Disconnect-OVMgmt
```

Disconnect all appliance sessions.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance, ApplianceSession, Hostname |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | $ConnectedSessions &vert; Where-Object Default |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**None.**_



## Related Links

* [Connect-OVMgmt](connect-ovmgmt.md)
