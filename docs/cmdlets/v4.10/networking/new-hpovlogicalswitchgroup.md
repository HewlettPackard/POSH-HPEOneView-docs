---
description: Create a new Logical Switch Group resource.
---

# New-HPOVLogicalSwitchGroup

## Syntax

```text
New-HPOVLogicalSwitchGroup
    [-Name] <String>
    [-SwitchType]
    [-NumberOfSwitches <Int>]
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

## Description

The logical switch group is a template for creating logical switches. Logical switches are an aggregation of up to two physical top-of-rack switches.
 Once constructed from a logical switch group, a logical switch continues to be associated with its logical switch group. Any change in consistency between the logical switch group and its associated logical switches is monitored and made visible on the associated logical switch screen in HPE OneView.
 This Cmdlet will help create a Logical Switch Group resources.  Only the following switch model family"s are supported:
 * Cisco Nexus 5000
 * Cisco Nexus 5500
 * Cisco Nexus 5600
 * Cisco Nexus 6000
 Please refer to either Get-HPOVSwitchType values, or the HPE OneView Support Matrix for which specific models are supported.
 Minimum required privileges: Infrastructure administrator or Network administrator 

## Examples

###  Example 1 

```text
Get-HPOVSwitchType -Name "Cisco Nexus 56xx" | New-HPOVLogicalSwitchGroup -Name "My Logical Switch Group Policy 1" -NumberOfSwitches 2
```

Create a Logical Switch Group fro the "Cisco Nexus 5600" series, specifying 2 expected switches.

## Parameters

### -Name &lt;String&gt;

The Logical Switch Group resource Name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -SwitchType &lt;SwitchParameter&gt;

The Switch Type resource from Get-HPOVSwitchType.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -NumberOfSwitches &lt;Int&gt;

The maximum number of switches supported in the Logical Switch Group.  Only 1 or 2 are allowed.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 1 |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Networking.SwitchType [System.Management.Automation.PSCustomObject]**_

Switch Type resource from Get-HPOVSwitchType.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The async task resource object to monitor (if `-Async` was used) or results.

_**System.Collections.ArrayList <HPOneView.Appliance.TaskResource>**_

Collection of remove Logical Switch async task resources.

## Related Links

* [Get-HPOVLogicalSwitchGroup](get-hpovlogicalswitchgroup.md)
* [Remove-HPOVLogicalSwitchGroup](remove-hpovlogicalswitchgroup.md)
