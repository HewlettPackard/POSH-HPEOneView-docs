---
description: Get the current SSH console access state.
---

# Get-HPOVApplianceSshAccess

## Syntax

```text
Get-HPOVApplianceSshAccess
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can configure the appliance to allow or deny remote access to the HPE OneView appliance using SSH. This Cmdlet will return the current SSH console access state on the appliance.

Privileges: Infrastructure administrator

## Examples

### Example 1

```text
Get-HPOVApplianceSshAccess
```

Get the current state of the appliance SSH console.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Aliases \[-Appliance\]

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.SshAccess**_

The configured state of the appliance SSH console.

## Related Links

* [Disable-HPOVApplianceSshAccess](disable-hpovappliancesshaccess.md)
* [Enable-HPOVApplianceSshAccess](enable-hpovappliancesshaccess.md)

