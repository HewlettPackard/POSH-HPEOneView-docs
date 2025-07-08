---
description: Retrieve Storage Volume Template (SVT) resource(s).
---

# Get-OVStorageVolumeTemplate

## Syntax

```powershell
Get-OVStorageVolumeTemplate
    [-Name <String>]
    [-Label <String>]
    [-Scope <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Retrieve configured Storage Volume Template(s) from the appliance.

## Examples

###  Example 1 

```powershell
Get-OVStorageVolumeTemplate
```

Get all available Storage Volume Templates.

###  Example 2 

```powershell
Get-OVStorageVolumeTemplate -templateName R5SVT-1
```

Get the "R5SVT-1" template.

## Parameters

### -Name &lt;String&gt;

The Storage Volume Template name.

| Aliases | TemplateName |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | ${Global:ConnectedSessions} |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

* AllResources
* AllResourcesInScope
* `[HPEOneView.Appliance.ScopeCollection]`
* `[HPEOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Storage.VolumeTemplate [System.Management.Automation.PSCustomObject]"
    Single Storage Volume Template
    

=== "System.COllections.ArrayList <HPEOneView.Storage.VolumeTemplate>"
    Multiple Storage Volume Template
    

=== "The matching Storage Volume Template resource(s)."
    
    

## Related Links

* [Get-OVStorageVolumeTemplatePolicy](get-ovstoragevolumetemplatepolicy.md)
* [New-OVStorageVolumeTemplate](new-ovstoragevolumetemplate.md)
* [Remove-OVStorageVolumeTemplate](remove-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplate](set-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplatePolicy](set-ovstoragevolumetemplatepolicy.md)
