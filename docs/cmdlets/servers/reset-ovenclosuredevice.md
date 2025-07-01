---
description: Power reset or EFuse HPE Synergy Frame component.
---

# Reset-OVEnclosureDevice

## Syntax

```powershell
Reset-OVEnclosureDevice
    [-InputObject] <Object>
    [-Component] <String>
    [-DeviceID] <Int32>
    [-Efuse]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Reset-OVEnclosureDevice
    [-InputObject] <Object>
    [-Component] <String>
    [-DeviceID] <Int32>
    [-Reset]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will assist server administrators in performing various power operations with HPE Synergy enclosure resources.  The following resources are supported with their supported operation:

* HPE Synergy Appliance Bay - EFuse
* HPE Synergy Frame Link Module - EFuse or Reset
* Device Bay - EFuse or Reset
* HPE Synergy Fabric Module Device - EFuse

E-Fuse stands for Electronic Fuse. Setting the power state of a device to "E-Fuse" (or "Reset" for an Enclosure Manager) will reset the bay, but it will soon return to a normal running state.  An E-Fuse will turn off power to the bay and then turn it back on. If the bay was powered off before the E-Fuse operation it will be powered on afterwards. A "Reset" will do a hard reset of the bay without affecting the power. E-Fuse on a device bay will power-cycle the whole blade including the iLO. 

A reset on the active Synergy Frame Link Module causes a failover to the standby Synergy Frame Link Module. The reset will fail if the Synergy Frame Link Module's firmware is being updated. An E-Fuse against an active Synergy Frame Link Module is not allowed.

???+ info
    Minimum required privileges: Infrastructure administrator, Server administrator

## Examples

###  Example 1 

```powershell
$Enclosure = Get-OVEnclosure -Name Enclosure1 -ErrorAction Stop
Reset-OVEnclosureDevice -Enclosure $Enclosure -Component FLM -DeviceID 1 -EFuse
```

Reset the FLM in slot 1 by performing an EFuse.

###  Example 2 

```powershell
$Enclosure = Get-OVEnclosure -Name Enclosure1 -ErrorAction Stop
Reset-OVEnclosureDevice -Enclosure $Enclosure -Component ICM -DeviceID 3 -EFuse
```

Reset the ICM in interconnect bay 3 by performing an EFuse.

###  Example 3 

```powershell
$Task = Get-OVEnclosure -Name Enclosure1 -ErrorAction Stop | Reset-OVEnclosureDevice -Component Device -DeviceID 4 -Reset
```

Reset the device in bay 4 by requesting it to reset itself.

###  Example 4 

```powershell
$Task = Get-OVEnclosure -Name Enclosure1 -ErrorAction Stop | Reset-OVEnclosureDevice -Component Appliance -DeviceID 1 -EFuse
```

Reset the appliance device in bay 1 by performing an EFuse.

## Parameters

### -InputObject &lt;Object&gt;

The Synergy Frame resource from Get-OVEnclosure.

| Aliases | Enclosure |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Component &lt;String&gt;

The embedded component to perform the action against.  Allowed value:

* FLM - Frame Link Module.  Both EFuse and Reset are supported.
* Appliance - Management Appliance; Synergy Compser or Synergy Image Streamer.  Only supported method is EFuse.
* ICM - Synergy Fabric Interconnect Module.  Only supported method is EFuse.
* Device - Synergy Device (e.g. Compute Node populated in Bay 1). Both EFuse and Reset are supported.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DeviceID &lt;Int32&gt;

The corrisponding bay ID.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Reset &lt;SwitchParameter&gt;

Reset power to the device.  Only supported with certain component types.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Efuse &lt;SwitchParameter&gt;

EFuse will take away and then present power back to the device.  Supported with all component types.

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

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

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

=== "HPEOneView.Enclosure"
    Resource from Get-OVEnclosure.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task resource to monitor
    

## Related Links

* [Get-OVEnclosure](get-ovenclosure.md)
* [Start-OVEnclosureAppliance](start-ovenclosureappliance.md)
