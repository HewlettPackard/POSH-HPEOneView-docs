---
description: Return a collection of available D3940 disks.
---

# Get-HPOVAvailableDriveType

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVAvailableDriveType [-InputObject] <Object> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This helper Cmdlet will return a collection of available disk drives from a specified SAS Logical Interconnect or Drive Enclosure. The returned value will contain available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.  The object can then be used to define the drive selection criteria for New-HPOVServerProfileLogicalDisk using the `-AvailableDriveType` parameter.

{% hint style="info" %}
Minimum required permissions: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

The name of the appliance or list of appliances to execute the command against.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

A SAS Logical Interconnect or D3940 Drive Enclosure resource. If providing a SAS Logical Interconnect, the Cmdlet will automatically locate the available drive enclosures.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Storage.SASLogicalInterconnect**_

A SAS Logical Interconnect resource from Get-HPOVSasLogicalInterconnect Cmdlet.

_**HPOneView.Storage.DiskEnclosure**_

A D3940 Drive Enclosure from Get-HPOVSasLogicalInterconnect Cmdlet.

### Return Values

_**HPOneView.Storage.AvailableDriveType**_

A disk type object that defines available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVSasLogicalInterconnect | Get-HPOVAvailableDriveType
```

Return all available disk drives from all SAS Logical Interconnects.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType
```

Return all available disk drives from the specific SAS Logical Interconnect.

```text
 -------------------------- EXAMPLE 3 --------------------------
Get-HPOVDriveEnclosure -Name "EnclosureName, Bay 1" -ErrorAction Stop | Get-HPOVAvailableDriveType
```

Return all available disk drives from the specific D3940 Drive Enclosure. 

### Related Links 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVAvailableDriveType [-InputObject] <Object> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This helper Cmdlet will return a collection of available disk drives from a specified SAS Logical Interconnect or Drive Enclosure. The returned value will contain available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.  The object can then be used to define the drive selection criteria for New-HPOVServerProfileLogicalDisk using the `-AvailableDriveType` parameter.

{% hint style="info" %}
Minimum required permissions: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

The name of the appliance or list of appliances to execute the command against.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

A SAS Logical Interconnect or D3940 Drive Enclosure resource. If providing a SAS Logical Interconnect, the Cmdlet will automatically locate the available drive enclosures.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Storage.SASLogicalInterconnect**_

A SAS Logical Interconnect resource from Get-HPOVSasLogicalInterconnect Cmdlet.

_**HPOneView.Storage.DiskEnclosure**_

A D3940 Drive Enclosure from Get-HPOVSasLogicalInterconnect Cmdlet.

### Return Values

_**HPOneView.Storage.AvailableDriveType**_

A disk type object that defines available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVSasLogicalInterconnect | Get-HPOVAvailableDriveType
```

Return all available disk drives from all SAS Logical Interconnects.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType
```

Return all available disk drives from the specific SAS Logical Interconnect.

```text
 -------------------------- EXAMPLE 3 --------------------------
Get-HPOVDriveEnclosure -Name "EnclosureName, Bay 1" -ErrorAction Stop | Get-HPOVAvailableDriveType
```

Return all available disk drives from the specific D3940 Drive Enclosure. 

### Related Links 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVAvailableDriveType [-InputObject] <Object> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This helper Cmdlet will return a collection of available disk drives from a specified SAS Logical Interconnect or Drive Enclosure. The returned value will contain available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.  The object can then be used to define the drive selection criteria for New-HPOVServerProfileLogicalDisk using the `-AvailableDriveType` parameter.

{% hint style="info" %}
Minimum required permissions: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

The name of the appliance or list of appliances to execute the command against.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

A SAS Logical Interconnect or D3940 Drive Enclosure resource. If providing a SAS Logical Interconnect, the Cmdlet will automatically locate the available drive enclosures.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Storage.SASLogicalInterconnect**_

A SAS Logical Interconnect resource from Get-HPOVSasLogicalInterconnect Cmdlet.

_**HPOneView.Storage.DiskEnclosure**_

A D3940 Drive Enclosure from Get-HPOVSasLogicalInterconnect Cmdlet.

### Return Values

_**HPOneView.Storage.AvailableDriveType**_

A disk type object that defines available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVSasLogicalInterconnect | Get-HPOVAvailableDriveType
```

Return all available disk drives from all SAS Logical Interconnects.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType
```

Return all available disk drives from the specific SAS Logical Interconnect.

```text
 -------------------------- EXAMPLE 3 --------------------------
Get-HPOVDriveEnclosure -Name "EnclosureName, Bay 1" -ErrorAction Stop | Get-HPOVAvailableDriveType
```

Return all available disk drives from the specific D3940 Drive Enclosure. 

### Related Links 



