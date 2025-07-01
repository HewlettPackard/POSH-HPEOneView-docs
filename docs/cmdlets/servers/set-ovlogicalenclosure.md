---
description: Modify a configured Logical Enclosure resource.
---

# Set-OVLogicalEnclosure

## Syntax

```powershell
Set-OVLogicalEnclosure
    [-InputObject] <Object>
    [-EnclosureGroup <Object>]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
Set-OVLogicalEnclosure
    [-InputObject] <Object>
    [-Name <String>]
    [-ConfigurationScript <String[]>]
    [-EnclosureGroup <Object>]
    [-PowerMode <String>]
    [-AmbientTemperatureSetting <String>]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A logical enclosure represents a logical view of a single enclosure with an enclosure group serving as a template. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, configuration scripts, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

Use this Cmdlet to modify an existing Logical Enclosure.

## Examples

###  Example 1 

```powershell
Get-OVLogicalEnclosure -Name OriginalName | Set-OVLogicalEnclosure -Name NewName
```

Change the Logical Enclosure name.

###  Example 2 

```powershell
Get-OVLogicalEnclosure -Name OriginalName | Set-OVLogicalEnclosure -AmbientTemperatureSetting ASHRAE_A3
```

Change the Logical Enclosure ambient temperature setting.

## Parameters

### -AmbientTemperatureSetting &lt;String&gt;

The ambient temperature mode describing the environment in which the logical enclosure should be optimized to operate. When not specified, a default value of Standard is assumed.

Allowed values:

* ASHRAE_A3 - Extended ambient temperatures up to 40C/104F degrees.
* ASHRAE_A4 - Extended ambient temperatures up to 45C/113F degrees.
* Standard - Expected ambient temperatures up to 35C/95F degrees.
* Telco - Extended ambient temperatures up to 40C/104F degrees and operation extremes up to 55C/131F degrees.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnclosureGroup &lt;Object&gt;

Associate the Logical Enclosure with a new Enclosure Group.

| Aliases | eg |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Logical Enclosure resource from Get-OVLogicalEnclosure.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Specify a new Logical Enclosure name.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PowerMode &lt;String&gt;

Change the Power Mode of the Logical Enclosure.

Allowed values:

* RedundantPowerFeed - There are at least twice as many power supplies as are necessary (n + n).
* RedundantPowerSupply - There is at least 1 more power supply than is necessary (n + 1).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ConfigurationScript &lt;String[]&gt;

Specify a new HPE BladeSystem c-Class Onboard Administrator configuration script to set.  This is not supported with HPE Synergy.

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

=== "HPEOneView.LogicalEnclosure"
    HPE Syngery Logical Enclosure resource from Get-OVLogicalEnclosure.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task resource to monitor
    

## Related Links

* [Get-OVLogicalEnclosure](get-ovlogicalenclosure.md)
* [New-OVLogicalEnclosure](new-ovlogicalenclosure.md)
* [Remove-OVLogicalEnclosure](remove-ovlogicalenclosure.md)
* [Update-OVLogicalEnclosure](update-ovlogicalenclosure.md)
* [Update-OVLogicalEnclosureFirmware](../networking/update-ovlogicalenclosurefirmware.md)
