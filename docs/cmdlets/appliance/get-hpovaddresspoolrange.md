---
description: Retrieve Address Pool Range information.
---

# Get-HPOVAddressPoolRange

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVAddressPoolRange [[-Type] <String[]>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVAddressPoolRange [-InputObject] <Object> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

An ID pool is a collection of one or more ranges that you can be randomly generate or specify to provide large address spaces. By default, one virtual ID pool each of contiguous MAC addresses, WWNs, and serial numbers are created automatically when you initialize the appliance. The pools are composed of address and ID ranges. You can individually enable or disable a range, or delete any unused ranges. ID pool ranges do not conflict with physical IDs, provided the virtual ranges you create exclude the physical ID ranges.

This Cmdlet will display configured address pool ranges defined on an HPE OneView appliance. Currently, the appliance supports the following address pool ranges:

* VMAC
* VWWN
* VSN
* IPv6
* IPv4

You can specify one, some or all of the pool types.

{% hint style="info" %}
Required Privileges: Network administrator \(virtual MAC addresses and virtual WWNs\), Infrastructure administrator \(all ID types\)
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
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt;

Specify the address pool object from Get-HPOVAddressPool.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | all |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Type &lt;String\[\]&gt;

Specify the type of address pool. Allowed values are:

* IPv4
* IPv6
* VMAC
* VWWN
* VSN
* All

| Aliases | Pool |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | all |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.AddressPool \[System.Management.Automation.PSCustomObject\]**_

Address pool resource object.

### Return Values

_**HPOneView.Appliance.AddressPoolRange \[System.Management.Automation.PSCustomObject\]**_

Address pool range object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
[PS] C:\> Get-HPOVAddressPoolRange

Name Enabled Category  Total   Allocated Available Reserved Start                   End
---- ------- --------  -----   --------- --------- -------- -----                   ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00       62:79:84:5F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:92:5a:1f:b0:00:00 10:00:92:5a:1f:bf:ff:ff
VSN  True    Generated 46656   1         46655     0        VCGBWAB000              VCGBWABZZZ
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00       F6:38:E6:9F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:ce:58:fa:50:00:00 10:00:ce:58:fa:5f:ff:ff
VSN  True    Generated 46656   0         46656     0        VCGA290000              VCGA290ZZZ

```

Get all configured Address Pool Ranges from all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
[PS] C:\> Get-HPOVAddressPoolRange -Type vmac

Name Enabled Category  Total   Allocated Available Reserved Start             End
---- ------- --------  -----   --------- --------- -------- -----             ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00 62:79:84:5F:FF:FF
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00 F6:38:E6:9F:FF:FF

```

Get a specific Address Pool Range type \(VMAC\) from all connected appliances. 

### Related Links 

* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange) 
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVAddressPoolRange [[-Type] <String[]>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVAddressPoolRange [-InputObject] <Object> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

An ID pool is a collection of one or more ranges that you can be randomly generate or specify to provide large address spaces. By default, one virtual ID pool each of contiguous MAC addresses, WWNs, and serial numbers are created automatically when you initialize the appliance. The pools are composed of address and ID ranges. You can individually enable or disable a range, or delete any unused ranges. ID pool ranges do not conflict with physical IDs, provided the virtual ranges you create exclude the physical ID ranges.

This Cmdlet will display configured address pool ranges defined on an HPE OneView appliance. Currently, the appliance supports the following address pool ranges:

* VMAC
* VWWN
* VSN
* IPv4

You can specify one, some or all of the pool types.

{% hint style="info" %}
Required Privileges: Network administrator \(virtual MAC addresses and virtual WWNs\), Infrastructure administrator \(all ID types\)
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
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt;

Specify the address pool object from Get-HPOVAddressPool.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | all |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Type &lt;String\[\]&gt;

Specify the type of address pool. Allowed values are:

* IPv4
* VMAC
* VWWN
* VSN
* All

| Aliases | Pool |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | all |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.AddressPool \[System.Management.Automation.PSCustomObject\]**_

Address pool resource object.

### Return Values

_**HPOneView.Appliance.AddressPoolRange \[System.Management.Automation.PSCustomObject\]**_

Address pool range object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
[PS] C:\> Get-HPOVAddressPoolRange

Name Enabled Category  Total   Allocated Available Reserved Start                   End
---- ------- --------  -----   --------- --------- -------- -----                   ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00       62:79:84:5F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:92:5a:1f:b0:00:00 10:00:92:5a:1f:bf:ff:ff
VSN  True    Generated 46656   1         46655     0        VCGBWAB000              VCGBWABZZZ
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00       F6:38:E6:9F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:ce:58:fa:50:00:00 10:00:ce:58:fa:5f:ff:ff
VSN  True    Generated 46656   0         46656     0        VCGA290000              VCGA290ZZZ

```

Get all configured Address Pool Ranges from all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
[PS] C:\> Get-HPOVAddressPoolRange -Type vmac

Name Enabled Category  Total   Allocated Available Reserved Start             End
---- ------- --------  -----   --------- --------- -------- -----             ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00 62:79:84:5F:FF:FF
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00 F6:38:E6:9F:FF:FF

```

Get a specific Address Pool Range type \(VMAC\) from all connected appliances. 

### Related Links 

* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange) 
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVAddressPoolRange [[-Type] <String[]>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVAddressPoolRange [-InputObject] <Object> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

An ID pool is a collection of one or more ranges that you can be randomly generate or specify to provide large address spaces. By default, one virtual ID pool each of contiguous MAC addresses, WWNs, and serial numbers are created automatically when you initialize the appliance. The pools are composed of address and ID ranges. You can individually enable or disable a range, or delete any unused ranges. ID pool ranges do not conflict with physical IDs, provided the virtual ranges you create exclude the physical ID ranges.

This Cmdlet will display configured address pool ranges defined on an HPE OneView appliance. Currently, the appliance supports the following address pool ranges:

* VMAC
* VWWN
* VSN
* IPv4

You can specify one, some or all of the pool types.

{% hint style="info" %}
Required Privileges: Network administrator \(virtual MAC addresses and virtual WWNs\), Infrastructure administrator \(all ID types\)
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
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt;

Specify the address pool object from Get-HPOVAddressPool.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | all |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Type &lt;String\[\]&gt;

Specify the type of address pool. Allowed values are:

* IPv4
* VMAC
* VWWN
* VSN
* All

| Aliases | Pool |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | all |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.AddressPool \[System.Management.Automation.PSCustomObject\]**_

Address pool resource object.

### Return Values

_**HPOneView.Appliance.AddressPoolRange \[System.Management.Automation.PSCustomObject\]**_

Address pool range object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
[PS] C:\> Get-HPOVAddressPoolRange

Name Enabled Category  Total   Allocated Available Reserved Start                   End
---- ------- --------  -----   --------- --------- -------- -----                   ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00       62:79:84:5F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:92:5a:1f:b0:00:00 10:00:92:5a:1f:bf:ff:ff
VSN  True    Generated 46656   1         46655     0        VCGBWAB000              VCGBWABZZZ
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00       F6:38:E6:9F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:ce:58:fa:50:00:00 10:00:ce:58:fa:5f:ff:ff
VSN  True    Generated 46656   0         46656     0        VCGA290000              VCGA290ZZZ

```

Get all configured Address Pool Ranges from all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
[PS] C:\> Get-HPOVAddressPoolRange -Type vmac

Name Enabled Category  Total   Allocated Available Reserved Start             End
---- ------- --------  -----   --------- --------- -------- -----             ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00 62:79:84:5F:FF:FF
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00 F6:38:E6:9F:FF:FF

```

Get a specific Address Pool Range type \(VMAC\) from all connected appliances. 

### Related Links 

* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange) 
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange) 

