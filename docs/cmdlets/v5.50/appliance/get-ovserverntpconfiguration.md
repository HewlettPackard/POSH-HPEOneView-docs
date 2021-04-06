---
description: Get the default time source policy for servers.
---

# Get-OVServerNTPConfiguration

## Syntax

```text
Get-OVServerNTPConfiguration
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

When HPE OneView manages or monitors server or compute resources, it will automatically by default set the management processor NTP settings to the appliance's IP Address.  Using this Cmdlet, you can get the current time synchronize policy of the managed and monitored server hardware on the appliance.  When the global policy is set to sync with external NTP servers, a property is added to the returned object called NTPServers.  The array contains the appliance configured NTP server(s).

{% hint style="info" %}
Minimum required privileges:

    * Read-Only
{% endhint %}

## Examples

###  Example 1 

```text
Get-OVServerNTPConfiguration

```

Get the current server time source global policy setting.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPEOneView.Appliance.GlobalSetting**_

Object resource with the global setting value

## Related Links

* [Set-OVServerNTPConfiguration](set-ovserverntpconfiguration.md)
