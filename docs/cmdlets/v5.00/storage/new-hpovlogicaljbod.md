---
description: Create a new HPE Synergy Logical JBOD resource.
---

# New-HPOVLogicalJBOD

## Syntax

```text
New-HPOVLogicalJBOD
    [-Name] <string>
    [-InputObject] <Object>
    [-DriveType] <string>
    [-Description <string>]
    [-NumberofDrives] <int>
    [-MinDriveSize] <int>
    [-MaxDriveSize] <int>
    [-EraseDataOnDelete <bool>]
    [-Scope <Object>]
    [<CommonParameters>]
```

```text
New-HPOVLogicalJBOD
    [-Name] <string>
    [-Description <string>]
    [-Drives] <HPOneView.Storage.Drive[]>
    [-EraseDataOnDelete <bool>]
    [-Scope <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
New-HPOVLogicalJBOD
    [-Name] <string>
    [-InputObject] <Object>
    [-AvailableDriveType <HPOneView.Storage.AvailableDriveType>]
    [-Description <string>]
    [-NumberofDrives] <int>
    [-EraseDataOnDelete <bool>]
    [-Scope <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
New-HPOVLogicalJBOD
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A logical JBOD is a group of physical drives that are dynamically defined as virtual drives. Logical JBOD uses the drives from the drive enclosures that are installed in the device bays of the enclosure and are associated with a SAS logical interconnect. You can assign or unassign a logical JBOD to a server hardware through the server profile.

If the logical drive settings in the server profile indicate that the data in the logical JBOD is to be retained when you delete the server profile, then the data is retained and you can assign this logical JBOD to a different server profile.

Using this Cmdlet will create a new logical JBOD on the connected appliance.

Considerations when configuring logical JBODs: 

* You can configure the available scopes to allow or restrict access to the drive enclosures.
* You can assign a logical JBOD to only one server profile.
* You can choose the drive enclosures that belong to the same SAS logical interconnect to create the logical JBOD.
* You can create a logical JBOD using homogenous drives like SAS SSD, SAS HDD, SATA SSD, or SATA HDD. You cannot mix different types of drives in a logical JBOD.
* You cannot add or remove drives to a logical JBOD after it is created.
* You can choose to either erase or retain the drive data when you delete the logical JBOD by setting using the -EraseDataOnDelete parameter during the creation of a logical JBOD. You can change the Erase on delete settings later, using the Set-HPOVLogicalJBOD Cmdlet, only if you set -EraseDataOnDelete to True during creation.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator,
{% endhint %}
 server administrator, server profile architect, server profile administrator

* A logical interconnect group is created with the interconnect type Synergy 12 GB SAS Connection Module.
* An enclosure group is created with the above created logical interconnect group set as the Logical interconnect group.
* A logical enclosure is created. A SAS logical interconnect is created as part of creating the logical enclosure.
* If scopes have been defined, make sure that sufficient number of drive enclosures are mapped to the user scopes.
## Examples

###  Example 1 

```text
$CreatedLogicalJbod = New-HPOVLogicalJbod -Name "MyLogicalJBOD1" `
                                          -InputObject (Get-HPOVSasLogicalInterconnect -Name "LE1-SAS Synergy LIG-1" -ErrorAction Stop) `
                                          -DriveType "SAS" `
                                          -MinDriveSize 600 `
                                          -NumberOfDrives 5 `
                                          -EraseDataOnDelete $True | Wait-HPOVTaskComplete
```

Create a new logical JBOD specifying a SAS logical interconnect, requesting a specific drive media type, minimum size and number of drives.

###  Example 2 

```text
$CreatedLogicalJbod = New-HPOVLogicalJbod -Name "MyLogicalJBOD1" `
                                          -InputObject (Get-HPOVDriveEnclosure -Name "Frame1, bay 1" -ErrorAction Stop) `
                                          -DriveType "SAS" `
                                          -MinDriveSize 600 `
                                          -NumberOfDrives 5 `
                                          -EraseDataOnDelete $True | Wait-HPOVTaskComplete
```

Create a new logical JBOD specifying a SAS drive enclosure, requesting a specific drive media type, minimum size and number of drives.

###  Example 3 

```text
$Drives = Get-HPOVDriveEnclosureInventory -Available `
                                          -SasLogicalInterconnect (Get-HPOVSasLogicalInterconnect -Name "LE1-SAS Synergy LIG-1" -ErrorAction Stop) | ? Capacity -eq 1200
$CreatedLogicalJbod = New-HPOVLogicalJbod -Name "MyLogicalJBOD2" `
                                          -Drives $Drives `
                                          -EraseDataOnDelete $True | Wait-HPOVTaskComplete
```

Create a new logical JBOD with specific drive bays from a SAS logical interconnect.

###  Example 4 

```text
$Drives = Get-HPOVDriveEnclosureInventory -Available `
                                          -DriveEnclosure (Get-HPOVDriveEnclosure -Name "Frame1, bay 1" -ErrorAction Stop) | ? Capacity -eq 1200
$CreatedLogicalJbod = New-HPOVLogicalJbod -Name "MyLogicalJBOD2" `
                                          -Drives $Drives `
                                          -EraseDataOnDelete $True | Wait-HPOVTaskComplete
```

Create a new logical JBOD with specific drive bays from a specific drive enclosure.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -AvailableDriveType &lt;HPOneView.Storage.AvailableDriveType&gt;

When attempting to create a logical JBOD, specify the availabe drive type from `Get-HPOVAvailableDriveType`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Description &lt;string&gt;

Provide a description for the resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DriveType &lt;string&gt;

When attempting to create a logical JBOD, specify the interface type for drives that will be used to build the logical drive. Supported values depend on the local storage capabilities of the selected server hardware type.  Allowed value:

    * SAS
    * SATA
    * SASSSD
    * SATASSD
    * Auto
    
{% hint style="info" %}
Auto is not supported when attempting to create an HPE Synergy D3940 Logical or JBOD disk.  You must specify a disk technology type with `-DriveType` or `-AvailableDriveType` is used.
{% endhint %}


| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Drives &lt;HPOneView.Storage.Drive[]&gt;

Provide the specific drives to assign to the logical JBOD.  Use the `Get-HPOVDriveEnclosureInventory` Cmdlet to identify the drives you wish to allocate to the new logical JBOD resource.  Drives can be allocated from different HPE Synergy drive enclosures, but must reside within the same SAS Logical Interconnect.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EraseDataOnDelete &lt;bool&gt;

If set to True, and drives support erase on delete option, the drive enclosure will erase the data on the drives.  This operation will take time, as the drive will not be added back into the available pool until the erase operation finishes.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

When attempting to create a logical JBOD, and not specifying the exact drives, you must provide either a SAS Logical Interconnect or HPE Synergy Frame resource.

| Aliases | SasLogicalInterconnect, Enclosure, Frame |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaxDriveSize &lt;int&gt;

When attempting to create a logical JBOD, you can specify the min and max drive size for the system to locate drive availability.  Specify the maximum disk size in GB.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MinDriveSize &lt;int&gt;

When attempting to create a logical JBOD, you can specify the min and max drive size for the system to locate drive availability.  Specify the minimum disk size in GB.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;string&gt;

Provide a globally unique name for the logical JBOD resource.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NumberofDrives &lt;int&gt;

When attempting to create a logical JBOD, you can specify the min and max drive size for the system to locate drive availability.  Specify the number of drives the system should allocate.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the `Add-HPOVResourceToScope` Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `AllResourcesInScope` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Storage.AvailableDriveType**_

The available drive type from [`Get-HPOVAvailableDriveType`](get-hpovavailabledrivetype.md)

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asynchronous task resource to monitor.

## Related Links

* [Get-HPOVDriveEnclosure](get-hpovdriveenclosure.md)
* [Get-HPOVDriveEnclosureInventory](get-hpovdriveenclosureinventory.md)
* [Get-HPOVLogicalJBOD](get-hpovlogicaljbod.md)
* [Remove-HPOVLogicalJBOD](remove-hpovlogicaljbod.md)
* [Set-HPOVLogicalJBOD](set-hpovlogicaljbod.md)
