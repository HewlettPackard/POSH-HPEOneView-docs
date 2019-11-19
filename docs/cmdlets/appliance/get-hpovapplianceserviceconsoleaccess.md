---
description: Get the appliance service console access configuration.
---

# Get-HPOVApplianceServiceConsoleAccess

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVApplianceServiceConsoleAccess [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

HPE OneView contains a technical feature that you can use to allow an authorized technical support to access your system, through the system console, to assess and troubleshoot problems that you have reported. This access is controlled by a password generated and provided by you to the authorized technical support. You can disable the access at any time while the system is running. Hewlett Packard Enterprise recommends that you enable service console access so that an authorized technical support can diagnose your system in the event of a system failure.

This Cmdlet will return the existing configuration state of the appliance service console.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.ServiceConsoleAccess**_

The current service console configuration status.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceServiceConsoleAccess
```

Get the service console access status. 

### Related Links 

* [Disable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceServiceConsoleAccess) 
* [Enable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceServiceConsoleAccess) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVApplianceServiceConsoleAccess [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

HPE OneView contains a technical feature that you can use to allow an authorized technical support to access your system, through the system console, to assess and troubleshoot problems that you have reported. This access is controlled by a password generated and provided by you to the authorized technical support. You can disable the access at any time while the system is running. Hewlett Packard Enterprise recommends that you enable service console access so that an authorized technical support can diagnose your system in the event of a system failure.

This Cmdlet will return the existing configuration state of the appliance service console.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.ServiceConsoleAccess**_

The current service console configuration status.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceServiceConsoleAccess
```

Get the service console access status. 

### Related Links 

* [Disable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceServiceConsoleAccess) 
* [Enable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceServiceConsoleAccess) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVApplianceServiceConsoleAccess [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

HPE OneView contains a technical feature that you can use to allow an authorized technical support to access your system, through the system console, to assess and troubleshoot problems that you have reported. This access is controlled by a password generated and provided by you to the authorized technical support. You can disable the access at any time while the system is running. Hewlett Packard Enterprise recommends that you enable service console access so that an authorized technical support can diagnose your system in the event of a system failure.

This Cmdlet will return the existing configuration state of the appliance service console.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.ServiceConsoleAccess**_

The current service console configuration status.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceServiceConsoleAccess
```

Get the service console access status. 

### Related Links 

* [Disable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceServiceConsoleAccess) 
* [Enable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceServiceConsoleAccess) 



