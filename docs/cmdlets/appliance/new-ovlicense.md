---
description: Install license on the appliance
---

# New-OVLicense

## Syntax

```powershell
New-OVLicense
    [-LicenseKey] <String>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVLicense
    [-File] <String>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The following types of licenses are available for managing or monitoring hardware in HPE OneView.

Managed hardware licenses

HPE OneView Advanced

This licnese type provides both an HPE OneView Advanced license and an iLO Advanced license.  This license is intended for server hardware and enclosures you want to manage with HPE OneView.

HPE OneView Advanced w/o iLO

This license type rovides an HPE OneView Advanced license only.  It is intended for server hardware you want to manage with HPE OneView. This license is for servers with iLOs that are already licensed, or server hardware for which you do not require an iLO license.  An HPE OneView Advanced w/o iLO license provides support for all server hardware features on the appliance, with the following exceptions:

*  Server hardware without an iLO Advanced license does not display utilization data.
*  Rack mount servers without an iLO Advanced license cannot access the remote console.

Monitored hardware license

HPE OneView Standard

Provides an HPE OneView Standard license for all monitored server hardware.

This license is automatically selected:

*  for the enclosure when adding a monitored enclosure
*  for the server when adding a monitored server
*  for all ProLiant G6 server blades or G7 BL680c server blades when adding a managed enclosure

HPE OneView does not manage the hardware running with an HPE OneView Standard license.

When you add an enclosure or rack mount server to the appliance, you must specify one of these licenses.

When you add a rack manager, either the HPE OneView Standard license or the HPE OneView Advanced license is automatically applied based on the firmware version installed on the rack manager.

This Cmdlet will assist with the installation of a new HPE OneView Advanced or HPE OneView Advanced without iLO Advanced license key.  The type is automatically detected based on the validity of the license key.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
$license = "FC9E D9MA H9PA GTVZ C7B5 HWWB Y9JL KHPL B89H MZVU DXAU 9CSM GHTG L762 2F25 HJF9 KJVT D5TM EFVW TZNJ FGTM NQ6G 2P2J 9G82 ZJKZ EWLR VW8A Y5A4 N2SK H1MQ XJJL LUQH ZUWD 9ATC NJ79 CEJC 5S86 FC4X EKSZ X4CP XZLU FSXS FKS6 KKCE 4NMU FPN5 N82E Z2RX 3QTM EFQC 29JK 29MC "ORDER_101613 E1Y94A HP_OV_3yr_24x7_Supp_Phys_1_Svr_Lic EONEJTCDT4FJ"_35HZP-CYMTH-W414S-2DGKZ-S6MPH"
New-OVlicense -LicenseKey $license
```

Install license on the appliance connection.

###  Example 2 

```powershell
New-OVlicense -File c:\licenses.txt
```

Install licenses read from a file by Get-Content.

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
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "System.String"
    License key in String Format, from Get-Content or an Array of String
    

## Return Values

=== "HPEOneView.Appliance.License"
    The License resource just added to the apliance
    

## Related Links

* [Get-OVLicense](get-ovlicense.md)
* [Remove-OVLicense](remove-ovlicense.md)
