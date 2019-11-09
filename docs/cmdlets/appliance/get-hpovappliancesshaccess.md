# Get-HPOVApplianceSshAccess

 [Library Version 5.00]() [Library Version 4.20]() [Library Version 4.10]() 

### HPE OneView 5.00 Library

## Get-HPOVApplianceSshAccess

 Get the current SSH console access state.

### Synatx

```text
Get-HPOVApplianceSshAccess [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

 You can configure the appliance to allow or deny remote access to the HPE OneView appliance using SSH. This Cmdlet will return the current SSH console access state on the appliance.

Privileges: Infrastructure administrator

### Parameters

-ApplianceConnection &lt;Object&gt; Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

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

_**HPOneView.Appliance.SshAccess**_

The configured state of the appliance SSH console.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceSshAccess
```

 Get the current state of the appliance SSH console. \#\#\# Related Links \* \[Disable-HPOVApplianceSshAccess\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceSshAccess\) \* \[Enable-HPOVApplianceSshAccess\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceSshAccess\) \*\*\*[Top]() \#\#\# HPE OneView 4.20 Library \#\# Get-HPOVApplianceSshAccess

 Get the current SSH console access state. \#\#\# Synatx

Get-HPOVApplianceSshAccess \[\[-ApplianceConnection\] &lt;Object&gt;\] \[&lt;CommonParameters&gt;\]

### Description

 You can configure the appliance to allow or deny remote access to the HPE OneView appliance using SSH. This Cmdlet will return the current SSH console access state on the appliance.

Privileges: Infrastructure administrator

### Parameters

-ApplianceConnection &lt;Object&gt; Aliases \[-Appliance\]

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

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

_**HPOneView.Appliance.SshAccess**_

The configured state of the appliance SSH console.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceSshAccess
```

 Get the current state of the appliance SSH console. \#\#\# Related Links \* \[Disable-HPOVApplianceSshAccess\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceSshAccess\) \* \[Enable-HPOVApplianceSshAccess\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceSshAccess\) \*\*\*[Top]() \#\#\# HPE OneView 4.10 Library \#\# Get-HPOVApplianceSshAccess

 Get the current SSH console access state. \#\#\# Synatx

Get-HPOVApplianceSshAccess \[\[-ApplianceConnection\] &lt;Object&gt;\] \[&lt;CommonParameters&gt;\]

### Description

 You can configure the appliance to allow or deny remote access to the HPE OneView appliance using SSH. This Cmdlet will return the current SSH console access state on the appliance.

Privileges: Infrastructure administrator

### Parameters

-ApplianceConnection &lt;Object&gt; Aliases \[-Appliance\]

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

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

_**HPOneView.Appliance.SshAccess**_

The configured state of the appliance SSH console.

### Examples

```
 -------------------------- EXAMPLE 1 -------------------------- Get-HPOVApplianceSshAccess 
```

### Related Links

* [Disable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceSshAccess)
* [Enable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceSshAccess)

[Top]()

