---
description: Retrieve Server Hardware resource(s).
---

# Get-HPOVServer

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVServer [[-Name] <String>] [[-ServerName] <String>] [[-Status] <String[]>] [[-NoProfile] <SwitchParameter>] [[-InputObject] <Object>] [[-Label] <String>] [[-Count] <int>] [[-Scope] <Object>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

A server hardware resource represents an instance of a server being managed or monitored by HPE OneView.

For a managed server hardware resource, the configuration can be applied by assigning a server profile to it.

Servers are associated with a server hardware type. A server hardware type captures the details of the relevant physical configuration for server hardware and defines which settings are available to server profiles that are to be assigned to that type of server hardware.

You can add rack servers or server blades in order to inventory and monitor the hardware. This is useful when you have servers that have already been deployed.  Any servers in a Synergy 12000 Frame or HPE BladeSystem are automatically added to the Synergy or HPE OneView management appliance.  If the HPE Synergy frame is not yet part of a logical enclosure, then any newly discovered server will be placed in the monitored state.

Monitoring allows you to monitor power, cooling, hardware health, and utilization. You can power on and off the server, iLO remote console, and review inventory. You will also get email notification, SNMP trap forwarding, and optional 1 year 9x5 support.

The monitoring feature is available for all G6 and later ProLiant servers with iLO 2, iLO 3, iLO 4, or iLO 5. If a server is being monitored by HPE OneView, you can still manage the enclosures, server profiles, and Virtual Connect infrastructure through VCM or VCEM. You cannot manage server profiles for monitored server hardware in HPE OneView.

This Cmdlet will retrieve a collection of server hardware resources, a specific server with the specified name, reported health status, resources associated to a specific server hardware type or server profile template, or server hardware resources without an assigned Server Profile. Returned resources will display:

* Device Name
* Serial Number
* Model
* System ROM
* iLO and its firmware
* Server Profile
* Status
* Licensing

{% hint style="info" %}
Minimum required privileges: Read-only
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
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Count &lt;int&gt; 

Return no more than the provided value. Combining other parameters to filter may not return the requested count value.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Provide the Server Hardware Type or Server Profile Template Object to filter for available server hardware.

| Aliases | ServerHardwareType, ServerProfileTemplate |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Label &lt;String&gt; 

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the server hardware resource to be returned. All server hardware resources will be returned if omitted. Supports \* wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -NoProfile &lt;SwitchParameter&gt; 

Optional parameter that can be used with the report parameter to display Servers without a Server Profile assigned.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ServerName &lt;String&gt; 

Specify the Server OS Name that is reported by the iLO.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Status &lt;String\[\]&gt; 

Filter resources based on their current status. Allowed values:

* Ok
* Warning
* Critical
* Unknown
* Disabled

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardwareType \[System.Management.Automation.PSCustomObject\]**_

Server Hardware Type resource object.

_**HPOneView.ServerProfileTemplate \[System.Management.Automation.PSCustomObject\]**_

Server Profile Template resource object.

### Return Values

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\]**_

Single Server Hardware resource

_**System.Collections.ArrayList**_

Multiple Server Hardware resources

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
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

```text
 -------------------------- EXAMPLE 2 --------------------------
$bay1 = Get-HPOVServer -Name "Encl1, bay 1"
```

 Return the server hardware resource with name "Encl1, bay 1".

```text
 -------------------------- EXAMPLE 3 --------------------------
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

```text
 -------------------------- EXAMPLE 4 --------------------------
$sht = Get-HPOVServerHardwareType -Name "BL460c Gen9 1"
$AvailableServer = Get-HPOVServer -NoProfile -ServerHardwareType $sht | Select -first 1
```

Return the first available server hardware of the Server Hardware Type requested.

```text
 -------------------------- EXAMPLE 5 --------------------------
$AvailableServer = Get-HPOVServerProfileTemplate -Name "My Template 1" | Get-HPOVServer -NoProfile | Select -first 1
```

Return the first available server hardware designed for the specific Server Profile Template.

```text
 -------------------------- EXAMPLE 6 --------------------------
Get-HPOVServer -Status Warning, Critical
```

Return only servers that are currently reporting Warning or Critical status. 

### Related Links

* [Add-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVServer) 
* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile) 
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate) 
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile) 
* [Get-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerHardwareType) 
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile) 
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList) 
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage) 
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate) 
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate) 
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile) 
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign) 
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume) 
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection) 
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk) 
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController) 
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate) 
* [Remove-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServer) 
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile) 
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate) 
* [Restart-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVServer) 
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile) 
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate) 
* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType) 
* [Set-HPOVServerPower](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerPower) 
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile) 
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate) 
* [Update-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServer) 
* [Update-HPOVServerHardwareLicenseIntent](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerHardwareLicenseIntent) 
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile) 
* [Get-HPOVServerOneTimeBoot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerOneTimeBoot) 
* [Set-HPOVServerOneTimeBoot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerOneTimeBoot)

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVServer [[-Name] <String>] [[-ServerName] <String>] [[-Status] <String[]>] [[-NoProfile] <SwitchParameter>] [[-InputObject] <Object>] [[-Label] <String>] [[-Count] <int>] [[-Scope] <Object>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

A server hardware resource represents an instance of a server being managed or monitored by HPE OneView.

For a managed server hardware resource, the configuration can be applied by assigning a server profile to it.

Servers are associated with a server hardware type. A server hardware type captures the details of the relevant physical configuration for server hardware and defines which settings are available to server profiles that are to be assigned to that type of server hardware.

You can add rack servers or server blades in order to inventory and monitor the hardware. This is useful when you have servers that have already been deployed.  Any servers in a Synergy 12000 Frame or HPE BladeSystem are automatically added to the Synergy or HPE OneView management appliance.  If the HPE Synergy frame is not yet part of a logical enclosure, then any newly discovered server will be placed in the monitored state.

Monitoring allows you to monitor power, cooling, hardware health, and utilization. You can power on and off the server, iLO remote console, and review inventory. You will also get email notification, SNMP trap forwarding, and optional 1 year 9x5 support.

The monitoring feature is available for all G6 and later ProLiant servers with iLO 2, iLO 3, iLO 4, or iLO 5. If a server is being monitored by HPE OneView, you can still manage the enclosures, server profiles, and Virtual Connect infrastructure through VCM or VCEM. You cannot manage server profiles for monitored server hardware in HPE OneView.

This Cmdlet will retrieve a collection of server hardware resources, a specific server with the specified name, reported health status, resources associated to a specific server hardware type or server profile template, or server hardware resources without an assigned Server Profile. Returned resources will display:

* Device Name
* Serial Number
* Model
* System ROM
* iLO and its firmware
* Server Profile
* Status
* Licensing

{% hint style="info" %}
Minimum required privileges: Read-only
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
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Count &lt;int&gt; 

Return no more than the provided value. Combining other parameters to filter may not return the requested count value.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Provide the Server Hardware Type or Server Profile Template Object to filter for available server hardware.

| Aliases | ServerHardwareType, ServerProfileTemplate |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Label &lt;String&gt; 

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the server hardware resource to be returned. All server hardware resources will be returned if omitted. Supports \* wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -NoProfile &lt;SwitchParameter&gt; 

Optional parameter that can be used with the report parameter to display Servers without a Server Profile assigned.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ServerName &lt;String&gt; 

Specify the Server OS Name that is reported by the iLO.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Status &lt;String\[\]&gt; 

Filter resources based on their current status. Allowed values:

* Ok
* Warning
* Critical
* Unknown
* Disabled

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardwareType \[System.Management.Automation.PSCustomObject\]**_

Server Hardware Type resource object.

_**HPOneView.ServerProfileTemplate \[System.Management.Automation.PSCustomObject\]**_

Server Profile Template resource object.

### Return Values

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\]**_

Single Server Hardware resource

_**System.Collections.ArrayList**_

Multiple Server Hardware resources

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
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

```text
 -------------------------- EXAMPLE 2 --------------------------
$bay1 = Get-HPOVServer -Name "Encl1, bay 1"
```

 Return the server hardware resource with name "Encl1, bay 1".

```text
 -------------------------- EXAMPLE 3 --------------------------
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

```text
 -------------------------- EXAMPLE 4 --------------------------
$sht = Get-HPOVServerHardwareType -Name "BL460c Gen9 1"
$AvailableServer = Get-HPOVServer -NoProfile -ServerHardwareType $sht | Select -first 1
```

Return the first available server hardware of the Server Hardware Type requested.

```text
 -------------------------- EXAMPLE 5 --------------------------
$AvailableServer = Get-HPOVServerProfileTemplate -Name "My Template 1" | Get-HPOVServer -NoProfile | Select -first 1
```

Return the first available server hardware designed for the specific Server Profile Template.

```text
 -------------------------- EXAMPLE 6 --------------------------
Get-HPOVServer -Status Warning, Critical
```

Return only servers that are currently reporting Warning or Critical status. 

### Related Links

* [Add-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVServer) 
* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile) 
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate) 
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile) 
* [Get-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerHardwareType) 
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile) 
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList) 
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage) 
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate) 
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate) 
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile) 
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign) 
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume) 
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection) 
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk) 
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController) 
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate) 
* [Remove-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServer) 
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile) 
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate) 
* [Restart-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVServer) 
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile) 
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate) 
* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType) 
* [Set-HPOVServerPower](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerPower) 
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile) 
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate) 
* [Update-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServer) 
* [Update-HPOVServerHardwareLicenseIntent](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerHardwareLicenseIntent) 
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile) 
* [Get-HPOVServerOneTimeBoot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerOneTimeBoot) 
* [Set-HPOVServerOneTimeBoot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerOneTimeBoot)

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVServer [[-Name] <String>] [[-ServerName] <String>] [[-Status] <String[]>] [[-NoProfile] <SwitchParameter>] [[-InputObject] <Object>] [[-Label] <String>] [[-Count] <int>] [[-Scope] <Object>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

A server hardware resource represents an instance of a server being managed or monitored by HPE OneView.

For a managed server hardware resource, the configuration can be applied by assigning a server profile to it.

Servers are associated with a server hardware type. A server hardware type captures the details of the relevant physical configuration for server hardware and defines which settings are available to server profiles that are to be assigned to that type of server hardware.

You can add rack servers or server blades in order to inventory and monitor the hardware. This is useful when you have servers that have already been deployed.  Any servers in a Synergy 12000 Frame or HPE BladeSystem are automatically added to the Synergy or HPE OneView management appliance.  If the HPE Synergy frame is not yet part of a logical enclosure, then any newly discovered server will be placed in the monitored state.

Monitoring allows you to monitor power, cooling, hardware health, and utilization. You can power on and off the server, iLO remote console, and review inventory. You will also get email notification, SNMP trap forwarding, and optional 1 year 9x5 support.

The monitoring feature is available for all G6 and later ProLiant servers with iLO 2, iLO 3, iLO 4, or iLO 5. If a server is being monitored by HPE OneView, you can still manage the enclosures, server profiles, and Virtual Connect infrastructure through VCM or VCEM. You cannot manage server profiles for monitored server hardware in HPE OneView.

This Cmdlet will retrieve a collection of server hardware resources, a specific server with the specified name, reported health status, resources associated to a specific server hardware type or server profile template, or server hardware resources without an assigned Server Profile. Returned resources will display:

* Device Name
* Serial Number
* Model
* System ROM
* iLO and its firmware
* Server Profile
* Status
* Licensing

{% hint style="info" %}
Minimum required privileges: Read-only
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
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Count &lt;int&gt; 

Return no more than the provided value. Combining other parameters to filter may not return the requested count value.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Provide the Server Hardware Type or Server Profile Template Object to filter for available server hardware.

| Aliases | ServerHardwareType, ServerProfileTemplate |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Label &lt;String&gt; 

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the server hardware resource to be returned. All server hardware resources will be returned if omitted. Supports \* wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -NoProfile &lt;SwitchParameter&gt; 

Optional parameter that can be used with the report parameter to display Servers without a Server Profile assigned.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ServerName &lt;String&gt; 

Specify the Server OS Name that is reported by the iLO.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Status &lt;String\[\]&gt; 

Filter resources based on their current status. Allowed values:

* Ok
* Warning
* Critical
* Unknown
* Disabled

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardwareType \[System.Management.Automation.PSCustomObject\]**_

Server Hardware Type resource object.

_**HPOneView.ServerProfileTemplate \[System.Management.Automation.PSCustomObject\]**_

Server Profile Template resource object.

### Return Values

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\]**_

Single Server Hardware resource

_**System.Collections.ArrayList**_

Multiple Server Hardware resources

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
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

```text
 -------------------------- EXAMPLE 2 --------------------------
$bay1 = Get-HPOVServer -Name "Encl1, bay 1"
```

 Return the server hardware resource with name "Encl1, bay 1".

```text
 -------------------------- EXAMPLE 3 --------------------------
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

```text
 -------------------------- EXAMPLE 4 --------------------------
$sht = Get-HPOVServerHardwareType -Name "BL460c Gen9 1"
$AvailableServer = Get-HPOVServer -NoProfile -ServerHardwareType $sht | Select -first 1
```

Return the first available server hardware of the Server Hardware Type requested.

```text
 -------------------------- EXAMPLE 5 --------------------------
$AvailableServer = Get-HPOVServerProfileTemplate -Name "My Template 1" | Get-HPOVServer -NoProfile | Select -first 1
```

Return the first available server hardware designed for the specific Server Profile Template.

```text
 -------------------------- EXAMPLE 6 --------------------------
Get-HPOVServer -Status Warning, Critical
```

Return only servers that are currently reporting Warning or Critical status. 

### Related Links

* [Add-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVServer) 
* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile) 
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate) 
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile) 
* [Get-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerHardwareType) 
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile) 
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList) 
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage) 
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate) 
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate) 
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile) 
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign) 
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume) 
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection) 
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk) 
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController) 
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate) 
* [Remove-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServer) 
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile) 
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate) 
* [Restart-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVServer) 
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile) 
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate) 
* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType) 
* [Set-HPOVServerPower](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerPower) 
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile) 
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate) 
* [Update-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServer) 
* [Update-HPOVServerHardwareLicenseIntent](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerHardwareLicenseIntent) 
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile)

