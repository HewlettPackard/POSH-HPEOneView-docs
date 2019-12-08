---
description: Retrieve SAS Logical Interconnect resource(s).
---

# Get-HPOVSasLogicalInterconnect

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVSasLogicalInterconnect [[-Name] <String>] [[-Label] <String>] [[-ApplianceConnection] <Object>] [[-Export] <String>] [<CommonParameters>]
```

### Description

A logical interconnect is a single administrative entity that consists of the configuration for a set of interconnects in a single enclosure or an HPE Synergy frame link topology.  SAS Logical Interconnects define the storage fabric connectivity for HPE Synergy storage solutions, like the D3940 drive enclosure.

This Cmdlet retrieves a list of all SAS Logical Interconnect or just specific ones via a query if the name parameter is provided. The output can be sent to a file using the exportFile parameter.

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

The full path and file name to export the contents retrieved from the call to Get-HPOVLogicalInterconnect.

| Aliases | x, ExportFile |
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

The name of the SAS Logical Interconnect to retrieve.

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

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPoneView.Storage.SasLogicalInterconnect \[System.Management.Automation.PSCustomObject\]**_

Logical Interconnect resource object from Get-HPOVLogicalInterconnect

_**System.Collections.ArrayList &lt;HPoneView.Storage.SasLogicalInterconnect&gt;**_

Multiple Logical Interconnects

_**A SAS Logical Interconnect or collection of SAS Logical Interconnects**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVSasLogicalInterconnect
```

Returns all SAS Logical Interconnect defined on the appliance to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVSasLogicalInterconnect -Name "LE1-SasProduction" -ErrorAction Stop
```

Returns just the specific SAS Logical Interconnect object to standard output. 

### Related Links 

* None

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVSasLogicalInterconnect [[-Name] <String>] [[-Label] <String>] [[-ApplianceConnection] <Object>] [[-Export] <String>] [<CommonParameters>]
```

### Description

A logical interconnect is a single administrative entity that consists of the configuration for a set of interconnects in a single enclosure or an HPE Synergy frame link topology.  SAS Logical Interconnects define the storage fabric connectivity for HPE Synergy storage solutions, like the D3940 drive enclosure.

This Cmdlet retrieves a list of all SAS Logical Interconnect or just specific ones via a query if the name parameter is provided. The output can be sent to a file using the exportFile parameter.

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

The full path and file name to export the contents retrieved from the call to Get-HPOVLogicalInterconnect.

| Aliases | x, ExportFile |
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

The name of the SAS Logical Interconnect to retrieve.

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

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPoneView.Storage.SasLogicalInterconnect \[System.Management.Automation.PSCustomObject\]**_

Logical Interconnect resource object from Get-HPOVLogicalInterconnect

_**System.Collections.ArrayList &lt;HPoneView.Storage.SasLogicalInterconnect&gt;**_

Multiple Logical Interconnects

_**A SAS Logical Interconnect or collection of SAS Logical Interconnects**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVSasLogicalInterconnect
```

Returns all SAS Logical Interconnect defined on the appliance to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVSasLogicalInterconnect -Name "LE1-SasProduction" -ErrorAction Stop
```

Returns just the specific SAS Logical Interconnect object to standard output. 

### Related Links 

* None

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVSasLogicalInterconnect [[-Name] <String>] [[-Label] <String>] [[-ApplianceConnection] <Object>] [[-Export] <String>] [<CommonParameters>]
```

### Description

A logical interconnect is a single administrative entity that consists of the configuration for a set of interconnects in a single enclosure or an HPE Synergy frame link topology.  SAS Logical Interconnects define the storage fabric connectivity for HPE Synergy storage solutions, like the D3940 drive enclosure.

This Cmdlet retrieves a list of all SAS Logical Interconnect or just specific ones via a query if the name parameter is provided. The output can be sent to a file using the exportFile parameter.

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

The full path and file name to export the contents retrieved from the call to Get-HPOVLogicalInterconnect.

| Aliases | x, ExportFile |
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

The name of the SAS Logical Interconnect to retrieve.

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

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPoneView.Storage.SasLogicalInterconnect \[System.Management.Automation.PSCustomObject\]**_

Logical Interconnect resource object from Get-HPOVLogicalInterconnect

_**System.Collections.ArrayList &lt;HPoneView.Storage.SasLogicalInterconnect&gt;**_

Multiple Logical Interconnects

_**A SAS Logical Interconnect or collection of SAS Logical Interconnects**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVSasLogicalInterconnect
```

Returns all SAS Logical Interconnect defined on the appliance to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVSasLogicalInterconnect -Name "LE1-SasProduction" -ErrorAction Stop
```

Returns just the specific SAS Logical Interconnect object to standard output. 

### Related Links 

* None



