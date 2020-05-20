---
description: [DEPRECATED] Set the power state of a server.
---

# Set-HPOVServerPower

## Syntax

```text
Set-HPOVServerPower
    [-Server] <>
    [-State] <>
    [-powerControl] <>
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

This Cmdlet is now deprecated.  Please use the Start-HPOVServer, Stop-HPOVServer or Restart-HPOVServer Cmdlets.

## Examples

## Parameters

### -Server &lt;&gt;

The server object, URI or Name, or can be a Server Profile object.

| Aliases | name, uri, serverUri |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -State &lt;&gt;

Optional power state.  Default is On, other option is Off

| Aliases | PowerState |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | On |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PowerControl &lt;&gt;

Optional setting to control the virtual power button.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | MomentaryPress |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

The name of the appliance or list of appliances to execute the command against.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -WhatIf &lt;&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None**_

 None 

## Return Values

_**None**_

 None

## Related Links

