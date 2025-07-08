---
description: Generate firmware report
---

# Show-OVFirmwareReport

## Syntax

```powershell
Show-OVFirmwareReport
    [-InputObject] <Object>
    [-Baseline <Object>]
    [-InstallationPolicy <string>]
    [-Location <String>]
    [-ApplianceConnection <Object>]
    [-Export]
    [<CommonParameters>]
```

## Description

This Cmdlet will generate a CSV-compliance firmware report for various resources.  Enclosure Groups, Enclosures, Server Hardware and Interconnects are all suported resources.  If an Enclosure Group is provided, all associated Logical Enclosures and Enclosures are examined, with their embedded resources like fabric modules, enclosure managers (Synergy FLM and BladeSystem Onboard Administrator), and server hardware.  If a baseline is associated with an Enclosure Group, or server profile, it is used to compare what is expected, versus what the actual installed component is.  The baseline can be overridden by specifying a different baseline resource object from Get-OVBaseline.

The genrated report can be exported.

Minimum required permissions: Infrastructure administrator, Server administrator, Network administrator

## Examples

###  Example 1 

```powershell
Get-OVEnclosureGroup "Production EG" | Show-OVFirmwareReport
```

Display a firmware report of all associated enclosures to "Production EG" Enclosure Group currently managed by the appliance.

###  Example 2 

```powershell
$Baseline = Get-OVBaseline -SppName "Production EG"
Get-OVEnclosureGroup "Production EG" | Show-OVFirmwareReport -Baseline $Baseline
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
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Baseline &lt;Object&gt;

Resource Object or Name of the Firmware Baseline to report against what is installed.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Export &lt;SwitchParameter&gt;

Indicate to export the report to a CSV file.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Location &lt;String&gt;

File system location where to save the exported report to.

Default: Current Working Directory

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (get-location).Path |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InstallationPolicy &lt;string&gt;

The Installation policy option is only available for Gen10 and later servers. The option is available for Gen10 or later server hardware types only. Installation policy enables you to choose if a component needs to be updated or downgraded when its version does not match the baseline. An alert is generated when the installed version on one or more components is inconsistent with the selected installation policy.

You can choose one of the following two policy options:

* LowerThanBaseline (Default) - Updates only the components that have a version lower than the firmware baseline version.
* NotEqualToBaseline - Updates or downgrades components whose installed version does not match the firmware baseline version. The components with a version lower than the firmware baseline version are upgraded, and the components with a version higher than the firmware baseline version are downgraded to match the baseline.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.EnclosureGroup or HPEOneView.Enclosure or HPEOneView.ServerHardware or HPEOneView.Networking.Interconnect"
    HPE OneView Managed Resource object
    

## Return Values

=== "System.Object"
    Firmware report
    

## Related Links

