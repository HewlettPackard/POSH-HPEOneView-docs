---
description: Delete network from appliance configuration.
---

# Remove-OVNetwork

## Syntax

```powershell
Remove-OVNetwork
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Force]
    [<CommonParameters>]
```

## Description

Delete a network and its corresponding default connection type.

## Examples

###  Example 1 

```powershell
$task = Remove-OVNetwork -network "yellow"
Wait-OVTaskComplete $task
```

Remove the network specifed by name.  Wait for remove to complete.

###  Example 2 

```powershell
$Net = Get-OVNetwork -name "yellow"
Remove-OVNetwork -network $net -confirm:$false
```

Remove the network specifed by $net, and do not prompt for confirmation.

###  Example 3 

```powershell
Get-OVNetwork | Remove-OVNetwork
```

Search for all networks and remove them from appliance.

## Parameters

### -InputObject &lt;Object&gt;

The network object(s) or name(s) to be deleted.

| Aliases | uri, name, network, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
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

### -Force &lt;SwitchParameter&gt;

Forcefully remove the network object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
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

=== "System.String"
    Network Name or URI
    

=== "System.Management.Automation.PSCustomObject"
    Network Resource Object
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async Removal task
    

## Related Links

* [Get-OVNetwork](get-ovnetwork.md)
* [Get-OVNetworkSet](get-ovnetworkset.md)
* [New-OVNetwork](new-ovnetwork.md)
* [New-OVNetworkSet](new-ovnetworkset.md)
* [Remove-OVNetworkSet](remove-ovnetworkset.md)
* [Set-OVNetwork](set-ovnetwork.md)
* [Set-OVNetworkSet](set-ovnetworkset.md)
