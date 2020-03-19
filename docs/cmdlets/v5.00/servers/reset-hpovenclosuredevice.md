---
description: Power reset or EFuse HPS Synergy Frame component.
---

# Reset-HPOVEnclosureDevice

## Syntax

```text
Reset-HPOVEnclosureDevice
    [-Enclosure] <Object>
    [-Component] <String>
    [-DeviceID] <Int32>
    [-Efuse]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
Reset-HPOVEnclosureDevice
    [-Enclosure] <Object>
    [-Component] <String>
    [-DeviceID] <Int32>
    [-Reset]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will assist Server Administrators in performing various power operations with enclosure resources.  The following resources are supported with their supported operation:

	* HPE Synergy Appliance Bay - EFuse
	* HPE Synergy Frame Link Module - EFuse or Resetn	* Device Bay - EFuse or Resetn	* HPE Synergy Fabric Module Device - EFuse

## Examples

###  Example 1 

```text
$Enclosure = Get-HPOVEnclosure -Name Enclosure1 -ErrorAction Stop
Reset-HPOVEnclosureDevice -Enclosure $Enclosure -Component FLM -DeviceID 1 -EFuse
```

Reset the FLM in slot 1 by performing an EFuse.

###  Example 2 

```text
$Task = Get-HPOVEnclosure -Name Enclosure1 -ErrorAction Stop | Reset-HPOVEnclosureDevice -Component Device -DeviceID 4 -Reset
```

Reset the device in bay 4 by requesting it to reset itself.

## Parameters

### -Enclosure &lt;Object&gt;

The Synergy Frame resource from `Get-HPOVEnclosure`.

| Aliases | None |
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

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
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

_**HPOneView.Enclosure**_

Resource from [`Get-HPOVEnclosure`](get-hpovenclosure.md).

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asynchronous task resource to monitor

## Related Links

