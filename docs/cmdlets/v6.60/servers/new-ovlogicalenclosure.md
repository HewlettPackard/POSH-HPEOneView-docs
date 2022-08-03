---
description: Create a Logical Enclosure.
---

# New-OVLogicalEnclosure

## Syntax

```powershell
New-OVLogicalEnclosure
    [-Name] <String>
    [-Enclosure] <Object>
    [-EnclosureGroup] <Object>
    [-FirmwareBaseline] <String>
    [-ForceFirmwareBaseline] <Boolean>
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

A logical enclosure represents a logical view of a single enclosure with an enclosure group serving as a template. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, configuration scripts, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

Use this Cmdlet to define a new Logical Enclosure that will include multiple Synergy Frames that share the same Virtual Connect Fabric Domain.

## Examples

###  Example 1 

```powershell
$EG = Get-OVEnclosureGroup -Name "Prod Synergy EG 1"
Get-OVEnclosure -Name 0000A66101 | New-OVLogicalEnclosure "My Synergy LE 1" -EnclosureGroup $EG
```

Create a new Logical Enclosure, "My Synergy LE 1", using the specified Enclosure Group and a specific Synergy Frame.

## Parameters

### -Name &lt;String&gt;

A name for the new Logical Enclosure.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Enclosure &lt;Object&gt;

One of the connected Frames.  The Interlink Topology will be discovered to include the other Frame members.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -EnclosureGroup &lt;Object&gt;

The Enclosure Group resource to deploy the policy from.

| Aliases | eg |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FirmwareBaseline &lt;String&gt;

Provide the Firmware Baseline object to use with the Logical Enclosure is being created.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ForceFirmwareBaseline &lt;Boolean&gt;

Specify to force the installation of firmware if the same version is found or if you wish to downgrade from a newer installed version.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
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

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
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

### -AutoFillIPv4DeviceAddress &lt;SwitchParameter&gt;

Use to autofill IPv4 addresses for device bays.  Must supply the StartingIPv4DeviceAddress parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AutoFillIPv4InterconnectAddress &lt;SwitchParameter&gt;

Use to autofill IPv4 addresses for interconnect bays.  Must supply the StartingIPv4InterconnectAddress parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AutoFillIPv6DeviceAddress &lt;SwitchParameter&gt;

Use to autofill IPv6 addresses for device bays.  Must supply the StartingIPv6DeviceAddress parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AutoFillIPv6InterconnectAddress &lt;SwitchParameter&gt;

Use to autofill IPv6 addresses for interconnect bays.  Must supply the StartingIPv6InterconnectAddress parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Ebipa &lt;Object&gt;

Use to specify a custom IPAddress assignment where the auto fill parameters are not sufficient.  This parameter cannot be combined with the auto fill parameters.

Example Hasthtable format:

@{
    Frame# = @{
        Device1 = @{
            IPv4Address = "IPv4Address"; 
            IPv6Address = "IPv6Address" 
        };
        Interconnect1 = @{
            IPv4Address = "IPv4Address";
            IPv6Address = "IPv6Address"
        }
    } 
}

Where "Frame#" is the frame ID of the Synergy Enclosure.  Can also be named "Enclosure" instead of "Frame".

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Passthru &lt;SwitchParameter&gt;

Return the object created by the Cmdlet, and not to the API.  This is useful when you want to modify additional properties the Cmdlet does not yet support.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StartingIPv4DeviceAddress &lt;IPAddress&gt;

Use to autofill IPv4 addresses for device bays.  Must supply the AutoFillIPv4DeviceAddress parameter.  Concurrent IP addresses will be calculated and automatically assigned.  This does not take into account a subnet mask.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StartingIPv4InterconnectAddress &lt;IPAddress&gt;

Use to autofill IPv4 addresses for device bays.  Must supply the AutoFillIPv4InterconnectAddress parameter.  Concurrent IP addresses will be calculated and automatically assigned.  This does not take into account a subnet mask.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StartingIPv6DeviceAddress &lt;IPAddress&gt;

Use to autofill IPv6 addresses for device bays.  Must supply the AutoFillIPv6DeviceAddress parameter.  Concurrent IP addresses will be calculated and automatically assigned.  This does not take into account a subnet mask.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StartingIPv6InterconnectAddress &lt;IPAddress&gt;

Use to autofill IPv6 addresses for device bays.  Must supply the AutoFillIPv6InterconnectAddress parameter.  Concurrent IP addresses will be calculated and automatically assigned.  This does not take into account a subnet mask.

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

_**HPEOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

Single Enclosure (Synergy Frame) resource object

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The async task resource

## Related Links

* [Get-OVLogicalEnclosure](get-ovlogicalenclosure.md)
* [Remove-OVLogicalEnclosure](remove-ovlogicalenclosure.md)
* [Set-OVLogicalEnclosure](set-ovlogicalenclosure.md)
* [Update-OVLogicalEnclosure](update-ovlogicalenclosure.md)
* [Update-OVLogicalEnclosureFirmware](../networking/update-ovlogicalenclosurefirmware.md)
