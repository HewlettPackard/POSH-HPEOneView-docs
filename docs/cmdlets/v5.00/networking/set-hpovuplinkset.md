---
description: Update an uplink set resource
---

# Set-HPOVUplinkSet

## Syntax

## Description

Default content

## Examples

###  Example 1 

```text
Set-HPOVUplinkSet
```

Default example

## Parameters

### -AddNetwork &lt;Object[]&gt;

Specify the networks to add to the specified uplink set.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -AddPorts &lt;Object[]&gt;



| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -ConsistencyChecking &lt;string&gt;



| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -EnableTrunking &lt;bool&gt;



| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -InputObject &lt;Object&gt;



| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -LacpTimer &lt;string&gt;



| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -Name &lt;string&gt;



| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -Network &lt;Object&gt;



| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -RemoveNetwork &lt;Object[]&gt;



| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -RemovePorts &lt;Object[]&gt;



| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -UntaggedNetwork &lt;Object&gt;



| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

## Return Values

## Related Links

* [Get-HPOVUplinkSet](get-hpovuplinkset.md)
* [New-HPOVUplinkSet](new-hpovuplinkset.md)
