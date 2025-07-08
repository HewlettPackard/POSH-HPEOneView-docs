---
description: Retrieve Synergy Composer node information.
---

# Get-OVComposerNode

## Syntax

```powershell
Get-OVComposerNode
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The Composer is an appliance that runs HPE OneView and manages the group of Synergy frames cabled together. You select the initial, active Composer during hardware setup by connecting the Synergy monitor port to a frame link module in the same bay number as the Composer you want to configure. A second Composer is automatically selected to create a high-availability (HA) cluster for managing the Synergy frame in a standby role. If the active Composer fails, the standby Composer automatically becomes the active Composer.

This Cmdlet will report the installed and configured Synergy Composer nodes. This includes status, state, model, firmware version, and role.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVComposerNode

Appliance                              Name                       State Status Model            Version         Role
---------                              ----                       ----- ------ -----            -------         ----
zpo-s18r18s3-ov.vse.rdlabs.hpecorp.net CN75160607 appliance bay 1 OK    OK     Synergy Composer 3.00.00-0251673 Active
zpo-s18r18s3-ov.vse.rdlabs.hpecorp.net CN75140CPW appliance bay 1 OK    OK     Synergy Composer 3.00.00-0251673 Standby
```

Return all Synergy Composer nodes

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
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

=== "HPEOneView.ComposerNode [System.Management.Automation.PSCustomObject]"
    Synergy Compose node.
    

## Related Links

* [Get-OVEnclosure](get-ovenclosure.md)
* [Reset-OVEnclosureDevice](reset-ovenclosuredevice.md)
