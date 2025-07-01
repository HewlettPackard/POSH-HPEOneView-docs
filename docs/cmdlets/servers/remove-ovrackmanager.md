---
description: Remove rack manager from appliance.
---

# Remove-OVRackManager

## Syntax

```powershell
Remove-OVRackManager
    [-InputObject] <HPEOneView.Servers.RackManager>
    [-ApplianceConnection <Array>]
    [-Force]
    [<CommonParameters>]
```

## Description

A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack. This Cmdlet will remove a claimed rack manager resource from the appliance. Minimum required privileges: Infrastructure administrator or Server administrator. 

## Examples

###  Example 1 

```powershell
Get-OVRackManager -Name rackmanager2.domain.com -ErrorAction Stop | Remove-OVRackManager
```

Remove the provided rack manager resource from the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

### -InputObject &lt;HPEOneView.Servers.RackManager&gt;

An `[HPEOneView.Servers.RackManager]` resource from Get-OVRackManager.

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

=== "HPEOneView.Servers.RackManager"
    An HPEOneView.Servers.RackManager resource from Get-OVRackManager.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for configuring port monitoring on the requested logical intercinnect.
    

## Related Links

* [Add-OVRackManager](add-ovrackmanager.md)
* [Get-OVRackManager](get-ovrackmanager.md)
* [Update-OVRackManager](update-ovrackmanager.md)
