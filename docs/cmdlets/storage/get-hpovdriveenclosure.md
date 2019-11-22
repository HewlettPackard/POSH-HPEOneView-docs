---
description: List Synergy DAS Enclosures.
---

# Get-HPOVDriveEnclosure

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVDriveEnclosure [[-Name] <String>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Drive enclosures are hardware devices that contain a set of drive bays. A drive enclosure is installed in a device bay of an enclosure, and provides composable storage to servers. Composable storage is a group of physical drives that you can dynamically define as virtual drives. These virtual drives are called logical JBODs. A JBOD \(just a bunch of disks\) is a group of physical disk drives that are assigned to server hardware. Unlike a RAID configuration, a JBOD is a not redundant configuration. You can specify a RAID configuration when you create a logical JBOD.

Logical JBODs are created and assigned to server hardware from server profiles or server profile templates.

This Cmdlet will help display the available Synergy DAS Enclosures, and their associated inventory data.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the Synergy DAS enclosure. Omit to return all devices.

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

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Storage.DriveEnclosure \[System.Management.Automation.PSCustomObject\]**_

DAS enclosure resource object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVDriveEnclosure

Appliance Name              State Status    Serial Number Drive Bays I/O Adapters
--------- ----              ----- ------    ------------- ---------- ------------
appliance 0000A66101, bay 1 On    Monitored SN123100      40/40      2
appliance 0000A66102, bay 1 On    Monitored SN123101      40/40      2
appliance 0000A66103, bay 1 On    Monitored SN123102      40/40      2

```

Get all available Synergy Drive Enclosures. 

### Related Links 

* [Get-HPOVAvailableDriveType](get-hpovavailabledrivetype.md)
* Get-HPOVDriveEnclosureInventory
* Get-HPOVEnclosure
* Get-HPOVLogicalJBOD

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVDriveEnclosure [[-Name] <String>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Drive enclosures are hardware devices that contain a set of drive bays. A drive enclosure is installed in a device bay of an enclosure, and provides composable storage to servers. Composable storage is a group of physical drives that you can dynamically define as virtual drives. These virtual drives are called logical JBODs. A JBOD \(just a bunch of disks\) is a group of physical disk drives that are assigned to server hardware. Unlike a RAID configuration, a JBOD is a not redundant configuration. You can specify a RAID configuration when you create a logical JBOD.

Logical JBODs are created and assigned to server hardware from server profiles or server profile templates.

This Cmdlet will help display the available Synergy DAS Enclosures, and their associated inventory data.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the Synergy DAS enclosure. Omit to return all devices.

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

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Storage.DriveEnclosure \[System.Management.Automation.PSCustomObject\]**_

DAS enclosure resource object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVDriveEnclosure

Appliance Name              State Status    Serial Number Drive Bays I/O Adapters
--------- ----              ----- ------    ------------- ---------- ------------
appliance 0000A66101, bay 1 On    Monitored SN123100      40/40      2
appliance 0000A66102, bay 1 On    Monitored SN123101      40/40      2
appliance 0000A66103, bay 1 On    Monitored SN123102      40/40      2

```

Get all available Synergy Drive Enclosures. 

### Related Links 

* [Get-HPOVAvailableDriveType](get-hpovavailabledrivetype.md)
* Get-HPOVEnclosure

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVDriveEnclosure [[-Name] <String>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Drive enclosures are hardware devices that contain a set of drive bays. A drive enclosure is installed in a device bay of an enclosure, and provides composable storage to servers. Composable storage is a group of physical drives that you can dynamically define as virtual drives. These virtual drives are called logical JBODs. A JBOD \(just a bunch of disks\) is a group of physical disk drives that are assigned to server hardware. Unlike a RAID configuration, a JBOD is a not redundant configuration. You can specify a RAID configuration when you create a logical JBOD.

Logical JBODs are created and assigned to server hardware from server profiles or server profile templates.

This Cmdlet will help display the available Synergy DAS Enclosures, and their associated inventory data.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the Synergy DAS enclosure. Omit to return all devices.

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

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Storage.DriveEnclosure \[System.Management.Automation.PSCustomObject\]**_

DAS enclosure resource object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVDriveEnclosure

Appliance Name              State Status    Serial Number Drive Bays I/O Adapters
--------- ----              ----- ------    ------------- ---------- ------------
appliance 0000A66101, bay 1 On    Monitored SN123100      40/40      2
appliance 0000A66102, bay 1 On    Monitored SN123101      40/40      2
appliance 0000A66103, bay 1 On    Monitored SN123102      40/40      2

```

Get all available Synergy Drive Enclosures. 

### Related Links 

* [Get-HPOVAvailableDriveType](get-hpovavailabledrivetype.md)
* Get-HPOVEnclosure

