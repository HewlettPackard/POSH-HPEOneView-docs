---
description: Power reset Enclosure component.
---

# Set-OVEnclosureActiveFLM

## Syntax

```powershell
Set-OVEnclosureActiveFLM
    [-Enclosure] <Object>
    [-BayID] <Int32>
    [-Force]
    [<CommonParameters>]
```

## Description

Obtain a collection of enclosure hardware resources which have the specified name.

## Examples

###  Example 1 

```powershell
EXAMPLE1
```

Return all the enclosure hardware managed by this appliance.

###  Example 2 

```powershell
Example2
```

Return the enclosure hardware resource with name "A".

###  Example 3 

```powershell
EXAMPLE3
```

Display a brief list of the enclosures managed or monitored by the appliance.

## Parameters

### -Enclosure &lt;Object&gt;

The Synergy Frame resource from Get-OVEnclosure.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -BayID &lt;Int32&gt;

BAYID

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

FORCE

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Object**_

Enclosure Report

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task resource to monitor

## Related Links

