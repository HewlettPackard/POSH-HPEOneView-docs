---
description: Disable specific appliance-level component debug logging.
---

# Disable-HPOVDebug

## Syntax

```text
Disable-HPOVDebug
    [-Scope] <String>
    [-LoggerName] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

FOR HP SUPPORT USE ONLY.  This Cmdlet will disable appliance level component debug logging for during issue triage, by setting the Level to INFO.  Do not use this Cmdlet unless otherwise instructed by HP Support.

## Examples

## Parameters

### -Scope &lt;String&gt;

The Scope of the LoggerName.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LoggerName &lt;String&gt;

The internal component name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.Connection**_

HPE OneView Appliance Connection object.

## Return Values

_**System.Management.Automation.PSCustomObject**_



## Related Links

* [Enable-HPOVDebug](enable-hpovdebug.md)
