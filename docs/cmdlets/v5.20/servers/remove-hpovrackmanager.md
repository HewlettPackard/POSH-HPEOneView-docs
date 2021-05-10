---
description: Remove rack manager from appliance.
---

# Remove-HPOVRackManager

## Syntax

```text
Remove-HPOVRackManager
    [-InputObject] <HPOneView.Servers.RackManager>
    [-ApplianceConnection <Array>]
    [-Force]
    [<CommonParameters>]
```

## Description

A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack. This Cmdlet will remove a claimed rack manager resource from the appliance. Minimum required privileges: Infrastructure administrator or Server administrator. 

## Examples

###  Example 1 

```text
Get-HPOVRackManager -Name rackmanager2.domain.com -ErrorAction Stop | Remove-HPOVRackManager
```

Remove the provided rack manager resource from the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Force remove resource, in cases where the device manager has been re-addressed and is no longer accessible, or there are other communication issues preventing the resource removal.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HPOneView.Servers.RackManager&gt;

An `[HPOneView.Servers.RackManager]` resource from Get-HPOVRackManager.

| Aliases | uri, name, Server |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Servers.RackManager**_

An HPOneView.Servers.RackManager resource from Get-HPOVRackManager.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

## Related Links

* [Add-HPOVRackManager](add-hpovrackmanager.md)
* [Get-HPOVRackManager](get-hpovrackmanager.md)
* [Update-HPOVRackManager](update-hpovrackmanager.md)
