---
description: Refresh SAN Manager and it"s configuration.
---

# Update-HPOVSanManager

## Syntax

```text
Update-HPOVSanManager
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This cmdlet is used to refresh a SAN Managers configuration.  You can provide the Name or Object of a single or multiple SAN Managers.

## Examples

###  Example 1 

```text
Get-HPOVSanManager -name bna.contoso.com | Update-HPOVSanManager | Wait-HPOVTaskComplete

```

Refreshes the SAN Manager.

###  Example 2 

```text
Get-HPOVSanManager | Update-HPOVSanManager | Wait-HPOVTaskComplete

```

Refreshes all SAN Managers on the appliance.

## Parameters

### -InputObject &lt;Object&gt;

Managed SAN Object to update.

| Aliases | Name, SANManager |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

SAN Manager resource object from [`Get-HPOVSanManager`](get-hpovsanmanager.md)

_**System.Collections.ArrayList <HPOneView.Storage.SanManager>**_

Multiple SAN Manager resource objects from [`Get-HPOVSanManager`](get-hpovsanmanager.md)

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async Task to update SAN Manager

_**System.Collections.ArrayList <HPOneView.Appliance.TaskResource>**_

Single or Multiple Resources

## Related Links

* [Add-HPOVSanManager](add-hpovsanmanager.md)
* [Get-HPOVSanManager](get-hpovsanmanager.md)
* [Remove-HPOVSanManager](remove-hpovsanmanager.md)
* [Set-HPOVSanManager](set-hpovsanmanager.md)
