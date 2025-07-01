---
description: REmove installed licenses on the appliance.
---

# Remove-OVLicense

## Syntax

```powershell
Remove-OVLicense
    [-InputObject] <HPEOneView.Appliance.License>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will remove licenses installed on the appliance.  Removing installed licenses is only support via Windows PowerShell, Python or the HPE OneView REST API.  However, if a license key is currently assigned to a resource, the license key cannot be removed.

## Examples

###  Example 1 

```powershell
$LicenseKeys = Get-OVlicense
Remove-OVLicense -InputObject $LicenseKeys[0]
```

Get all installed licenses saving them to $LicenseKeys, then calling Remove-OVLicense to remove the first key in the variable.

###  Example 2 

```powershell
Get-OVlicense | Remove-OVLicense
```

Get all installed licenses and remove them.

## Parameters

### -InputObject &lt;HPEOneView.Appliance.License&gt;

Provide the License URI or object to remove.

| Aliases | uri, name, license, Resource |
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

=== "HPEOneView.Appliance.License"
    HPE OneView License object
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    Success message
    

=== "System.Management.Automation.ErrorRecord"
    Error message of in use license key
    

## Related Links

* [Get-OVLicense](get-ovlicense.md)
* [New-OVLicense](new-ovlicense.md)
