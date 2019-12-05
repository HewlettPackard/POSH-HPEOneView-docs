---
description: Retrieve Logical Enclosure resource(s).
---

# Get-HPOVLogicalEnclosure

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVLogicalEnclosure [[-Name] <String>] [[-EnclosureGroup] <Object>] [[-NonCompliant] <SwitchParameter>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

A logical enclosure contains the configuration intended for a set of physical enclosures. Its initial values are taken from an enclosure group and applied to the physical enclosures. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

After Synergy frames are discovered automatically during hardware setup, you must manually create a logical enclosure. The logical enclosure must contain the number of Synergy frames that are connected together with interconnect link cables. For example, if you have three Synergy frames cabled together, create a logical enclosure that contains all three Synergy frames.

This Cmdlet will retrieve a collection of Logical Enclosure resources, or a single Logical Enclosure with the specified name.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -EnclosureGroup &lt;Object&gt; 

Filter resources based on provided EnclosureGroup association.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the Logical Enclosure resource to be returned. All Logical Enclosure resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -NonCompliant &lt;SwitchParameter&gt; 

Filter resources based on their non-compliant state.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.EnclosureGroup \[System.Management.Automation.PSCustomObject\]**_

Single Enclosure Group

_**System.Collections.ArrayList**_

Multiple Enclosure Groups

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLogicalEnclosure
```

Return all the Logical Enclosure resources managed by all appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
$EnclosureGroup = Get-HPOVEnclosureGroup -Name CorpEG1
Get-HPOVLogicalEnclosure -EnclosureGroup $EnclosureGroup
```

Return the associated logical enclosures that were created from the specific enclosure group.

### Related Links

* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure) 
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure) 
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure) 
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVLogicalEnclosure [[-Name] <String>] [[-EnclosureGroup] <Object>] [[-NonCompliant] <SwitchParameter>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

A logical enclosure contains the configuration intended for a set of physical enclosures. Its initial values are taken from an enclosure group and applied to the physical enclosures. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

After Synergy frames are discovered automatically during hardware setup, you must manually create a logical enclosure. The logical enclosure must contain the number of Synergy frames that are connected together with interconnect link cables. For example, if you have three Synergy frames cabled together, create a logical enclosure that contains all three Synergy frames.

This Cmdlet will retrieve a collection of Logical Enclosure resources, or a single Logical Enclosure with the specified name.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -EnclosureGroup &lt;Object&gt; 

Filter resources based on provided EnclosureGroup association.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the Logical Enclosure resource to be returned. All Logical Enclosure resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -NonCompliant &lt;SwitchParameter&gt; 

Filter resources based on their non-compliant state.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.EnclosureGroup \[System.Management.Automation.PSCustomObject\]**_

Single Enclosure Group

_**System.Collections.ArrayList**_

Multiple Enclosure Groups

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLogicalEnclosure
```

Return all the Logical Enclosure resources managed by all appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
$EnclosureGroup = Get-HPOVEnclosureGroup -Name CorpEG1
Get-HPOVLogicalEnclosure -EnclosureGroup $EnclosureGroup
```

Return the associated logical enclosures that were created from the specific enclosure group.

### Related Links

* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure) 
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure) 
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure) 
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVLogicalEnclosure [[-Name] <String>] [[-EnclosureGroup] <Object>] [[-NonCompliant] <SwitchParameter>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

A logical enclosure contains the configuration intended for a set of physical enclosures. Its initial values are taken from an enclosure group and applied to the physical enclosures. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

After Synergy frames are discovered automatically during hardware setup, you must manually create a logical enclosure. The logical enclosure must contain the number of Synergy frames that are connected together with interconnect link cables. For example, if you have three Synergy frames cabled together, create a logical enclosure that contains all three Synergy frames.

This Cmdlet will retrieve a collection of Logical Enclosure resources, or a single Logical Enclosure with the specified name.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -EnclosureGroup &lt;Object&gt; 

Filter resources based on provided EnclosureGroup association.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the Logical Enclosure resource to be returned. All Logical Enclosure resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -NonCompliant &lt;SwitchParameter&gt; 

Filter resources based on their non-compliant state.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.EnclosureGroup \[System.Management.Automation.PSCustomObject\]**_

Single Enclosure Group

_**System.Collections.ArrayList**_

Multiple Enclosure Groups

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLogicalEnclosure
```

Return all the Logical Enclosure resources managed by all appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
$EnclosureGroup = Get-HPOVEnclosureGroup -Name CorpEG1
Get-HPOVLogicalEnclosure -EnclosureGroup $EnclosureGroup
```

Return the associated logical enclosures that were created from the specific enclosure group.

### Related Links

* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure) 
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure) 
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure) 
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware) 



