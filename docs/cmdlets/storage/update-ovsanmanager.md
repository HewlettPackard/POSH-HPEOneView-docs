---
description: Refresh SAN Manager and it"s configuration.
---

# Update-OVSanManager

## Syntax

```powershell
Update-OVSanManager
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet is used to refresh a SAN Managers configuration.  You can provide the Name or Object of a single or multiple SAN Managers.

## Examples

###  Example 1 

```powershell
Get-OVSanManager -name bna.contoso.com | Update-OVSanManager | Wait-OVTaskComplete
```

Refreshes the SAN Manager.

###  Example 2 

```powershell
Get-OVSanManager | Update-OVSanManager | Wait-OVTaskComplete
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

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]"
    SAN Manager resource object from Get-OVSanManager
    

=== "System.Collections.ArrayList <HPEOneView.Storage.SanManager>"
    Multiple SAN Manager resource objects from Get-OVSanManager
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async Task to update SAN Manager
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>"
    Single or Multiple Resources
    

## Related Links

* [Add-OVSanManager](add-ovsanmanager.md)
* [Get-OVSanManager](get-ovsanmanager.md)
* [Remove-OVSanManager](remove-ovsanmanager.md)
* [Set-OVSanManager](set-ovsanmanager.md)
