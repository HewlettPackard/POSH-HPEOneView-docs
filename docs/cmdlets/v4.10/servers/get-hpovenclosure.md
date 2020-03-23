---
description: Retrieve Enclosure resource(s).
---

# Get-HPOVEnclosure

## Syntax

```text
Get-HPOVEnclosure
    [-Name] <String>
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```text
Get-HPOVEnclosure
    [-Name] <String>
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Array>]
    [-Report]
    [<CommonParameters>]
```

```text
Get-HPOVEnclosure
    [-Name] <String>
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Array>]
    [-exportFile] <String>
    [<CommonParameters>]
```

## Description

Obtain a collection of enclosure hardware resources which have the specified name.

## Examples

###  Example 1 

```text
$enclosures = Get-HPOVEnclosure

```

Return all the enclosure hardware managed by this appliance.

###  Example 2 

```text
$enclosure = Get-HPOVEnclosure -Name "A"

```

Return the enclosure hardware resource with name "A".

###  Example 3 

```text
Get-HPOVEnclosure
Enclosure Name Serial Number Enclosure Model                Rack Name State      EG          Populated Bays
-------------- ------------- ---------------                --------- -----      --          --------------
Encl1          SGH100X6J1    BladeSystem c7000 Enclosure G2 Rack-173  Monitored  Default EG1 16/16
Encl2          SGH102X6J1    BladeSystem c7000 Enclosure G2 Rack-173  Monitored  Default EG1 9/16


```

Display a brief list of the enclosures managed or monitored by the appliance.

###  Example 4 

```text
Get-HPOVEnclosure -Name Encl1 -report
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
Encl1, interconnect 1 HP VC FlexFabric 10Gb/24-Port Module WECFSED100    4.10
Encl1, interconnect 2 HP VC FlexFabric 10Gb/24-Port Module WECFSED101    4.10

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
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* `[HPOneView.Appliance.ScopeCollection]`
	* `[HPOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `AllResourcesInScope` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -exportFile &lt;String&gt;

Aliases [-x, `-export`]
Full path and file name to save the output of `Get-HPOVEnclosure`.

| Aliases | x, export |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Report &lt;SwitchParameter&gt;

Generate report of enclosure, including device bays, interconnect bays, and reported firmware for components.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Object**_

Enclosure Report

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

The matching enclosure hardware resources.

## Related Links

* [Add-HPOVEnclosure](add-hpovenclosure.md)
* [Get-HPOVEnclosureGroup](get-hpovenclosuregroup.md)
* [New-HPOVEnclosureGroup](new-hpovenclosuregroup.md)
* [Remove-HPOVEnclosure](remove-hpovenclosure.md)
* [Remove-HPOVEnclosureGroup](remove-hpovenclosuregroup.md)
* [Reset-HPOVEnclosureDevice](reset-hpovenclosuredevice.md)
* [Set-HPOVEnclosure](set-hpovenclosure.md)
* [Set-HPOVEnclosureActiveFLM](set-hpovenclosureactiveflm.md)
* [Set-HPOVEnclosureGroup](set-hpovenclosuregroup.md)
* [Update-HPOVEnclosure](update-hpovenclosure.md)
