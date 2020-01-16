---
description: >-
  Disable specific appliance-level component debug logging.  FOR HPE SUPPORT USE
  ONLY.
---

# Disable-HPOVDebug

### HPE OneView 5.00 Library

###  Syntax

```text
Disable-HPOVDebug [-Scope] <String> [-LoggerName] <String> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

{% hint style="warning" %}
FOR HPE SUPPORT USE ONLY.
{% endhint %}

This Cmdlet will disable appliance level component debug logging for during issue triage, by setting the Level to INFO. Do not use this Cmdlet unless otherwise instructed by HPE Support.

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the `ApplianceConnection` property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -LoggerName &lt;String&gt;

The internal component name.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;String&gt;

The Scope of the LoggerName.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.Connection**_

HPE OneView Appliance Connection object.

### Return Values

_**System.Management.Automation.PSCustomObject**_

### Examples

### Related Links

* [Enable-HPOVDebug](enable-hpovdebug.md)
