---
description: Create PowerShell script code from resource.
---

# ConvertTo-HPOVPowerShellScript

### HPE OneView 5.00 Library

### Syntax

```
ConvertTo-HPOVPowerShellScript [-InputObject] <Object> [[-Export] <System.IO.FileInfo>] [[-Append] <SwitchParameter>] [<CommonParameters>]
```

### Description

This Cmdlet will assist administrators or scripters to help generate script code from specific resources. The code generated is a starting point to be used for repeating similar tasks performed by the UI, or to incorporate into scripts or workflows.

The following resources are supported by this Cmdlet:

* Baselines \(Get-HPOVBaseline\)
* Appliance Address Pool Ranges \(Get-HPOVAddressPoolRange\)
* Appliance Address Pool Subnets \(Get-HPOVAddressPoolSubnet\)
* Appliance Date Time and Locale \(Get-HPOVApplianceDateTime\)
* Appliance LDAP Directory \(Get-HPOVLdapDirectory\)
* Appliance LDAP Directory Group \(Get-HPOVLdapGroup\)
* Appliance SNMP configuration \(Get-HPOVSnmpReadCommunity\)
* Appliance SNMPv3 Users \(Get-HPOVSnmpV3User\)
* Appliance Email Notifications \(Get-HPOVApplianceProxy\)
* Appliance Proxy \(Get-HPOVApplianceProxy\)
* Appliance User \(Get-HPOVUser\)
* Scopes \(Get-HPOVScope\)
* Network \(Get-HPOVNetwork\)
* Network Set \(Get-HPOVNetworkSet\)
* SAN Manager \(Get-HPOVSanNanager\)
* Storage System \(Get-HPOVStorageSystem\)
* Storage Pool \(Get-HPOVStoragePool\)
* Storage Volume Template \(Get-HPOVStorageVolumeTemplate\)
* Storage Volume \(Get-HPOVStorageVolume\)
* Logical Interconnect Group \(Get-HPOVLogicalInterconnectGroup\)
* Logical Enclosure Group \(Get-HPOVLogicalEnclosureGroup\)
* Logical Enclosure \(Get-HPOVLogicalEnclosure\)
* Server Profile Template \(Get-HPOVServerProfileTemplate\)
* Server Profile \(Get-HPOVServerProfile\)

### Parameters

#### -Append &lt;SwitchParameter&gt; 

Indicate if the export file should be appended. By default, a new file will be created with new content.

| Aliases | NoClobber |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Export &lt;System.IO.FileInfo&gt; 

Location where to write UTF-8 file.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Resource object from supported Cmdlets.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**Various objects are supported.**_

### Return Values

_**System.String**_

String output of generated code.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServerProfile | ConvertTo-HPOVPowerShellScript
```

 Generate PowerShell script code for the returned server profile objects. 

### Related Links

## HPE OneView 4.20 Library

### Syntax

```
ConvertTo-HPOVPowerShellScript [-InputObject] <Object> [[-Export] <System.IO.FileInfo>] [[-App
```

### Description

This Cmdlet will assist administrators or scripters to help generate script code from specific resources. The code generated is a starting point to be used for repeating similar tasks performed by the UI, or to incorporate into scripts or workflows.

The following resources are supported by this Cmdlet:

* Baselines \(Get-HPOVBaseline\)
* Appliance Address Pool Ranges \(Get-HPOVAddressPoolRange\)
* Appliance Address Pool Subnets \(Get-HPOVAddressPoolSubnet\)
* Appliance Date Time and Locale \(Get-HPOVApplianceDateTime\)
* Appliance LDAP Directory \(Get-HPOVLdapDirectory\)
* Appliance LDAP Directory Group \(Get-HPOVLdapGroup\)
* Appliance SNMP configuration \(Get-HPOVSnmpReadCommunity\)
* Appliance SNMPv3 Users \(Get-HPOVSnmpV3User\)
* Appliance Email Notifications \(Get-HPOVApplianceProxy\)
* Appliance Proxy \(Get-HPOVApplianceProxy\)
* Appliance User \(Get-HPOVUser\)
* Scopes \(Get-HPOVScope\)
* Network \(Get-HPOVNetwork\)
* Network Set \(Get-HPOVNetworkSet\)
* SAN Manager \(Get-HPOVSanNanager\)
* Storage System \(Get-HPOVStorageSystem\)
* Storage Pool \(Get-HPOVStoragePool\)
* Storage Volume Template \(Get-HPOVStorageVolumeTemplate\)
* Storage Volume \(Get-HPOVStorageVolume\)
* Logical Interconnect Group \(Get-HPOVLogicalInterconnectGroup\)
* Logical Enclosure Group \(Get-HPOVLogicalEnclosureGroup\)
* Logical Enclosure \(Get-HPOVLogicalEnclosure\)
* Server Profile Template \(Get-HPOVServerProfileTemplate\)
* Server Profile \(Get-HPOVServerProfile\)

### Parameters

#### -Append &lt;SwitchParameter&gt; 

Indicate if the export file should be appended. By default, a new file will be created with new content.

| Aliases | NoClobber |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Export &lt;System.IO.FileInfo&gt; 

Location where to write UTF-8 file.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Resource object from supported Cmdlets.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**Various objects are supported.**_

### Return Values

_**System.String**_

String output of generated code.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServerProfile | ConvertTo-HPOVPowerShellScript
```

Generate PowerShell script code for the returned server profile objects. 

### Related Links 

## HPE OneView 4.10 Library 

### Syntax

```
ConvertTo-HPOVPowerShellScript [-InputObject] <Object> [[-Export] <System.IO.FileInfo>] [[-App
```

### Description

This Cmdlet will assist administrators or scripters to help generate script code from specific resources. The code generated is a starting point to be used for repeating similar tasks performed by the UI, or to incorporate into scripts or workflows.

The following resources are supported by this Cmdlet:

* Baselines \(Get-HPOVBaseline\)
* Appliance Address Pool Ranges \(Get-HPOVAddressPoolRange\)
* Appliance Address Pool Subnets \(Get-HPOVAddressPoolSubnet\)
* Appliance Date Time and Locale \(Get-HPOVApplianceDateTime\)
* Appliance LDAP Directory \(Get-HPOVLdapDirectory\)
* Appliance LDAP Directory Group \(Get-HPOVLdapGroup\)
* Appliance SNMP configuration \(Get-HPOVSnmpReadCommunity\)
* Appliance SNMPv3 Users \(Get-HPOVSnmpV3User\)
* Appliance Email Notifications \(Get-HPOVApplianceProxy\)
* Appliance Proxy \(Get-HPOVApplianceProxy\)
* Appliance User \(Get-HPOVUser\)
* Scopes \(Get-HPOVScope\)
* Network \(Get-HPOVNetwork\)
* Network Set \(Get-HPOVNetworkSet\)
* SAN Manager \(Get-HPOVSanNanager\)
* Storage System \(Get-HPOVStorageSystem\)
* Storage Pool \(Get-HPOVStoragePool\)
* Storage Volume Template \(Get-HPOVStorageVolumeTemplate\)
* Storage Volume \(Get-HPOVStorageVolume\)
* Logical Interconnect Group \(Get-HPOVLogicalInterconnectGroup\)
* Logical Enclosure Group \(Get-HPOVLogicalEnclosureGroup\)
* Logical Enclosure \(Get-HPOVLogicalEnclosure\)
* Server Profile Template \(Get-HPOVServerProfileTemplate\)
* Server Profile \(Get-HPOVServerProfile\)

### Parameters

#### -Append &lt;SwitchParameter&gt; 

Indicate if the export file should be appended. By default, a new file will be created with new content.

| Aliases | NoClobber |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Export &lt;System.IO.FileInfo&gt; 

Location where to write UTF-8 file.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Resource object from supported Cmdlets.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**Various objects are supported.**_

### Return Values

_**System.String**_

String output of generated code.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServerProfile | ConvertTo-HPOVPowerShellScript
```

Generate PowerShell script code for the returned server profile objects. 

### Related Links 

