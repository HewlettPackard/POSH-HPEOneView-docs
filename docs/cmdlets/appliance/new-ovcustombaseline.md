---
description: Create Custom Baseline from Hotfixes and Source Baseline.
---

# New-OVCustomBaseline

## Syntax

```powershell
New-OVCustomBaseline
    [-SourceBaseline] <Object>
    [-Hotfixes] <Array>
    [-BaselineName] <String>
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

## Description

HPE ProLiant Hotfixes are released out of the main SPP release cycle.  Administrators can use HPSUM external to HPE OneView to create a custom baseline, but then need to upload to the appliance.  Hotfixes can be directly uploaded to an HPE OneView 2.0 Appliance, with the ability to create a Custom Baseline by using a source Baseline (which must exist in the Baseline Repository) and specified Hotfix(s).

## Examples

###  Example 1 

```powershell
cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe | % { Add-OVBaseline $_ }
Get-OVBaseline -BaselineName "MyBaseline" | New-OVCustomBaseline -Hotfixes cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe -BaselineName "MyNewBaseline_20160222"
```

Upload hotfixes to appliance, then create a new custom baseline from the "MyBaseline" baseline.

## Parameters

### -SourceBaseline &lt;Object&gt;

An existing Baseline within the HPE OneView Baseline Repository.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Hotfixes &lt;Array&gt;

Array of Hotfix filenames, or Component name.  
    
Example: @(cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe)

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BaselineName &lt;String&gt;

The final custom Baseline name.

Example: custom_SPPGen9Snap3_2015_0327_82

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

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Scope &lt;HPEOneView.Appliance.ScopeCollection[]&gt;

Provide an `[HPEOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-OVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]"
    Source HPE OneView Baseline from Get-OVBaseline
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task object to monitor.
    

## Related Links

* [Restore-OVCustomBaseline](restore-ovcustombaseline.md)
