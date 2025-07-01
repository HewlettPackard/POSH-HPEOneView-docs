---
description: Retrieve Enclosure resource(s).
---

# Get-OVEnclosure

## Syntax

```powershell
Get-OVEnclosure
    [-Name <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
Get-OVEnclosure
    [-Name <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Array>]
    [-Report]
    [<CommonParameters>]
```

```powershell
Get-OVEnclosure
    [-Name <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Array>]
    [-exportFile] <String>
    [<CommonParameters>]
```

## Description

An enclosure (HPE c-Class BladeSystem enclosure or Synergy frame) is a physical structure with device bays supporting compute, networking, and storage building blocks. These building blocks share the enclosure's common power, cooling, and management infrastructure.

This Cmdlet will get the managed and/or monitored enclosure resources from an appliance.  This can include HPE BladeSystem c7000, HPE Synergy or HPE Superdome X enclosure resources.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
$enclosures = Get-OVEnclosure
```

Return all the enclosure hardware managed by this appliance.

###  Example 2 

```powershell
$enclosure = Get-OVEnclosure -Name "A"
```

Return the enclosure hardware resource with name "A".

###  Example 3 

```powershell
Get-OVEnclosure

Enclosure Name Serial Number Enclosure Model                Rack Name State      EG          Populated Bays
-------------- ------------- ---------------                --------- -----      --          --------------
Encl1          SGH100X6J1    BladeSystem c7000 Enclosure G2 Rack-173  Monitored  Default EG1 16/16
Encl2          SGH102X6J1    BladeSystem c7000 Enclosure G2 Rack-173  Monitored  Default EG1 9/16
```

Display a brief list of the enclosures managed or monitored by the appliance.

###  Example 4 

```powershell
Get-OVEnclosure -Name Encl1 -report

Enclosure Name Serial Number Enclosure Model                Rack Name FW Managed Baseline Name
-------------- ------------- ---------------                --------- ---------- -------------
Encl1          SGH100X6J1    BladeSystem c7000 Enclosure G2 Rack-173       False

Licensing
---------
OneView

OA Bay Role    IP Address  Firmware Version
------ ----    ----------  ----------------
        1 Active  172.18.1.11 4.01 April 01 2013
        2 Standby 172.18.1.12 4.01 April 01 2013

Server Name   Serial Number Model       System ROM     iLO Firmware Version  Server Profile Licensing
-----------   ------------- -----       ----------     --------------------  -------------- ---------
Encl1, bay 1  SGH100X5RN    BL660c Gen8 I32 05/30/2012 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 11 SGH106X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 11     OneView
Encl1, bay 12 SGH107X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 12     OneView
Encl1, bay 13 SGH108X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 13     OneView
Encl1, bay 14 SGH109X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 14     OneView
Encl1, bay 15 SGH110X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 15     OneView
Encl1, bay 16 SGH111X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 16     OneView
Encl1, bay 2  SGH101X5RN    BL660c Gen8 I32 05/30/2012 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 3  SGH100X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 test 2         OneView
Encl1, bay 4  SGH101X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 5  SGH102X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 6  SGH103X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 7  SGH104X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 8  SGH105X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView

Interconnect Name     Module                               Serial Number Firmware Version
-----------------     ------                               ------------- ----------------
Encl1, interconnect 1 HPE VC FlexFabric 10Gb/24-Port Module WECFSED100    4.10
Encl1, interconnect 2 HPE VC FlexFabric 10Gb/24-Port Module WECFSED101    4.10

        Interconnect Name     Logical Interconnect State      Status Consistency state
----- -----------------     -------------------- -----      ------ -----------------
        Encl1, interconnect 1 Encl1-LI             Configured OK     Consistent
        Encl1, interconnect 2 Encl1-LI             Configured OK     Consistent
        
        
```

Generate a report of Encl1.

## Parameters

### -Name &lt;String&gt;

The name of the enclosure hardware resource to be returned.  All enclosure hardware resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

* AllResources
* AllResourcesInScope
* `[HPEOneView.Appliance.ScopeCollection]`
* `[HPEOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ExportFile &lt;String&gt;

Full path and file name to save the output .

| Aliases | x, export |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Report &lt;SwitchParameter&gt;

Generate report of enclosure, including device bays, interconnect bays, and reported firmware for components.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Object"
    Enclosure Report
    

=== "HPEOneView.Enclosure [System.Management.Automation.PSCustomObject]"
    The matching enclosure hardware resources.
    

## Related Links

* [Add-OVEnclosure](add-ovenclosure.md)
* [Get-OVEnclosureGroup](get-ovenclosuregroup.md)
* [New-OVEnclosureGroup](new-ovenclosuregroup.md)
* [Remove-OVEnclosure](remove-ovenclosure.md)
* [Remove-OVEnclosureGroup](remove-ovenclosuregroup.md)
* [Reset-OVEnclosureDevice](reset-ovenclosuredevice.md)
* [Set-OVEnclosure](set-ovenclosure.md)
* [Set-OVEnclosureActiveFLM](set-ovenclosureactiveflm.md)
* [Set-OVEnclosureGroup](set-ovenclosuregroup.md)
* [Update-OVEnclosure](update-ovenclosure.md)
