﻿---
description: Default content
---

# Show-HPOVHypervisorCluster

## Syntax

```text
Show-HPOVHypervisorCluster
    [<CommonParameters>]
```

## Description

Default content

## Examples

###  Example 1 

```text
Show-HPOVHypervisorCluster

```

Default example

## Parameters

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;string&gt;



| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

## Return Values

_**HPOneView.Cluster.ClusterProfile**_

HPE OneView Cluster Profile containined cluster node members.


## Related Links

