---
description: Retrieve Logical Enclosure resource(s).
---

# Get-OVLogicalEnclosure

## Syntax

```powershell
Get-OVLogicalEnclosure
    [-Name <String>]
    [-EnclosureGroup <Object>]
    [-NonCompliant]
    [-Scope <Object>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A logical enclosure contains the configuration intended for a set of physical enclosures. Its initial values are taken from an enclosure group and applied to the physical enclosures. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

After Synergy frames are discovered automatically during hardware setup, you must manually create a logical enclosure. The logical enclosure must contain the number of Synergy frames that are connected together with interconnect link cables. For example, if you have three Synergy frames cabled together, create a logical enclosure that contains all three Synergy frames.

This Cmdlet will retrieve a collection of Logical Enclosure resources, or a single Logical Enclosure with the specified name.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVLogicalEnclosure
```

Return all the Logical Enclosure resources managed by all appliances.

###  Example 2 

```powershell
$EnclosureGroup = Get-OVEnclosureGroup -Name CorpEG1
Get-OVLogicalEnclosure -EnclosureGroup $EnclosureGroup
```

Return the associated logical enclosures that were created from the specific enclosure group.

## Parameters

### -Name &lt;String&gt;

The name of the Logical Enclosure resource to be returned.  All Logical Enclosure resources will be returned if omitted.

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

### -EnclosureGroup &lt;Object&gt;

Filter resources based on provided EnclosureGroup association.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -NonCompliant &lt;SwitchParameter&gt;

Filter resources based on their non-compliant state.

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]"
    Single Enclosure Group
    

=== "System.Collections.ArrayList"
    Multiple Enclosure Groups
    

## Related Links

* [New-OVLogicalEnclosure](new-ovlogicalenclosure.md)
* [Remove-OVLogicalEnclosure](remove-ovlogicalenclosure.md)
* [Set-OVLogicalEnclosure](set-ovlogicalenclosure.md)
* [Update-OVLogicalEnclosure](update-ovlogicalenclosure.md)
* [Update-OVLogicalEnclosureFirmware](../networking/update-ovlogicalenclosurefirmware.md)
