---
description: Get Unmanaged Devices.
---

# Get-HPOVUnmanagedDevice

## Syntax

```text
Get-HPOVUnmanagedDevice
    [-Name] <String>
    [-List]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

HPE OneView provides administrators with the capability to define unmanaged devices to them place within Racks, in order to provide a more realistic and complete data center layout.  This cmdlet will retrieve all or a specified Unmanaged Device.  A report switch is provided to display the output in an easier to read format.

## Examples

###  Example 1 

```text
Get-HPOVUnmanagedDevice

```

Get all unmanaged devices.

## Parameters

### -Name &lt;String&gt;

The name of the Unmanaged Device.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -List &lt;SwitchParameter&gt;

Deprecated parameter.  CMDLET now defaults to `Format-Table` output.

| Aliases | report |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
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

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

Single Unmanaged Device resource object

_**System.Collections.ArrayList**_

Multiple Unmanaged Device resource objects

## Related Links

* [New-HPOVUnmanagedDevice](new-hpovunmanageddevice.md)
* [Remove-HPOVUnmanagedDevice](remove-hpovunmanageddevice.md)
