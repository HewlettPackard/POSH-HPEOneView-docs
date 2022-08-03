---
description: Create PowerShell script from resource.
---

# ConvertTo-OVPowerShellScript

## Syntax

```powershell
ConvertTo-OVPowerShellScript
    [-InputObject] <Object>
    [-Export <System.IO.FileInfo>]
    [-Append]
    [<CommonParameters>]
```

## Description

This Cmdlet will assist administrators or scripters to help generate script code from specific resources.  The code generated is a starting point to be used for repeating similar tasks performed by the UI, or to incorporate into scripts or workflows.

The following resources are supported by this Cmdlet:

* Baselines (Get-OVBaseline)
* Appliance address pool ranges (Get-OVAddressPoolRange)
* Appliance address pool Subnets (Get-OVAddressPoolSubnet)
* Appliance Date Time and Locale (Get-OVApplianceDateTime)
* Appliance LDAP Directory (Get-OVLdapDirectory)
* Appliance LDAP Directory Group (Get-OVLdapGroup)
* Appliance SNMP configuration (Get-OVSnmpReadCommunity)
* Appliance SNMPv3 Users (Get-OVSnmpV3User)
* Appliance Email Notifications (Get-OVApplianceProxy)
* Appliance Proxy (Get-OVApplianceProxy)
* Appliance User (Get-OVUser)
* Scopes (Get-OVScope)
* Network (Get-OVNetwork)
* Network Set (Get-OVNetworkSet)
* SAN Manager (Get-OVSanManager)
* Storage System (Get-OVStorageSystem)
* Storage Pool (Get-OVStoragePool)
* Storage Volume Template (Get-OVStorageVolumeTemplate)
* Storage Volume (Get-OVStorageVolume)
* Logical Interconnect Group (Get-OVLogicalInterconnectGroup)
* Logical Enclosure Group (Get-OVEnclosureGroup)
* Logical Enclosure (Get-OVLogicalEnclosure)
* Server Profile Template (Get-OVServerProfileTemplate)
* Server Profile (Get-OVServerProfile)

## Examples

###  Example 1 

```powershell
Get-OVServerProfile | ConvertTo-OVPowerShellScript
```

Generate PowerShell script code for the returned server profile objects.

## Parameters

### -InputObject &lt;Object&gt;

Resource object from supported Cmdlets.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Export &lt;System.IO.FileInfo&gt;

Location where to write UTF-8 file.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Append &lt;SwitchParameter&gt;

Indicte if the export file should be appended.  By default, a new file will be created with new content.

| Aliases | NoClobber |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**Various objects are supported.**_



## Return Values

_**System.String**_

String output of generated code.

## Related Links

