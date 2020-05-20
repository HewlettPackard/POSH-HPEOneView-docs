---
description: Update Appliance Date/Time Configuration.
---

# Set-HPOVApplianceDateTime

## Syntax

```text
Set-HPOVApplianceDateTime
    [-SyncWithHost] <>
    [-Locale <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

```text
Set-HPOVApplianceDateTime
    [-NTPServers] <>
    [-PollingInterval <>]
    [-Locale <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

## Description

Update the appliance Date and Time configuration, including Locale, NTP Servers, and NTP Polling.

Using the -SyncWithHost parameter will set the NTPServers property to null, and is only applicable to a virtual machine applinace.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator
{% endhint %}

## Examples

###  Example 1 

```text
Set-HPOVApplianceDateTime -NTPServers 10.55.1.1, 10.54.1.1 -PollingInterval 60
```

This example passes in updated values to set for the appliance networking configuration.

###  Example 2 

```text
Set-HPOVApplianceDateTime -SyncWithHost
```

This example passes in updated values to set for the appliance networking configuration.

## Parameters

### -SyncWithHost &lt;&gt;

Specify to configure the embedded hypervisor integration agent to sync time with the hypervisor host.  Only used with a virtual machine appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NTPServers &lt;&gt;

An array of IPv4 Addresses or Fully Qualified Domain Names.  You must ensure DNS is configured on the appliance correctly..

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PollingInterval &lt;&gt;

The polling interval in seconds the NTP client will use to verify time drift.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Locale &lt;&gt;

Specify the language local for the appliance

    * en_US - US English
    * zh_CN - Simplified Chinese
    * ja_JP - Japanese

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asynchronous task resource to monitor

## Related Links

* [Get-HPOVApplianceDateTime](get-hpovappliancedatetime.md)
