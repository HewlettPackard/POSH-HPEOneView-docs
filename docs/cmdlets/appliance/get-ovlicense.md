---
description: Gets the installed licenses on the appliance.
---

# Get-OVLicense

## Syntax

```powershell
Get-OVLicense
    [-Type <String>]
    [-State <String>]
    [-Summary]
    [-Report]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE OneView requires a license for all server hardware that it manages or monitors.  HPE Synergy requires fibre channel license for the Virtual Connect SE 40Gb F8 Module for Synergy. 

The following HPE OneView Advanced licenses provide support as listed below, and in addition, enable integration with other products.

* HPE OneView Advanced
    * Provides an HPE OneView Advanced license and an iLO Advanced license.
    * This license is intended for server hardware and enclosures you want to manage with HPE OneView.

* HPE OneView Advanced w/o iLO
    * Provides an HPE OneView Advanced license only.

          This license is intended for server hardware you want to manage with HPE OneView. This license is for servers with iLOs that are already licensed, or server hardware for which you do not require an iLO license.

          An HPE OneView Advanced w/o iLO license provides support for all server hardware features on the appliance, with the following exceptions:
        * Server hardware without an iLO Advanced license does not display utilization data.
        * Rack mount servers without an iLO Advanced license cannot access the remote console.

* HPE OneView Standard
    * Provides an HPE OneView Standard license for all monitored server hardware. 

    * This license is automatically selected:
        * for the enclosure when adding a monitored enclosure
        * for the server when adding a monitored server
        * for all ProLiant G6 server blades or G7 BL680c server blades when adding a managed enclosure

HPE OneView does not manage the hardware running with an HPE OneView Standard license. 

When you add an enclosure or rack mount server to the appliance, you must specify one of these licenses.

When you add a rack manager, either the HPE OneView Standard license or the HPE OneView Advanced license is automatically applied based on the firmware version installed on the rack manager.

If you purchase HPE OneView Advanced and HPE OneView Advanced w/o iLO licenses separately from the hardware (standalone, nonintegrated), you must add them to the HPE OneView license pool in order for them to be available to assign to your server hardware.

This Cmdlet will retrieve licenses installed on the appliance. You can use this to get an inventory of what's installed and what licenses are consumed.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVLicense

Product   : HPE OneView Advanced
Type      : Permanent
Capacity  : 64
Allocated : 30
Available : 34
Nodes     : {Encl2, bay 7, Encl2, bay 4, Encl2, bay 13, Encl1, bay 8..}
```

Retrieve all installed license objects on the connected appliance(s).

## Parameters

### -Type &lt;String&gt;

Specify the type of License to retrieve.  Valid options are "HP_ONE_VIEW" or "HP_ONE_VIEW_WO_ILO".

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -State &lt;String&gt;

Specify the license state to retrieve.  Valid options are "Unlicensed" or "Permanent".

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Summary &lt;SwitchParameter&gt;

Display a condensed summary view of the installed or required licenses.  This does not return a License object that can be used with Remove-OVLicense.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Report &lt;SwitchParameter&gt;

PARAMETER IS DEPRECATED.

Generate a report of installed or required licenses, their type and assigned Nodes.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.License"
    HPE OneView License
    

## Related Links

* [New-OVLicense](new-ovlicense.md)
* [Remove-OVLicense](remove-ovlicense.md)
