---
description: Delete network from appliance configuration.
---

# Remove-HPOVNetwork

## Syntax

```text
Remove-HPOVNetwork
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Force]
    [<CommonParameters>]
```

## Description

Delete a network and its corresponding default connection type.

## Examples

### Example 1

```text
$task = Remove-HPOVNetwork -network "yellow"
Wait-HPOVTaskComplete $task
```

Remove the network specifed by name. Wait for remove to complete.

### Example 2

```text
$Net = Get-HPOVNetwork -name "yellow"
Remove-HPOVNetwork -network $net -confirm:$false
```

Remove the network specifed by $net, and do not prompt for confirmation.

### Example 3

```text
Get-HPOVNetwork | Remove-HPOVNetwork
```

Search for all networks and remove them from appliance.

## Parameters

### -InputObject &lt;Object&gt;

Aliases \[-name, `-Network`\]

The network object\(s\) or name\(s\) to be deleted.

| Aliases | uri, name, network, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases \[-Appliance\]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### -Force &lt;SwitchParameter&gt;

Forcefully remove the network object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
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

_**System.String**_

Network Name or URI

_**System.Management.Automation.PSCustomObject**_

Network Resource Object

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async Removal task

## Related Links

* [Get-HPOVNetwork](get-hpovnetwork.md)
* [Get-HPOVNetworkSet](get-hpovnetworkset.md)
* [New-HPOVNetwork](new-hpovnetwork.md)
* [New-HPOVNetworkSet](new-hpovnetworkset.md)
* [Remove-HPOVNetworkSet](remove-hpovnetworkset.md)
* [Set-HPOVNetwork](set-hpovnetwork.md)
* [Set-HPOVNetworkSet](set-hpovnetworkset.md)

