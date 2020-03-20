---
description: Default content
---

# Get-HPOVDriveEnclosureInventory

## Syntax

```text
Get-HPOVDriveEnclosureInventory
    [-Name] <string>
    [-DriveEnclosure] <Object>
    [-SasLogicalInterconnect] <Object>
    [-Count] <int>
    [-Available]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Get-HPOVDriveEnclosureInventory
    [-Name] <string>
    [-DriveEnclosure] <Object>
    [-SasLogicalInterconnect] <Object>
    [-Assigned]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Default content

## Examples

###  Example 1 

```text
Get-HPOVDriveEnclosureInventory

```

Default example

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Assigned &lt;SwitchParameter&gt;



| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Available &lt;SwitchParameter&gt;



| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Count &lt;int&gt;



| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DriveEnclosure &lt;Object&gt;



| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;string&gt;



| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SasLogicalInterconnect &lt;Object&gt;



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

## Related Links

