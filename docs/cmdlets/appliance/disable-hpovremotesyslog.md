---
description: Disable remote syslog.
---

# Disable-HPOVRemoteSyslog

## HPE OneView 5.00 Library

### Syntax

```text
Disable-HPOVRemoteSyslog [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView. This Cmdlet handles disabling the remote syslog configuration. Only a single destination can be set. When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, Server administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | false |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

If successful, returns Appliance Async Task object to monitor.

_**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

Collection of Appliance Async Task objects to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Disable-HPOVRemoteSyslog
```

Disable remote syslog configuration on all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Disable-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com -Async | Wait-HPOVTaskComplete
```

Disable remote syslog configuration on the specific connected appliance. 

### Related Links 

* [Enable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSyslog) 
* [Get-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSyslog) 
* [Set-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSyslog)

## HPE OneView 4.20 Library

### Syntax

```text
Disable-HPOVRemoteSyslog [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView. This Cmdlet handles disabling the remote syslog configuration. Only a single destination can be set. When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, Server administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | false |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

If successful, returns Appliance Async Task object to monitor.

_**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

Collection of Appliance Async Task objects to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Disable-HPOVRemoteSyslog
```

Disable remote syslog configuration on all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Disable-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com -Async | Wait-HPOVTaskComplete
```

Disable remote syslog configuration on the specific connected appliance. 

### Related Links 

* [Enable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSyslog) 
* [Get-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSyslog) 
* [Set-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSyslog)

## HPE OneView 4.10 Library

### Syntax

```text
Disable-HPOVRemoteSyslog [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView. This Cmdlet handles disabling the remote syslog configuration. Only a single destination can be set. When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, Server administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | false |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

If successful, returns Appliance Async Task object to monitor.

_**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

Collection of Appliance Async Task objects to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Disable-HPOVRemoteSyslog
```

Disable remote syslog configuration on all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Disable-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com -Async | Wait-HPOVTaskComplete
```

Disable remote syslog configuration on the specific connected appliance. 

### Related Links 

* [Enable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSyslog) 
* [Get-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSyslog) 
* [Set-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSyslog)

## HPE OneView 5.00 Library

### Syntax

```text
Disable-HPOVRemoteSyslog [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView. This Cmdlet handles disabling the remote syslog configuration. Only a single destination can be set. When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, Server administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | false |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

If successful, returns Appliance Async Task object to monitor.

_**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

Collection of Appliance Async Task objects to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Disable-HPOVRemoteSyslog
```

Disable remote syslog configuration on all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Disable-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com -Async | Wait-HPOVTaskComplete
```

Disable remote syslog configuration on the specific connected appliance. 

### Related Links 

* [Enable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSyslog) 
* [Get-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSyslog) 
* [Set-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSyslog)



