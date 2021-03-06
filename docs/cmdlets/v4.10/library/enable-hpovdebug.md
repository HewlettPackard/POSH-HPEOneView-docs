﻿---
description: Enable specific appliance-level component debug logging.
---

# Enable-HPOVDebug

## Syntax

```text
Enable-HPOVDebug
    [-Scope] <String>
    [-LoggerName] <String>
    [-Level] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

FOR HP SUPPORT USE ONLY.  This cmdlet will enable appliance level component debug logging for during issue triage.  Do not use this cmdlet unless otherwise instructed by HP Support.

## Examples

###  Example 1 

```text
This Cmdlets does not have a public example.
```

This Cmdlet does not have a public example.

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

### -Level &lt;String&gt;

The verbose level to enable.  Allowed values are:

	* ERROR
	* WARN
	* DEBUG
	* TRACE

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

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

_**HPOneView.Appliance.Connection**_

HPE OneView Appliance Connection object.


## Return Values

_**System.Management.Automation.PSCustomObject**_

The returned object global setting.

## Related Links

* [Disable-HPOVDebug](disable-hpovdebug.md)
