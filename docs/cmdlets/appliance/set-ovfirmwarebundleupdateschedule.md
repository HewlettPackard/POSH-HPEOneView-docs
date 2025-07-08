---
description: Change the appliance update configuration and schedule state.
---

# Set-OVFirmwareBundleUpdateSchedule

## Syntax

```powershell
Set-OVFirmwareBundleUpdateSchedule
    [-WeeklyInterval]
    [-Weeks] <int>
    [-Day] <String>
    [-Time] <timespan>
    [-ActivationKey <String>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVFirmwareBundleUpdateSchedule
    [-Disabled]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVFirmwareBundleUpdateSchedule
    [-ManualInterval]
    [-ActivationKey <String>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can enable HPE OneView to automatically check for new service pack updates and notify you when they are available. A connected notification alert is generated when a scheduled or manual check for updates is run and a new service pack update is available from the HPE software depot.

This Cmdlet will help you enable or disable the appliance update condition.  If enabling, ensure that the appliance has the necessary networking policies to allow it to connect to the HPE Software depot.  For pre-requisites, please visit the online help discussion topic "Prerequisites for HPE Software depot connectivity".

To specify an automatic update schedule, you will need to provide the weekly frequency (1-52), day of the week and time of day (will be converted to UTC time).

The HPE support center user token uniquely identifies your HPESC user profile. The token is required to enable inventory-based firmware downloads and used to verify access to the software and firmware components. You must generate a token on the HPE Support Center Portal (https://support.hpe.com/hpesc/swd/entitlement-token-service/generate) and then use the `-ActivationKey` parameter to complete the configuration on the appliance.

???+ info
    Minimum required privileges: Infrastructure administrator, Server administrator, and Network administrator

## Examples

###  Example 1 

```powershell
Set-OVFirmwareBundleUpdateSchedule -WeeklyInterval -Weeks 1 -Day Monday -Time (New-TimeSpan -Hours 15 -Minutes 45)
```

Enable appliance automatic update checks every week, on Monday at 3:45pm local time.

###  Example 2 

```powershell
Set-OVFirmwareBundleUpdateSchedule -ManualInterval

Get-OVApplianceUpdate -GetLatestUpdates
```

Enable appliance update manual checks, then immediately check for updates.

###  Example 3 

```powershell
Set-OVFirmwareBundleUpdateSchedule -Disabled
```

Disable appliance update checks.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Day &lt;String&gt;

Specify the day of the week the scheduled task will be performed.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Disabled &lt;SwitchParameter&gt;

Disable the ability for the appliance to connect to the external service for available updates.  Check for updates cannot be manually invoked when the feature is disabled.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManualInterval &lt;SwitchParameter&gt;

Switch parameter to indicate update checking will be performed manually.  Use the Get-OVAvailableUpdate `-GetLatestUpdates` Cmdlet to check for current updates.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Time &lt;timespan&gt;

A timespan object that represents the HOUR and MINUTES of the day.  Time will be converted to UTC.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WeeklyInterval &lt;SwitchParameter&gt;

Use to enable and specify automatic update checking for the appliance based on the schedule defined.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Weeks &lt;int&gt;

The interval of number of weeks the update check will be performed.  Allowed values are 1 through 52.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ActivationKey &lt;String&gt;

A token is required to enable inventory-based firmware downloads and used to verify access to the software and firmware components.  After generating the token on the HPE Support Center Portal (https://support.hpe.com/hpesc/swd/entitlement-token-service/generate), use this parameter to specify the activation key.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

* [Get-OVApplianceUpdate](get-ovapplianceupdate.md)
* [Get-OVApplianceUpdateSchedule](get-ovapplianceupdateschedule.md)
