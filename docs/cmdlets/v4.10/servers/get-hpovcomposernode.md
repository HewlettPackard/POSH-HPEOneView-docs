---
description: Retrieve Synergy Composer node information.
---

# Get-HPOVComposerNode

## Syntax

```text
Get-HPOVComposerNode
    [<CommonParameters>]
```

## Description

Obtain a collection of Synergy Composer node resources.  This includes status, state, model, firmware version, and role.

## Examples

###  Example 1 

```text
Get-HPOVComposerNode
Appliance                              Name                       State Status Model            Version         Role
---------                              ----                       ----- ------ -----            -------         ----
zpo-s18r18s3-ov.vse.rdlabs.hpecorp.net CN75160607 appliance bay 1 OK    OK     Synergy Composer 3.00.00-0251673 Active
zpo-s18r18s3-ov.vse.rdlabs.hpecorp.net CN75140CPW appliance bay 1 OK    OK     Synergy Composer 3.00.00-0251673 Standby


```

Return all Synergy Composer nodes

## Parameters

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.ComposerNode [System.Management.Automation.PSCustomObject]**_

Single Synergy Compose node.

_**System.Collections.ArrayList <HPOneView.ComposerNode>**_

Multiple Synergy Compose nodes.

## Related Links

