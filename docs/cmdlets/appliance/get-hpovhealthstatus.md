---
description: Display appliance health.
---

# Get-HPOVHealthStatus

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVHealthStatus [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Display the HPE OneView appliance health status. This includes CPU, Memory and Disk Space.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.HealthStatus \[System.Management.Automation.PSCustomObject\]**_

Appliance health report in table format.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVHealthStatus
```

Get the HPE OneView appliance health. 

### Related Links

* None

##  HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVHealthStatus [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Display the HPE OneView appliance health status. This includes CPU, Memory and Disk Space.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.HealthStatus \[System.Management.Automation.PSCustomObject\]**_

Appliance health report in table format.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVHealthStatus
```

Get the HPE OneView appliance health. 

### Related Links

* None

##  HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVHealthStatus [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Display the HPE OneView appliance health status. This includes CPU, Memory and Disk Space.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.HealthStatus \[System.Management.Automation.PSCustomObject\]**_

Appliance health report in table format.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVHealthStatus
```

Get the HPE OneView appliance health. 

### Related Links

* None

 

