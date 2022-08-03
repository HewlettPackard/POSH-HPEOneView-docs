---
description: Remove power device (iPDU)
---

# Remove-OVPowerDevice

## Syntax

```powershell
Remove-OVPowerDevice
    [-InputObject] <Object>
    [-Force]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Removes a power device (iPDU) from appliance management.

## Examples

###  Example 1 

```powershell
$task = Remove-OVPowerDevice -PowerDevice "iPDU16" | Wait-OVTaskComplete
```

Remove the power device specifed by name. Wait for remove to complete.

###  Example 2 

```powershell
$ipdu = Get-OVPowerDevice -name "iPDU24"
Remove-OVPowerDevice -PowerDevice $ipdu -force -confirm:$false
```

Force-Remove the profile specifed by $ipdu. Disable confirmation prompt.

###  Example 3 

```powershell
Get-OVPowerDevice | Remove-OVPowerDevice
```

Search for all power devices and remove them from appliance.

## Parameters

### -InputObject &lt;Object&gt;

The Power Device object(s), name(s) or uri(s) to be removed from management.

| Aliases | uri, name, PowerDevice |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Set to $true to force-remove the power device.  Force-removing will succeed even when there are connectivity issues or resource errors.

When the request is accepted by the appliance, it does not return an Async Task Resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
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

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
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

_**HPEOneView.PowerDeliveryDevice [System.Management.Automation.PSCustomObject]**_

Power Device (iPDU) Resource Object

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async remove task

_**System.Management.Automation.PSCustomObject**_

When using the `-Force` parameter, a PSCustomObject is returned indicating successful removal of the resource

## Related Links

* [Add-OVPowerDevice](add-ovpowerdevice.md)
* [Add-OVPowerDeviceConnection](add-ovpowerdeviceconnection.md)
* [Get-OVPowerDevice](get-ovpowerdevice.md)
* [New-OVPowerDevice](new-ovpowerdevice.md)
