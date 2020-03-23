---
description: Retrieve Logical Enclosure resource(s).
---

# Get-HPOVLogicalEnclosure

## Syntax

```text
Get-HPOVLogicalEnclosure
    [-Name] <String>
    [-EnclosureGroup <Object>]
    [-NonCompliant]
    [-Scope <Object>]
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

Obtain a collection of Logical Enclosure resources, or a single Logical Enclosure with the specified name.

## Examples

###  Example 1 

```text
Get-HPOVLogicalEnclosure

```

Return all the Logical Enclosure resources managed by all appliances.

###  Example 2 

```text
$LogicalEnclosures = Get-HPOVLogicalEnclosure

```

Return all found Logical Enclosure resources on `[MyAppliance.domain.com]` appliance.

## Parameters

### -Name &lt;String&gt;

The name of the Logical Enclosure resource to be returned.  All Logical Enclosure resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* `[HPOneView.Appliance.ScopeCollection]`
	* `[HPOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `AllResourcesInScope` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnclosureGroup &lt;Object&gt;

Filter resources based on provided EnclosureGroup association.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -NonCompliant &lt;SwitchParameter&gt;

Filter resources based on their `non-compliant` state.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

Single Enclosure Group


_**System.Collections.ArrayList**_

Multiple Enclosure Groups

## Related Links

* [New-HPOVLogicalEnclosure](new-hpovlogicalenclosure.md)
* [Remove-HPOVLogicalEnclosure](remove-hpovlogicalenclosure.md)
* [Set-HPOVLogicalEnclosure](set-hpovlogicalenclosure.md)
* [Update-HPOVLogicalEnclosure](update-hpovlogicalenclosure.md)
* [Update-HPOVLogicalEnclosureFirmware](../networking/update-hpovlogicalenclosurefirmware.md)
