---
description: Modify a logical JBOD resource.
---

# Set-OVLogicalJBOD

## Syntax

```powershell
Set-OVLogicalJBOD
    [-InputObject] <HPEOneView.Storage.LogicalJBOD[]>
    [-DisableEraseData]
    [-ClearMetadata]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A logical JBOD is a group of physical drives that are dynamically defined as virtual drives. Logical JBOD uses the drives from the drive enclosures that are installed in the device bays of the enclosure and are associated with a SAS logical interconnect. You can assign or unassign a logical JBOD to a server hardware through the server profile.

This Cmdlet will allow you to change the erase on delete option to False if the logical JBOD was created with the feature enabled (true).  Data can also be erased on the logial drive by clearing the metadata.  The number of assigned drives or type cannot be modified once the logical JBOD has been created.

???+ info
    Minimum required privileges: Infrastructure administrator, server administrator, server profile architect, server profile administrator

## Examples

###  Example 1 

```powershell
Set-OVLogicalJBOD -InputObject $MyLogicalJBOD -DisableEraseData
```

Disable erase data on delete policy for the specific logical JBOD.  This cannot be undone or reverted back.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

Can only be used if the logical JBOD was created with EraseDataOnDelete parameter was used in the call to New-OVLogicalJBOD.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HPEOneView.Storage.LogicalJBOD[]&gt;

The logical JBOD resource from Get-OVLogicalJBOD.

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

=== "HPEOneView.Storage.LogicalJBOD"
    A logical JBOD resource from Get-OVLogicalJBOD.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task resource to monitor.
    

## Related Links

* [Get-OVDriveEnclosure](get-ovdriveenclosure.md)
* [Get-OVDriveEnclosureInventory](get-ovdriveenclosureinventory.md)
* [Get-OVLogicalJBOD](get-ovlogicaljbod.md)
* [New-OVLogicalJBOD](new-ovlogicaljbod.md)
* [Remove-OVLogicalJBOD](remove-ovlogicaljbod.md)
