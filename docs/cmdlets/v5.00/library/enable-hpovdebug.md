---
description: >-
  Enable specific appliance-level component debug logging.  FOR HPE SUPPORT USE
  ONLY.
---

# Enable-HPOVDebug

## HPE OneView 5.00 Library

Syntax

```text
Enable-HPOVDebug [-Scope] <String> [-LoggerName] <String> [-Level] <String> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

## Description

{% hint style="warning" %}
FOR HPE SUPPORT USE ONLY.
{% endhint %}

This Cmdlet will enable appliance level component debug logging for during issue triage. Do not use this Cmdlet unless otherwise instructed by HPE Support.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the `ApplianceConnection` property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters? | False |

### -Level &lt;String&gt;

The verbose level to enable. Allowed values are:

* ERROR
* WARN
* DEBUG
* TRACE

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LoggerName &lt;String&gt;

The internal component name.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;String&gt;

The Scope of the `LoggerName`.

{% hint style="warning" %}
This is not an appliance Scope resource used for collections.
{% endhint %}

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.Connection**_

HPE OneView Appliance Connection object.

## Return Values

_**System.Management.Automation.PSCustomObject**_

## Examples

## Related Links

* [Disable-HPOVDebug](disable-hpovdebug.md)

