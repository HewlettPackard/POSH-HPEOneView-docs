---
description: Generate report of HPE OneView Remote Support service events.
---

# Get-OVServiceAlert

## Syntax

```powershell
Get-OVServiceAlert
    [-InputObject <Object>]
    [-State <String>]
    [-Count <Int>]
    [-TimeSpan <TimeSpan>]
    [-Start <DateTime>]
    [-End <DateTime>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView automatically checks if your hardware has a valid entitlement to Hewlett Packard Enterprise support. A valid entitlement is a Hewlett Packard Enterprise warranty or an active contract. If a valid entitlement to support is found, HPE OneView Remote Support opens a support case for a hardware failure. This Cmdlet allows administrators to display and/or export service events logged by the HPE OneView appliance.

## Examples

###  Example 1 

```powershell
Get-OVServiceAlert
```

Get all Service Alerts from the connected appliance.

###  Example 2 

```powershell
Get-OVServiceAlert -Count 10 
```

Get the first 10 Service Alerts from the connected appliance.

###  Example 3 

```powershell
$TimeSpan = New-TimeSpan -Days 30
Get-OVServiceAlert -Count 10 -TimeSpan $TimeSpan
```

Get the first 10 Service Alerts within the last 30 days from the connected appliance.

###  Example 4 

```powershell
Get-OVServiceAlert -Start ([DateTime]"2018-01-05") -End ([DateTime]"2018-01-30")
```

Get the Service Alerts within the specified date range from the connected appliance.

###  Example 5 

```powershell
Get-OVServer -Name "Encl1, Bay 1" -ErrorAction Stop | Get-OVServiceAlert -Start ([DateTime]"2018-01-05") -End ([DateTime]"2018-01-30")
```

Get the Service Alerts within the specified date range for the specified server hardware resource from the connected appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Count &lt;Int&gt;

Specify the number of service alerts to return.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -End &lt;DateTime&gt;

DateTime object of the end date and time accompanied with the `-Start` parameter.  If omitted, the current time of the PC is used.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Use to filter for the supported hardware resource object.  Enclosures, Server Hardware and Server Profile objects are supported.  If an Enclosure resource is provided, only the Enclosure service events are queried.  Associated Server Hardare within the enclosure is not.  If providing a Server Profile object, it must be assigned to a supported hardware platform.  If the Server Profile has moved between hardware resources, only the currently assigned server hardware resource object will be used to query for service events.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Start &lt;DateTime&gt;

DateTime object of the start date and time to being query.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -State &lt;String&gt;

Specify the state of the Service Alert.  The state is not correlated to the associated Alert.

* Closed - The state of Service event when the service call is closed.
* Error - The Service request has some error None This is a default state.
* Open - The state of Service event when the service call is open.
* Pending - The state of Service event when the service call is pending.
* Received - The state of Service event when the service call is received.
* Submitted - The state of Service event when the service call is submitted.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TimeSpan &lt;TimeSpan&gt;

Specify a TimeSpan object in number of days.  Cannot be combined with `-Start` and `-End` parameters.

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

_**HPEOneView.ServerHardware**_

A Server Hardware resource object from Get-OVServer.

_**HPEOneView.ServerProfile**_

A Server Profile resource object from Get-OVServerProfile.  If the Server Profile is not associated with a server hardware resource, an excpetion is thrown.  If the Server Profile has moved from one server hardware resource to another, only the currently assigned server hardware resource will be queried.

_**HPEOneView.Enclosure**_

An Enclosure resource object from Get-OVEnclosure.

## Return Values

_**HPEOneView.Appliance.ServiceAlert**_

The Service Alert object that contains the CaseID, associated resource name, URI and serial number, and description of the service event.

## Related Links

