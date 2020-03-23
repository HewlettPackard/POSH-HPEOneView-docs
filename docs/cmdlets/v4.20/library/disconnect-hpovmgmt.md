---
description: Disconnect from the appliance.
---

# Disconnect-HPOVMgmt

## Syntax

```text
Disconnect-HPOVMgmt
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This cmdlet disconnects the specified or all HPE OneView appliance session(s).

## Examples

###  Example 1 

```text
$Connection1 = Connect-HPOVMgmt MyAppliance.domain.com
Disconnect-HPOVMgmt -Hostname $Connection1
```

Disconnect from the specific appliance session.

###  Example 2 

```text
Disconnect-HPOVMgmt -Hostname 1

```

Disconnect ConnectionID 1 appliance session.

###  Example 3 

```text
$ConnectedSessions | Disconnect-HPOVMgmt

```

Disconnect all appliance sessions.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance, ApplianceSession, Hostname |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `$ConnectedSessions | Where-Object Default` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**None.**_



## Related Links

* [Connect-HPOVMgmt](connect-hpovmgmt.md)
