---
description: (Reserved for future use) Retrieve appliance global settings.
---

# Get-HPOVApplianceGlobalSetting

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVApplianceGlobalSetting [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

{% hint style="info" %}
Reserved for future use
{% endhint %}

Retrieves the list of global settings or a specific global setting by name.

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Name of the global setting to be retrieved.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**System.Collections.ArrayList**_

Name, value, description, and uri for the global setting\(s\)

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceGlobalSetting
```

Return appliance Global Settings and their values. 

### Related Links 

* [Set-HPOVApplianceGlobalSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceGlobalSetting) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVApplianceGlobalSetting [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

{% hint style="info" %}
Reserved for future use
{% endhint %}

Retrieves the list of global settings or a specific global setting by name.

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Name of the global setting to be retrieved.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**System.Collections.ArrayList**_

Name, value, description, and uri for the global setting\(s\)

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceGlobalSetting
```

Return appliance Global Settings and their values. 

### Related Links 

* [Set-HPOVApplianceGlobalSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceGlobalSetting) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVApplianceGlobalSetting [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

{% hint style="info" %}
Reserved for future use
{% endhint %}

Retrieves the list of global settings or a specific global setting by name.

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Name of the global setting to be retrieved.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**System.Collections.ArrayList**_

Name, value, description, and uri for the global setting\(s\)

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceGlobalSetting
```

Return appliance Global Settings and their values. 

### Related Links 

* [Set-HPOVApplianceGlobalSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceGlobalSetting) 



