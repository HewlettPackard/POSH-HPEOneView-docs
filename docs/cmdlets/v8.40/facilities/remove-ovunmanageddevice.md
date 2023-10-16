---
description: Remove an Unmanaged Device.
---

# Remove-OVUnmanagedDevice

## Syntax

```powershell
Remove-OVUnmanagedDevice
    [-UnmanagedDevice] <Object>
    [-Force]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Use this Cmdlet to remove an Unmanaged Device from the appliance.

## Examples

###  Example 1 

```powershell
Remove-OVUnmanagedDevice MyDevice
```

Remove the Unmanaged Device "MyDevice" from the appliance.

###  Example 2 

```powershell
Remove-OVUnmanagedDevice MyDevice -confirm:$false
```

Remove the Unmanaged Device "MyDevice" from the appliance and do not prompt for confirmation.

###  Example 3 

```powershell
Get-OVUnmanagedDevice | Remove-OVUnmanagedDevice
```

Get all Unmanaged Devices on the appliance and remove them.

## Parameters

### -UnmanagedDevice &lt;Object&gt;

Alias [-name, `-uri`]

The Name, URI or Object of the Unmanaged Device to remove.

| Aliases | uri, name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Set to force-remove the resource.

When the request is accepted by the appliance, it does not return an Async Task Resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



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

_**HPEOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

Unmanaged Device resource object

## Return Values

_**System.Management.Automation.PSCustomObject**_

When using the `-Force` parameter, a PSCustomObject is returned indicating successful removal of the resource

## Related Links

* [Get-OVUnmanagedDevice](get-ovunmanageddevice.md)
* [New-OVUnmanagedDevice](new-ovunmanageddevice.md)
