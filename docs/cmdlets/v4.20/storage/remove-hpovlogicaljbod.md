---
description: Create a new HPE Synergy Logical JBOD resource.
---

# Remove-HPOVLogicalJBOD

## Syntax

```text
Remove-HPOVLogicalJBOD
    [-InputObject] <HPOneView.Storage.LogicalJBOD[]>
    [-Force]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A logical JBOD is a group of physical drives that are dynamically defined as virtual drives. Logical JBOD uses the drives from the drive enclosures that are installed in the device bays of the enclosure and are associated with a SAS logical interconnect. You can assign or unassign a logical JBOD to a server hardware through the server profile.

If the logical drive settings in the server profile indicate that the data in the logical JBOD is to be retained when you delete the server profile, then the data is retained and you can assign this logical JBOD to a different server profile.

Using this Cmdlet will remove an existing logical JBOD on the connected appliance.  You can delete a logical JBOD only after you unassign it from the server profile. If you have chosen to erase the drive data when you delete a logical JBOD, all the drive data will be erased.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, server administrator, server profile architect, server profile administrator
{% endhint %}

## Examples

###  Example 1 

```text
$LogicalJBOD = Get-HPOVLogicalJBOD -Name MyLJbod1
Remove-HPOVLogicalJBOD -InputObject $LogicalJBOD
```

Remove the specified logical JBOD.

###  Example 2 

```text
# Get the logical JBOD we intend to remove
$LogicalJBOD = Get-HPOVLogicalJBOD -Name MyLJbod1

# Get the associated server profile associated with the logical JBOD
$ServerProfile = Get-HPOVServerProfile -Name $LogicalJBOD.UsedBy

# Remove the logical JBOD from the profile
$ServerProfile.localStorage.sasLogicalJBODs = $ServerProfile.localStorage.sasLogicalJBODs | ? sasLogicalJBODUri -ne $ljbods[0].uri

# Save the server profile
Save-HPOVServerProfile -InputObject $ServerProfile

# Remove the logical JBOD resource
Remove-HPOVLogicalJBOD -InputObject $LogicalJBOD
```

Remove the specified logical JBOD when it is associated with a server profile resource.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Force delete the resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HPOneView.Storage.LogicalJBOD[]&gt;

The logical JBOD resource from `Get-HPOVLogialJBOD` Cmdlet.  If the logical JBOD is associated with a server profile, it must first be unassociated from the server profile, then you can remove it.  If the erase on delete option is enabled (or set to true), then data will be deleted from the drive.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Storage.LogicalJBOD[]**_

One or more logical JBOD resources from [`Get-HPOVLogicalJBOD`](get-hpovlogicaljbod.md).

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asynchronous task resource to monitor.

## Related Links

* [Get-HPOVDriveEnclosure](get-hpovdriveenclosure.md)
* [Get-HPOVDriveEnclosureInventory](get-hpovdriveenclosureinventory.md)
* [Get-HPOVLogicalJBOD](get-hpovlogicaljbod.md)
* [New-HPOVLogicalJBOD](new-hpovlogicaljbod.md)
* [Set-HPOVLogicalJBOD](set-hpovlogicaljbod.md)
