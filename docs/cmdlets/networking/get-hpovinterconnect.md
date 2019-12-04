---
description: Retrieve Interconnect resource(s).
---

# Get-HPOVInterconnect

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVInterconnect [[-Name] <String>] [[-Scope] <Object>] [[-Label] <String>] [[-ApplianceConnection] <Object>] [[-Export] <String>] [<CommonParameters>]
```

### Description

Interconnects enable communication between the server hardware in the enclosure and the data center networks. Interconnects that are managed are put in a `Configured` state when the Synergy frame is configured by creating a logical enclosure. An unmanaged interconnect remains in the `Monitored` state when the Synergy frame is configured by creating a logical enclosure.

Retrieves a list of all Interconnects \(Ethernet, FC, Converged Network, and/or SAS\) or just specific ones via a query if the name parameter is provided. The output can be sent to a file using the Export parameter.

{% hint style="info" %}
Minimum required privileges: Read-only
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

#### -Export &lt;String&gt; 

The full path and file name to export the contents retrieved from the call to Get-HPOVInterconnect.

| Aliases | x, exportFile |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Label &lt;String&gt; 

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the interconnect to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Networking.Interconnect \[System.Management.Automation.PSCustomObject\]**_

Single Interconnect object.

_**HPOneView.Networking.SasInterconnect \[System.Management.Automation.PSCustomObject\]**_

Single SAS Interconnect object.

_**System.Collections.ArrayList**_

Multiple Interconnect objects.

_**An Interconnect or collection of Interconnects**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVInterconnect
```

Returns all Interconnects managed by all connected appliances to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVInterconnect -Name "Encl1, Interconnect 1"
```

Returns just the Encl1, Interconnect 1 Interconnect object to standard output.

```text
 -------------------------- EXAMPLE 3 --------------------------
Get-HPOVInterconnect -exportFile "c:\myApplianceConfig\ICs.json"
```

Returns the Get-HPOVInterconnect query results to the file c:\myApplianceConfig\ICs.json

### Related Links 

* [Get-HPOVInterconnectType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVInterconnectType) 
* [Reset-HPOVInterconnectNetOpPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVInterconnectNetOpPassword) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVInterconnect [[-Name] <String>] [[-Scope] <Object>] [[-Label] <String>] [[-ApplianceConnection] <Object>] [[-Export] <String>] [<CommonParameters>]
```

### Description

Interconnects enable communication between the server hardware in the enclosure and the data center networks. Interconnects that are managed are put in a `Configured` state when the Synergy frame is configured by creating a logical enclosure. An unmanaged interconnect remains in the `Monitored` state when the Synergy frame is configured by creating a logical enclosure.

Retrieves a list of all Interconnects \(Ethernet, FC, Converged Network, and/or SAS\) or just specific ones via a query if the name parameter is provided. The output can be sent to a file using the Export parameter.

{% hint style="info" %}
Minimum required privileges: Read-only
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

#### -Export &lt;String&gt; 

The full path and file name to export the contents retrieved from the call to Get-HPOVInterconnect.

| Aliases | x, exportFile |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Label &lt;String&gt; 

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the interconnect to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Networking.Interconnect \[System.Management.Automation.PSCustomObject\]**_

Single Interconnect object.

_**HPOneView.Networking.SasInterconnect \[System.Management.Automation.PSCustomObject\]**_

Single SAS Interconnect object.

_**System.Collections.ArrayList**_

Multiple Interconnect objects.

_**An Interconnect or collection of Interconnects**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVInterconnect
```

Returns all Interconnects managed by all connected appliances to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVInterconnect -Name "Encl1, Interconnect 1"
```

Returns just the Encl1, Interconnect 1 Interconnect object to standard output.

```text
 -------------------------- EXAMPLE 3 --------------------------
Get-HPOVInterconnect -exportFile "c:\myApplianceConfig\ICs.json"
```

Returns the Get-HPOVInterconnect query results to the file c:\myApplianceConfig\ICs.json

### Related Links 

* [Get-HPOVInterconnectType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVInterconnectType) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVInterconnect [[-Name] <String>] [[-Scope] <Object>] [[-Label] <String>] [[-ApplianceConnection] <Object>] [[-Export] <String>] [<CommonParameters>]
```

### Description

Interconnects enable communication between the server hardware in the enclosure and the data center networks. Interconnects that are managed are put in a `Configured` state when the Synergy frame is configured by creating a logical enclosure. An unmanaged interconnect remains in the `Monitored` state when the Synergy frame is configured by creating a logical enclosure.

Retrieves a list of all Interconnects \(Ethernet, FC, Converged Network, and/or SAS\) or just specific ones via a query if the name parameter is provided. The output can be sent to a file using the Export parameter.

{% hint style="info" %}
Minimum required privileges: Read-only
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

#### -Export &lt;String&gt; 

The full path and file name to export the contents retrieved from the call to Get-HPOVInterconnect.

| Aliases | x, exportFile |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Label &lt;String&gt; 

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the interconnect to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Networking.Interconnect \[System.Management.Automation.PSCustomObject\]**_

Single Interconnect object.

_**HPOneView.Networking.SasInterconnect \[System.Management.Automation.PSCustomObject\]**_

Single SAS Interconnect object.

_**System.Collections.ArrayList**_

Multiple Interconnect objects.

_**An Interconnect or collection of Interconnects**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVInterconnect
```

Returns all Interconnects managed by all connected appliances to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVInterconnect -Name "Encl1, Interconnect 1"
```

Returns just the Encl1, Interconnect 1 Interconnect object to standard output.

```text
 -------------------------- EXAMPLE 3 --------------------------
Get-HPOVInterconnect -exportFile "c:\myApplianceConfig\ICs.json"
```

Returns the Get-HPOVInterconnect query results to the file c:\myApplianceConfig\ICs.json

### Related Links 

* [Get-HPOVInterconnectType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVInterconnectType) 



