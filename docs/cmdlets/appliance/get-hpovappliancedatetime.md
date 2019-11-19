---
description: Get Appliance Date/Time Configuration.
---

# Get-HPOVApplianceDateTime

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVApplianceDateTime [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This Cmdlet displays the appliance or connected appliances Date and Time configuration. Part of this is the actual Date and Time of the appliance, Time Zone, NTP Servers, NTP polling, and Locale.

When querying a Virtual Machine Appliance and the `NTPServers`property or field is Null, the appliance will retrieve its Date and Time from the Hypervisor Host.

When querying a Synergy Composer appliance and the `NTPServers`property or field is Null, the appliance will retrieve its Date and Time from the System ROM.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.ApplianceServerDateTime \[System.Management.Automation.PSCustomObject\]**_

Date/Time object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceDateTime

Appliance        Time                 Time Zone NTP Servers           NTP Polling
---------        ----                 --------- -----------           -----------
hpov1.domain.com 2/11/2016 2:12:46 PM UTC       {10.55.1.1,10.54.1.1}
hpov2.domain.com 2/11/2016 2:12:45 PM UTC       {}

```

This example passes in updated values to set for the appliance networking configuration. 

### Related Links

* [Set-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDateTime) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVApplianceDateTime [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This Cmdlet displays the appliance or connected appliances Date and Time configuration. Part of this is the actual Date and Time of the appliance, Time Zone, NTP Servers, NTP polling, and Locale.

When querying a Virtual Machine Appliance and the `NTPServers`property or field is Null, the appliance will retrieve its Date and Time from the Hypervisor Host.

When querying a Synergy Composer appliance and the `NTPServers`property or field is Null, the appliance will retrieve its Date and Time from the System ROM.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.ApplianceServerDateTime \[System.Management.Automation.PSCustomObject\]**_

Date/Time object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceDateTime

Appliance        Time                 Time Zone NTP Servers           NTP Polling
---------        ----                 --------- -----------           -----------
hpov1.domain.com 2/11/2016 2:12:46 PM UTC       {10.55.1.1,10.54.1.1}
hpov2.domain.com 2/11/2016 2:12:45 PM UTC       {}

```

This example passes in updated values to set for the appliance networking configuration. 

### Related Links

* [Set-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDateTime) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVApplianceDateTime [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This Cmdlet displays the appliance or connected appliances Date and Time configuration. Part of this is the actual Date and Time of the appliance, Time Zone, NTP Servers, NTP polling, and Locale.

When querying a Virtual Machine Appliance and the `NTPServers`property or field is Null, the appliance will retrieve its Date and Time from the Hypervisor Host.

When querying a Synergy Composer appliance and the `NTPServers`property or field is Null, the appliance will retrieve its Date and Time from the System ROM.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.ApplianceServerDateTime \[System.Management.Automation.PSCustomObject\]**_

Date/Time object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceDateTime

Appliance        Time                 Time Zone NTP Servers           NTP Polling
---------        ----                 --------- -----------           -----------
hpov1.domain.com 2/11/2016 2:12:46 PM UTC       {10.55.1.1,10.54.1.1}
hpov2.domain.com 2/11/2016 2:12:45 PM UTC       {}

```

This example passes in updated values to set for the appliance networking configuration. 

### Related Links

* [Set-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDateTime) 

