---
description: Remove an Unmanaged Device.
---

# Remove-HPOVUnmanagedDevice

## Syntax

```text
Remove-HPOVUnmanagedDevice
    [-UnmanagedDevice] <>
    [-force <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

Use this Cmdlet to remove an Unmanaged Device from the appliance.

## Examples

###  Example 1 

```text
Remove-HPOVUnmanagedDevice MyDevice
```

Remove the Unmanaged Device "MyDevice" from the appliance.

###  Example 2 

```text
Remove-HPOVUnmanagedDevice MyDevice -confirm:$false
```

Remove the Unmanaged Device "MyDevice" from the appliance and do not prompt for confirmation.

###  Example 3 

```text
Get-HPOVUnmanagedDevice | Remove-HPOVUnmanagedDevice
```

Get all Unmanaged Devices on the appliance and remove them.

## Parameters

### -UnmanagedDevice &lt;&gt;

Alias [-name, `-uri`]

The Name, URI or Object of the Unmanaged Device to remove.

| Aliases | uri, name |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -force &lt;&gt;

Set to `force-remove` the resource.

When the request is accepted by the appliance, it does not return an Async Task Resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -WhatIf &lt;&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

Unmanaged Device resource object

## Return Values

_**System.Management.Automation.PSCustomObject**_

When using the `-Force` parameter, a PSCustomObject is returned indicating successful removal of the resource

## Related Links

* [Get-HPOVUnmanagedDevice](get-hpovunmanageddevice.md)
* [New-HPOVUnmanagedDevice](new-hpovunmanageddevice.md)
