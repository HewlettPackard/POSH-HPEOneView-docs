---
description: REmove installed licenses on the appliance.
---

# Remove-HPOVLicense

## Syntax

```text
Remove-HPOVLicense
    [-InputObject] <HPOneView.Appliance.License>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will remove licenses installed on the appliance. Removing installed licenses is only support via Windows PowerShell, Python or the HPE OneView REST API. However, if a license key is currently assigned to a resource, the license key cannot be removed.

## Examples

### Example 1

```text
$LicenseKeys = Get-HPOVlicense
Remove-HPOVLicense -InputObject $LicenseKeys[0]
```

Get all installed licenses saving them to $LicenseKeys, then calling `Remove-HPOVLicense` to remove the first key in the variable.

### Example 2

```text
Get-HPOVlicense | Remove-HPOVLicense
```

Get all installed licenses and remove them.

## Parameters

### -InputObject &lt;HPOneView.Appliance.License&gt;

Aliases \[-uri, `-name`, `-License`\]

Provide the License URI or object to remove.

| Aliases | uri, name, license, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases \[-Appliance\]

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

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

_**HPOneView.Appliance.License**_

HPE OneView License object

## Return Values

_**System.Management.Automation.PSCustomObject**_

Success message

_**System.Management.Automation.ErrorRecord**_

Error message of in-use license key

## Related Links

* [Get-HPOVLicense](get-hpovlicense.md)
* [New-HPOVLicense](new-hpovlicense.md)

