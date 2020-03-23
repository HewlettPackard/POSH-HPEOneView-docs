---
description: Generate firmware report
---

# Show-HPOVFirmwareReport

## Syntax

```text
Show-HPOVFirmwareReport
    [-InputObject] <Object>
    [-Baseline] <Object>
    [-Location] <String>
    [-ApplianceConnection] <Object>
    [-Export]
    [<CommonParameters>]
```

## Description

Generate firmware report

## Examples

###  Example 1 

```text
Get-HPOVEnclosureGroup "Production EG" | Show-HPOVFirmwareReport
```

Display a firmware report of all associated enclosures to "Production EG" Enclosure Group currently managed by the appliance.

###  Example 2 

```text
$Baseline = Get-HPOVBaseline -SppName "Production EG"
Get-HPOVEnclosureGroup "Production EG" | Show-HPOVFirmwareReport -Baseline $Baseline
```

Display a firmware report of the "Production EG" resource, and components (servers, interconnects and Onboard Administrators) currently managed by the appliance, and compare to the provided Baseline.

## Parameters

### -InputObject &lt;Object&gt;

The managed resource object to generate the report for.  Allowed resource object types are:

    * EG (Enclosure Group)
    * Enclosure
    * Server
    * Interconnect

By specifying an Enclosure Group, all associated Enclosures will be included in the report.

| Aliases | Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Baseline &lt;Object&gt;

Resource Object or Name of the Firmware Baseline to report against what is installed.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Export &lt;SwitchParameter&gt;

Indicate to export the report to a CSV file.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Location &lt;String&gt;

File system location where to save the exported report to.

Default: Current Working Directory

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(get-location).Path` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

_**HPOneView.EnclosureGroup or HPOneView.Enclosure or HPOneView.ServerHardware or HPOneView.Networking.Interconnect**_

HPE OneView Managed Resource object

## Return Values

_**System.Object**_

Firmware report

## Related Links

