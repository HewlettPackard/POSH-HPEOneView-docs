---
description: Install Logical Interconnect Firmware.
---

# Install-HPOVLogicalInterconnectFirmware

## Syntax

```text
Install-HPOVLogicalInterconnectFirmware
    [-LogicalInterconnect] <Object>
    [-Baseline] <Object>
    [-Method] <String>
    [-EthernetActivateOrder] <String>
    [-EthernetActivateDelay] <Int32>
    [-FCActivateOrder] <String>
    [-FCActivateDelay] <Int32>
    [-Async]
    [-Force]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Use this cmdlet to install/update the Logical Interconnect \(i.e. Virtual Connect\) firmware. You can provide the Logical Interconnect Name, URI or Object and must specify a valid SPP Baseline present on the appliance.

This cmdlet will default to performing an Update \(Stage + Activate\), which will cause an outage. If you wish to avoid an outage, first stage the update usind -method stage, then -method activate. Interconnect activation can be controlled with the -ActivateOrder parameter, which defaults to Odd interconnects. Once the specified interconnect activation is complete, you must then call the cmdlet again with the alternate ActivateOrder value \(i.e. even.\)

## Examples

### Example 1

```text
$li = Get-HPOVLogicalInterconnect Encl1-LI
$spp = Get-HPOVSppFile "HP Service Pack for ProLiant" 
$task = Install-HPOVLogicalInterconnectFirmware Stage $li $spp 
Wait-HPOVTaskComplete $task
$task = Install-HPOVLogicalInterconnectFirmware Activate $li 
Wait-HPOVTaskComplete $task
```

Perform a firmware update of the `Encl1-LI` Logical Interconnect by first staging the firmware. Then Acitate the firmware using the default OddEven Interconnect Bay order.

### Example 2

```text
Get-HPOVLogicalInterconnect Encl1-LI  | Install-HPOVLogicalInterconnectFirmware -method Update -baseline "HP Service Pack for ProLiant" -confirm:$false | Wait-HPOVTaskComplete
```

Perform a firmware update of the `Encl1-LI` Logical Interconnect, do not prompt for confirmation, then wait for the task to complete.

## Parameters

### -LogicalInterconnect &lt;Object&gt;

The Logical Interconnect object\(s\), name\(s\) or uris\(s\) to be updated.

| Aliases | name, uri, li |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -Method &lt;String&gt;

Upgrade method to perform. Accepted values are:

* UPDATE \(Default\)
* STAGE
* ACTIVATE

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `Update` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EthernetActivateOrder &lt;String&gt;

Specify the Ethernet module firmware activation order. Accepted values are:

* OddEven \(Default\)
* Parallel
* Serial

| Aliases | Order, ActivateOrder |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `OddEven` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EthernetActivateDelay &lt;Int32&gt;

The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `5` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FCActivateOrder &lt;String&gt;

Specify the Fibre Channel module firmware activation order. Accepted values are:

* OddEven
* Parallel
* Serial \(Default\)

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `Serial` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FCActivateDelay &lt;Int32&gt;

The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `5` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Baseline &lt;Object&gt;

Firmware Baseline Name, URI or Object.

| Aliases | spp |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Force the firmware update if the update version matches what is already installed.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

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

_**HPOneView.Networking.LogicalInterconnect \[System.Management.Automation.PSCustomObject\]**_

Logical Interconnect Resource Object

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Returns an async task resource to monitor.

## Related Links

