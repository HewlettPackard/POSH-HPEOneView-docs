---
description: Get an alert.
---

# Get-OVAlert

## Syntax

```powershell
Get-OVAlert
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

The appliance uses alert messages to report issues with the resources it manages and monitors. The resources generate alerts to notify you that some meaningful event occurred and that an action might be required.

An event describes a single problem or change that occurred on a resource. For example, an event might be an SNMP trap received from a server's (iLO) management processor.

Each alert includes the following information about the event it reports: severity, state, description, and urgency. You can clear alerts, assign owners to alerts, and add notes to alerts.

While alerts have an active or locked state, they contribute to the overall displayed status for a resource. After you change their state to Cleared, they no longer affect the displayed status.

You can filter the display of the activity list to help you locate and view specific activities. However, you cannot customize filters to otherwise manage the display of the activities.

This Cmdlet allows the administrator to get an alert. Alerts can be filtered by using the `-State` parameter.  If a resource object is supplied using the `-InputObject` parameter, all associated alerts will be returned.  This Cmdlet also supports additional filtering by state, assigned to user, severity, count and date range.

???+ info
    Minimum required privileges: Network administrator, Server administrator, Infrastructure administrator, Backup administrator, Read only

## Examples

###  Example 1 

```powershell
$alerts = Get-OVAlert -severity CRITICAL
```

Return all the critical alerts.

###  Example 2 

```powershell
Get-OVServer -Name "Encl1, Bay 2" | Get-OVAlert -severity CRITICAL
```

Return all the critical alerts for server "Encl1, Bay 2".

###  Example 3 

```powershell
Get-OVServerProfile -Name "Profile 1" | Get-OVAlert
```

Return all the alerts for server profile "Profile 1".

###  Example 4 

```powershell
Get-OVInterconnect -Name "Encl1, interconnect 2" | Get-OVAlert
```

Get all alerts for "Encl1, interconnect 2" interconnect module.

###  Example 5 

```powershell
Get-OVInterconnect -Name "Encl1, interconnect 2" | Get-OVAlert -severity Critical
```

Get "critical" severity alerts for "Encl1, interconnect 2" interconnect module.

###  Example 6 

```powershell
Get-OVAlert -severity Critical -Count 5
```

Return the first 5 "critical" severity alerts.

###  Example 7 

```powershell
Get-OVAlert -severity Critical -Timespan (New-TimeSpan -Days 8)
```

Return "critical" severity alerts for the past 8 days.

###  Example 8 

```powershell
Get-OVAlert -severity Critical -Start "2016-12-01"
```

Return "critical" severity alerts Starting at 2016-12-01 to now.

###  Example 9 

```powershell
Get-OVAlert -Start "2016-12-01" -End "2016-12-09
```

Return all alerts Starting at 2016-12-01 to 2016-12-09.

## Parameters

### -InputObject &lt;Object&gt;

Alerts for the specified resource will be returned.

| Aliases | resourceUri, Resource |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
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
| Default value |  |
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
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AssignedToUser &lt;String&gt;

Alerts assigned to the given user will be returned.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AlertState &lt;String&gt;

Alerts with given alert state will be returned.  State values include Active and Cleared

| Aliases | State |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Count &lt;String&gt;

Return only the number of alerts from the appliance.  Can be combined with other parameters to return a pruned list of alerts.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Timespan &lt;Timespan&gt;

Return the number of alerts created from today to the defined number of days.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Start &lt;DateTime&gt;

Return alerts that were created starting from the specified date.  Hour, Min and Seconds will not be used, only Month, Day and Year of the DateTime value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -End &lt;DateTime&gt;

Return alerts that were created on the specified date.  Hour, Min and Seconds will not be used, only Month, Day and Year of the DateTime value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "System.Management.Automation.PSCustomObject"
    Resource object (i.e. Get-OVServer).
    

## Return Values

=== "HPEOneView.Alert [System.Management.Automation.PSCustomObject]"
    HPE OneView alert.
    

## Related Links

* [Clear-OVAlert](clear-ovalert.md)
* [Remove-OVAlert](remove-ovalert.md)
* [Set-OVAlert](set-ovalert.md)
