---
description: Update Appliance Date/Time Configuration.
---

# Set-OVApplianceDateTime

## Syntax

```powershell
Set-OVApplianceDateTime
    [-SyncWithHost]
    [-Locale <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVApplianceDateTime
    [-NTPServers] <Array>
    [-PollingInterval <Int32>]
    [-Locale <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Update the appliance Date and Time configuration, including Locale, NTP Servers, and NTP Polling.

Using the `-SyncWithHost` parameter will set the NTPServers property to null, and is only applicable to a virtual machine applinace.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Set-OVApplianceDateTime -NTPServers 10.55.1.1, 10.54.1.1 -PollingInterval 60
```

This example passes in updated values to set for the appliance networking configuration.

###  Example 2 

```powershell
Set-OVApplianceDateTime -SyncWithHost
```

This example passes in updated values to set for the appliance networking configuration.

## Parameters

### -SyncWithHost &lt;SwitchParameter&gt;

Specify to configure the embedded hypervisor integration agent to sync time with the hypervisor host.  Only used with a virtual machine appliance.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NTPServers &lt;Array&gt;

An array of IPv4 Addresses or Fully Qualified Domain Names.  You must ensure DNS is configured on the appliance correctly..

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PollingInterval &lt;Int32&gt;

The polling interval in seconds the NTP client will use to verify time drift.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Locale &lt;String&gt;

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

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task resource to monitor
    

## Related Links

* [Get-OVApplianceDateTime](get-ovappliancedatetime.md)
