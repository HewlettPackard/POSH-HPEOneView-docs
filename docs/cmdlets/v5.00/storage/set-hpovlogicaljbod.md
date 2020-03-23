---
description: Modify a logical JBOD resource.
---

# Set-HPOVLogicalJBOD

## Syntax

```text
Set-HPOVLogicalJBOD
    [-InputObject] <HPOneView.Storage.LogicalJBOD[]>
    [-DisableEraseData]
    [-ClearMetadata]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A logical JBOD is a group of physical drives that are dynamically defined as virtual drives. Logical JBOD uses the drives from the drive enclosures that are installed in the device bays of the enclosure and are associated with a SAS logical interconnect. You can assign or unassign a logical JBOD to a server hardware through the server profile.

This Cmdlet will allow you to change the erase on delete option to False if the logical JBOD was created with the feature enabled (true).  Data can also be erased on the logial drive by clearing the metadata.  The number of assigned drives or type cannot be modified once the logical JBOD has been created.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator,
{% endhint %}
 server administrator, server profile architect, server profile administrator
## Examples

###  Example 1 

```text
Set-HPOVLogicalJBOD -InputObject $MyLogicalJBOD -DisableEraseData
```

Disable erase data on delete policy for the specific logical JBOD.  This cannot be undone or reverted back.

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

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ClearMetadata &lt;SwitchParameter&gt;

Clear metadata on the associated drives, effectively wiping the data on the drive.  This is not a secure erase, and data recovery could be possible.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisableEraseData &lt;SwitchParameter&gt;

Can only be used if the logical JBOD was created with EraseDataOnDelete parameter was used in the call to `New-HPOVLogicalJBOD`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HPOneView.Storage.LogicalJBOD[]&gt;

The logical JBOD resource from `Get-HPOVLogicalJBOD`.

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

_**HPOneView.Storage.LogicalJBOD**_

A logical JBOD resource from [`Get-HPOVLogicalJBOD`](get-hpovlogicaljbod.md).

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asynchronous task resource to monitor.

## Related Links

* [Get-HPOVDriveEnclosure](get-hpovdriveenclosure.md)
* [Get-HPOVDriveEnclosureInventory](get-hpovdriveenclosureinventory.md)
* [Get-HPOVLogicalJBOD](get-hpovlogicaljbod.md)
* [New-HPOVLogicalJBOD](new-hpovlogicaljbod.md)
* [Remove-HPOVLogicalJBOD](remove-hpovlogicaljbod.md)
