---
description: List alerts logged.
---

# Get-HPOVAlert

## Syntax

```text
Get-HPOVAlert
    [-InputObject <Object>]
    [-Severity <String>]
    [-HealthCategory <String>]
    [-AssignedToUser <String>]
    [-AlertState <String>]
    [-Count <String>]
    [-TimeSpan <Timespan>]
    [-Start <DateTime>]
    [-End <DateTime>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Obtain all the alerts for the specified resource and/or with the specified severity.

## Examples

###  Example 1 

```text
$alerts = Get-HPOVAlert -severity CRITICAL

```

Return all the critical alerts.

###  Example 2 

```text
Get-HPOVServer "Encl1, Bay 2" | Get-HPOVAlert -severity CRITICAL

```

Return all the critical alerts for server "Encl1, Bay 2".

###  Example 3 

```text
Get-HPOVServerProfile "Profile 1" | Get-HPOVAlert

```

Return all the alerts for server profile "Profile 1".

###  Example 4 

```text
Get-HPOVInterconnect "Encl1, interconnect 2" | Get-HPOVAlert

```

Get all alerts for "Encl1, interconnect 2" interconnect module.

###  Example 5 

```text
Get-HPOVInterconnect "Encl1, interconnect 2" | Get-HPOVAlert -severity Critical

```

Get "critical" severity alerts for "Encl1, interconnect 2" interconnect module.

###  Example 6 

```text
Get-HPOVAlert -severity Critical -Count 5

```

Return the first 5 "critical" severity alerts.

###  Example 7 

```text
Get-HPOVAlert -severity Critical -Timespan (New-TimeSpan -Days 8)

```

Return "critical" severity alerts for the past 8 days.

###  Example 8 

```text
Get-HPOVAlert -severity Critical -Start "2016-12-01"

```

Return "critical" severity alerts Starting at `2016-12`-01 to now.

###  Example 9 

```text
Get-HPOVAlert -Start "2016-12-01" -End "2016-12-09

```

Return all alerts Starting at `2016-12`-01 to `2016-12`-09.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-resourceUri]
Alerts for the specified resource will be returned.

| Aliases | resourceUri, Resource |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Severity &lt;String&gt;

Alerts with given severity will be returned.  Allowed severity values are:

    * Unknown
    * Ok
    * Disabled
    * Warning
    * Critical

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HealthCategory &lt;String&gt;

Alerts with given health category will be returned.  Allowed health category values are: 

    * Appliance
    * DeviceBay
    * Enclosure
    * Fan
    * Firmware
    * Host
    * Instance
    * InterconnectBay
    * LogicalSwitch
    * Logs
    * ManagementProcessor
    * Memory
    * Network
    * Operational
    * Power
    * Processor
    * RemoteSupport
    * Storage
    * Thermal
    * Unknown

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AssignedToUser &lt;String&gt;

Alerts assigned to the given user will be returned.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AlertState &lt;String&gt;

Alerts with given alert state will be returned.  State values include Active and Cleared

| Aliases | State |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Count &lt;String&gt;

Return only the number of alerts from the appliance.  Can be combined with other parameters to return a pruned list of alerts.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Timespan &lt;Timespan&gt;

Return the number of alerts created from today to the defined number of days.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Start &lt;DateTime&gt;

Return alerts that were created starting from the specified date.  Hour, Min and Seconds will not be used, only Month, Day and Year of the DateTime value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -End &lt;DateTime&gt;

Return alerts that were created on the specified date.  Hour, Min and Seconds will not be used, only Month, Day and Year of the DateTime value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.String**_

Resource URI.


_**System.Management.Automation.PSCustomObject**_

Resource object (i.e. [`Get-HPOVServer`](../servers/get-hpovserver.md)).


## Return Values

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

Singel HPE OneView Alert.


_**System.Collections.ArrayList**_

Collection of HPE OneView Alerts.


## Related Links

* [Clear-HPOVAlert](clear-hpovalert.md)
* [Remove-HPOVAlert](remove-hpovalert.md)
* [Set-HPOVAlert](set-hpovalert.md)
