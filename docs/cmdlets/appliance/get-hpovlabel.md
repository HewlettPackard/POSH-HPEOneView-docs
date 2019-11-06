# Get-HPOVLabel

 [Library Version 5.00]() [Library Version 4.20]() [Library Version 4.10]() 

### HPE OneView 5.00 Library

## Get-HPOVLabel

 Return created label resources.

### Synatx

```
Get-HPOVLabel [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

 Labels identify resources so you can organize them into groups. For example, you might want to identify the servers that are used primarily by the Finance team, or identify the storage systems assigned to the Asia/Pacific division.

This Cmdlet will return all of the created labels on the specifed appliance.

### Parameters

-ApplianceConnection &lt;Object&gt; Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Name &lt;String&gt; The name of the Label to associate resources to. If Label does not exist, a new one will be created.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.Label**_

Label resource.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLabel
```

 Return all labels from the appliance. \#\#\# Related Links \*\*\*[Top]() \#\#\# HPE OneView 4.20 Library \#\# Get-HPOVLabel

 Return created label resources. \#\#\# Synatx

Get-HPOVLabel \[\[-Name\] &lt;String&gt;\] \[\[-ApplianceConnection\] &lt;Object&gt;\] \[&lt;CommonParameters&gt;\]

### Description

 Labels identify resources so you can organize them into groups. For example, you might want to identify the servers that are used primarily by the Finance team, or identify the storage systems assigned to the Asia/Pacific division.

This Cmdlet will return all of the created labels on the specifed appliance.

### Parameters

-ApplianceConnection &lt;Object&gt; Aliases \[-Appliance\]

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Name &lt;String&gt; The name of the Label to associate resources to. If Label does not exist, a new one will be created.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.Label**_

Label resource.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLabel
```

 Return all labels from the appliance. \#\#\# Related Links \*\*\*[Top]() \#\#\# HPE OneView 4.10 Library \#\# Get-HPOVLabel

 Return created label resources. \#\#\# Synatx

Get-HPOVLabel \[\[-Name\] &lt;String&gt;\] \[\[-ApplianceConnection\] &lt;Object&gt;\] \[&lt;CommonParameters&gt;\]

### Description

 Labels identify resources so you can organize them into groups. For example, you might want to identify the servers that are used primarily by the Finance team, or identify the storage systems assigned to the Asia/Pacific division.

This Cmdlet will return all of the created labels on the specifed appliance.

### Parameters

-ApplianceConnection &lt;Object&gt; Aliases \[-Appliance\]

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Name &lt;String&gt; The name of the Label to associate resources to. If Label does not exist, a new one will be created.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.Label**_

Label resource.

### Examples

```
 -------------------------- EXAMPLE 1 -------------------------- Get-HPOVLabel
```

### Related Links

[Top]()

