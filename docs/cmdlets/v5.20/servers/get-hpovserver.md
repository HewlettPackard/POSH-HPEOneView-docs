---
description: Retrieve Server Hardware resource(s).
---

# Get-HPOVServer

## Syntax

```text
Get-HPOVServer
    [-Name <String>]
    [-SerialNumber <String>]
    [-ServerName <String>]
    [-Status <String[]>]
    [-NoProfile]
    [-InputObject <Object>]
    [-MaintenanceMode <Boolean>]
    [-Label <String>]
    [-Count <int>]
    [-Scope <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Obtain a collection of server hardware resources, a specific server with the specified name, or server hardware resources without an assigned Server Profile.  Returned resources will display:

    * Device Name
    * Serial Number
    * Model
    * System ROM
    * iLO and its firmware
    * Server Profile
    * Status
    * Licensing

## Examples

###  Example 1 

```text
Get-HPOVServer
Name           Status   Power   Serial Number  Model       ROM            iLO       Server Profile   License
----           ------   -----   -------------  -----       ---            ---       --------------   -------
172.18.6.15    Disabled Off     MXQ1000207     DL360p Gen8 P71 02/10/2014 iLO4 2.03 No Profile       OneViewNoiLO
172.18.6.16    Unknown  Unknown MXQ1000307     DL380p Gen8                          No Profile       OneViewNoiLO
172.18.6.31    Disabled Off     MXQ1000208     DL360 Gen9  P89 07/11/2014 iLO4 2.03 No Profile       OneViewNoiLO
172.18.6.32    Unknown  Unknown MXQ1020307     DL380p Gen8                          No Profile       OneViewNoiLO
Encl1, bay 1   OK       Off     SGH100X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 Server Profile 1 OneView
Encl1, bay 11  OK       Off     SGH100X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 Server Profile 2 OneView
Encl1, bay 12  Disabled Off     SGH101X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 13  Disabled Off     SGH102X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 14  Disabled Off     SGH103X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 15  Disabled Off     SGH104X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 16  Disabled Off     SGH105X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 2   OK       Off     SGH101X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 My Profile       OneView
Encl1, bay 3   OK       Off     SGH100X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 3 OneView
Encl1, bay 4   OK       Off     SGH101X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 4 OneView
Encl1, bay 5   OK       Off     SGH102X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 5 OneView
Encl1, bay 6   Disabled Off     SGH103X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 7   Disabled Off     SGH104X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 8   Disabled Off     SGH105X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 1   Disabled Off     SGH102X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 11  Disabled Off     SGH106X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 12  Disabled Off     SGH107X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 13  Disabled Off     SGH108X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 14  Disabled Off     SGH109X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 15  Disabled Off     SGH110X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 16  Disabled Off     SGH111X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 2   Disabled Off     SGH103X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 3   Disabled Off     SGH106X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 4   Disabled Off     SGH107X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 5   Disabled Off     SGH108X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 6   Disabled Off     SGH109X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 7   Disabled Off     SGH110X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 8   Disabled Off     SGH111X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
```

Return all the server hardware managed by this appliance.

###  Example 2 

```text
$bay1 = Get-HPOVServer -Name "Encl1, bay 1"
```

Return the server hardware resource with name "Encl1, bay 1".

###  Example 3 

```text
Get-HPOVServer -NoProfile
Name           Status   Power   Serial Number  Model       ROM            iLO       Server Profile License
----           ------   -----   -------------  -----       ---            ---       -------------- -------
172.18.6.15    Disabled Off     MXQ1000207     DL360p Gen8 P71 02/10/2014 iLO4 2.03 No Profile     OneViewNoiLO
172.18.6.16    Unknown  Unknown MXQ1000307     DL380p Gen8                          No Profile     OneViewNoiLO
172.18.6.31    Disabled Off     MXQ1000208     DL360 Gen9  P89 07/11/2014 iLO4 2.03 No Profile     OneViewNoiLO
172.18.6.32    Unknown  Unknown MXQ1020307     DL380p Gen8                          No Profile     OneViewNoiLO
Encl1, bay 12  Disabled Off     SGH101X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 13  Disabled Off     SGH102X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 14  Disabled Off     SGH103X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 15  Disabled Off     SGH104X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 16  Disabled Off     SGH105X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 6   Disabled Off     SGH103X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 7   Disabled Off     SGH104X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 8   Disabled Off     SGH105X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 1   Disabled Off     SGH102X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 11  Disabled Off     SGH106X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 12  Disabled Off     SGH107X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 13  Disabled Off     SGH108X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 14  Disabled Off     SGH109X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 15  Disabled Off     SGH110X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 16  Disabled Off     SGH111X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 2   Disabled Off     SGH103X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 3   Disabled Off     SGH106X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 4   Disabled Off     SGH107X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 5   Disabled Off     SGH108X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 6   Disabled Off     SGH109X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 7   Disabled Off     SGH110X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 8   Disabled Off     SGH111X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
```

Display all server hardware resources without an assigned Server Profile.

###  Example 4 

```text
$sht = Get-HPOVServerHardwareType -Name "BL460c Gen9 1"
$AvailableServer = Get-HPOVServer -NoProfile -ServerHardwareType $sht | Select -first 1
```

Return the first available server hardware of the Server Hardware Type requested.

###  Example 5 

```text
$AvailableServer = Get-HPOVServerProfileTemplate -Name "My Template 1" | Get-HPOVServer -NoProfile | Select -first 1
```

Return the first available server hardware designed for the specific Server Profile Template.

###  Example 6 

```text
Get-HPOVServer -Status Warning, Critical
```

Return only servers that are currently reporting Warning or Critical status.

## Parameters

### -Name &lt;String&gt;

The name of the server hardware resource to be returned.  All server hardware resources will be returned if omitted.  Supports * wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServerName &lt;String&gt;

Specify the Server OS Name that is reported by the iLO.

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
    * `[HPOneView.Appliance.ScopeCollection]`
    * `[HPOneView.Appliance.ConnectionPermission]`

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

### -NoProfile &lt;SwitchParameter&gt;

Optional parameter that can be used with the report parameter to display Servers without a Server Profile assigned.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaintenanceMode &lt;Boolean&gt;

Optional parameter that can be used to filter for specific servers that are in maintenance mode or note based on the boolean value provided.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Aliases [-ServerHardwareType, `-ServerProfileTemplate`]
Provide the Server Hardware Type or Server Profile Template Object to filter for available server hardware.

| Aliases | ServerHardwareType, ServerProfileTemplate |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Count &lt;int&gt;

Return no more than the provided value.  Combining other parameters to filter may not return the requested count value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Status &lt;String[]&gt;

Filter resources based on their current status.  Allowed values:

    * Ok
    * Warning
    * Critical
    * Unknown
    * Disabled

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SerialNumber &lt;String&gt;

Specify the server hardware serial number to locate.  This parameter does not support wildcard chatacters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardwareType [System.Management.Automation.PSCustomObject]**_

Server Hardware Type resource object.

_**HPOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]**_

Server Profile Template resource object.

## Return Values

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

Single Server Hardware resource

_**System.Collections.ArrayList**_

Multiple Server Hardware resources

## Related Links

* [Add-HPOVServer](add-hpovserver.md)
* [Convert-HPOVServerProfile](convert-hpovserverprofile.md)
* [Convert-HPOVServerProfileTemplate](convert-hpovserverprofiletemplate.md)
* [ConvertTo-HPOVServerProfileTemplate](convertto-hpovserverprofiletemplate.md)
* [Copy-HPOVServerProfile](copy-hpovserverprofile.md)
* [Disable-HPOVMaintenanceMode](disable-hpovmaintenancemode.md)
* [Enable-HPOVMaintenanceMode](enable-hpovmaintenancemode.md)
* [Get-HPOVServerHardwareType](get-hpovserverhardwaretype.md)
* [Get-HPOVServerProfile](get-hpovserverprofile.md)
* [Get-HPOVServerProfileConnectionList](get-hpovserverprofileconnectionlist.md)
* [Get-HPOVServerProfileMessage](get-hpovserverprofilemessage.md)
* [Get-HPOVServerProfileTemplate](get-hpovserverprofiletemplate.md)
* [Join-HPOVServerProfileToTemplate](join-hpovserverprofiletotemplate.md)
* [New-HPOVServerProfile](new-hpovserverprofile.md)
* [New-HPOVServerProfileAssign](new-hpovserverprofileassign.md)
* [New-HPOVServerProfileAttachVolume](new-hpovserverprofileattachvolume.md)
* [New-HPOVServerProfileConnection](new-hpovserverprofileconnection.md)
* [New-HPOVServerProfileLogicalDisk](new-hpovserverprofilelogicaldisk.md)
* [New-HPOVServerProfileLogicalDiskController](new-hpovserverprofilelogicaldiskcontroller.md)
* [New-HPOVServerProfileTemplate](new-hpovserverprofiletemplate.md)
* [Remove-HPOVServer](remove-hpovserver.md)
* [Remove-HPOVServerProfile](remove-hpovserverprofile.md)
* [Remove-HPOVServerProfileTemplate](remove-hpovserverprofiletemplate.md)
* [Restart-HPOVServer](restart-hpovserver.md)
* [Save-HPOVServerProfile](save-hpovserverprofile.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerHardwareType](set-hpovserverhardwaretype.md)
* [Set-HPOVServerPower](set-hpovserverpower.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)
* [Update-HPOVServer](update-hpovserver.md)
* [Update-HPOVServerHardwareLicenseIntent](update-hpovserverhardwarelicenseintent.md)
* [Update-HPOVServerProfile](update-hpovserverprofile.md)
* [Get-HPOVServerOneTimeBoot](get-hpovserveronetimeboot.md)
* [Set-HPOVServerOneTimeBoot](set-hpovserveronetimeboot.md)
