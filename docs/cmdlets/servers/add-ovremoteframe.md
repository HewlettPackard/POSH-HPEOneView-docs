---
description: Add remote HPE Synergy Frame to Composer.
---

# Add-OVRemoteFrame

## Syntax

```powershell
Add-OVRemoteFrame
    [-Hostname] <String>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A Synergy frame is automatically added during hardware setup. If the Synergy frame is connected to a group of linked Synergy frames, each Synergy frame in the group is discovered as part of hardware setup.  Additional Synergy frames added after initial hardware setup are discovered automatically when a cable is connected from the LINK port on the frame link module of an already discovered frame to the LINK port on the frame link module of another frame with factory settings.

Remote frame link topologies, which include remote HPE Synergy Frames, do not include Synergy Composers. Management LAN connectivity enables remote frame link topologies to be managed by the Synergy Composers in the primary frame link topology. You can use the Add remote enclosures option to bring remote frame link topologies under management. The remote frame link topology must be in the same VLAN as the primary frame link topology, due to IPv6 Link Local restrictions.  You can use this Cmdlet to add remote enclosures to manage enclosures for which LINK cabling is not directly connected to the primary frame link topology. This allows HPE OneView to manage enclosures that are spread across racks and rows in the datacenter.

???+ info
    Minimum required privileges: Infrastructure administrator or Hardware setup.

## Examples

###  Example 1 

```powershell
Add-OVRemoteFrame -Hostname fe80::c8f:fbcb:aa8a:97c8
```

Add the specified remote HPE Synergy Frame.

## Parameters

### -Hostname &lt;String&gt;

The IPv6 Link Local address of the remote frame.  This can be viewed from the Frame Link Module (FLM) console using a crash cart.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for monitoring.
    

## Related Links

* [Get-OVEnclosure](get-ovenclosure.md)
