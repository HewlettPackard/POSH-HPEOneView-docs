---
description: Install license on the appliance
---

# New-OVLicense

## Syntax

```text
New-OVLicense
    [-LicenseKey] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
New-OVLicense
    [-File] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will install licenses on the appliance.

## Examples

###  Example 1 

```text
$license = "FC9E D9MA H9PA GTVZ C7B5 HWWB Y9JL KHPL B89H MZVU DXAU 9CSM GHTG L762 2F25 HJF9 KJVT D5TM EFVW TZNJ FGTM NQ6G 2P2J 9G82 ZJKZ EWLR VW8A Y5A4 N2SK H1MQ XJJL LUQH ZUWD 9ATC NJ79 CEJC 5S86 FC4X EKSZ X4CP XZLU FSXS FKS6 KKCE 4NMU FPN5 N82E Z2RX 3QTM EFQC 29JK 29MC "ORDER_101613 E1Y94A HP_OV_3yr_24x7_Supp_Phys_1_Svr_Lic EONEJTCDT4FJ"_35HZP-CYMTH-W414S-2DGKZ-S6MPH"
New-OVlicense $license
```

Install license on the appliance connection.

###  Example 2 

```text
New-OVlicense -file c:\licenses.txt
Install licenses from a file.

Get-Content C:\licenses.txt | New-OVlicense
```

Install licenses read from a file by `Get-Content`.

## Parameters

### -LicenseKey &lt;String&gt;

Used for adding license keys one at a time, or if only a single license key needs to be added.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -File &lt;String&gt;

A text file with each license key on a new line that will be installed on the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.String**_

License key in String Format, from Get-Content or an Array of String

## Return Values

_**System.Management.Automation.PSCustomObject**_

The License resource just added to the apliance

## Related Links

* [Get-OVLicense](get-ovlicense.md)
* [Remove-OVLicense](remove-ovlicense.md)
