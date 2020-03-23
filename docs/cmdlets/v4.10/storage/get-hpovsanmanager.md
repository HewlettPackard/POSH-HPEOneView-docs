---
description: Retrieve SAN Manager resource(s).
---

# Get-HPOVSanManager

## Syntax

```text
Get-HPOVSanManager
    [<CommonParameters>]
```

## Description

This cmdlet will return the configured SAN Manager(s).

## Examples

###  Example 1 

```text
Get-HPOVSanManager
Name            Status State   Type                    Version  Managed SANs
----            ------ -----   ----                    -------  ------------
bna1.domain.com OK     Managed Brocade Network Advisor 12.3.4.5 {Fabric_A, Fabric_B}
bna2.domain.com OK     Managed Brocade Network Advisor 12.3.4.5 {Fabric_C, Fabric_D}

```

Display all SAN Managers.

## Parameters

### -Name &lt;String&gt;

Aliases [-SanManager]
Provide the name of the SAN Manager to display.

| Aliases | SanManager |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

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

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

Single SAN Manager resource


_**System.Collections.ArrayList <HPOneView.Storage.SanManager>**_

Multiple SAN Manager resources


## Related Links

* [Add-HPOVSanManager](add-hpovsanmanager.md)
* [Remove-HPOVSanManager](remove-hpovsanmanager.md)
* [Set-HPOVSanManager](set-hpovsanmanager.md)
* [Update-HPOVSanManager](update-hpovsanmanager.md)
