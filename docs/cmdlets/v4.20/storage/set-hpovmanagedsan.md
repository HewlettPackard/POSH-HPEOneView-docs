---
description: Enable or Disable Automated SAN Zoning.
---

# Set-HPOVManagedSan

## Syntax

```text
Set-HPOVManagedSan
    [-InputObject] <Object>
    [-EnableAutomatedZoning]
    [-ZoningPolicy] <String>
    [-EnableAliasing]
    [-InitiatorNameFormat <String>]
    [-TargetGroupNameFormat <String>]
    [-TargetNameFormat <String>]
    [-ZoneNameFormat <String>]
    [-UpdateZoneNames <Boolean>]
    [-UpdateInitiatorAliases <Boolean>]
    [-UpdateTargetAliases <Boolean>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Set-HPOVManagedSan
    [-InputObject] <Object>
    [-EnableAutomatedZoning]
    [-ZoningPolicy] <String>
    [-DisableAliasing]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Set-HPOVManagedSan
    [-InputObject] <Object>
    [-DisableAutomatedZoning]
    [-ZoningPolicy] <String>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This cmdlet is used to Enable or Disable a Managed SAN resource on the appliance.  Disabling a Managed SAN will prevent the appliance from configuring FC Zones.

## Examples

###  Example 1 

```text
Set-HPOVManagedSan Fabric_A -ZoningPolicy SingleInitiatorAllTargets

```

Enable Automated SAN Zoning for "Fabric_A"

###  Example 2 

```text
Set-HPOVManagedSan Fabric_A -ZoningPolicy NoZoning

```

Disable Automated SAN Zoning for "Fabric_A"

###  Example 3 

```text
Get-HPOVManagedSan | Set-HPOVManagedSan -ZoningPolicy SingleInitiatorAllTargets

```

Enable Automated SAN Zoning for all managed SAN Fabrics

## Parameters

### -InputObject &lt;Object&gt;

Managed SAN Name or Object.

| Aliases | Fabric, Name, ManagedSan, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -EnableAutomatedZoning &lt;SwitchParameter&gt;

{% hint style="warning" %}
This parameter is now deprecated. Please use `-ZoningPolicy` parameter.
{% endhint %}


Enable Automated Zoning for the specified Managed SAN.  When used, the default Zone Policy "SingleInitiatorAllTargets" is set.

| Aliases | ZoningEnable, Enable |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisableAutomatedZoning &lt;SwitchParameter&gt;

{% hint style="warning" %}
This parameter is now deprecated. Please use `-ZoningPolicy` parameter.
{% endhint %}


Disable Automated Zoning for the specified Managed SAN.

| Aliases | ZoningDisable, Disable |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ZoningPolicy &lt;String&gt;

Policy setting that affects the way that zones are created. Allowed values:

    * NoZoning - Disable all automated zoning on the SAN and ignore policy settings related to zoning.
    * SingleInitiatorAllTargets - Create one zone per initiator containing all targets connected to that initiator.
    * SingleInitiatorSingleStorageSystem - Similar to SingleInitiatorAllTargets except that separate zones are created for targets that reside on different storage systems.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `SingleInitiatorAllTargets` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableAliasing &lt;SwitchParameter&gt;

Enable aliases to be created for initiators, targets and target groups based on the specified name formats

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisableAliasing &lt;SwitchParameter&gt;

Disable aliases to be created for initiators, targets and target groups based on the specified name formats

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `false` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InitiatorNameFormat &lt;String&gt;

Format to use for initiator alias names. The following `built-in` variables can be used: {hostName}, {initiatorName}, {initiatorWwn}.

Example: "initiator_{hostname}_{initiatorName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TargetGroupNameFormat &lt;String&gt;

Format to use for target group (ex. storage system port group) alias names. The following `built-in` variables can be used: {storageSystemName}, {targetGroupName}.

Example: "TargetGroup_{storageSystemName}_{targetGroupName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TargetNameFormat &lt;String&gt;

Format to use for target (ex. storage system port) alias names. The following `built-in` variables can be used: {storageSystemName}, {targetName}.

Example: "Target_{storageSystemName}_{targetName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ZoneNameFormat &lt;String&gt;

Format to use when naming new and updated zones. The following `built-in` variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UpdateZoneNames &lt;Boolean&gt;

Format to use when naming new and updated zones. The following `built-in` variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UpdateInitiatorAliases &lt;Boolean&gt;

Format to use when naming new and updated zones. The following `built-in` variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UpdateTargetAliases &lt;Boolean&gt;

Format to use when naming new and updated zones. The following `built-in` variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

Single Resource

_**System.Collection.ArrayList <HPOneView.Storage.ManagedSan>**_

Multiple Resources

## Return Values

_**System.Management.Automation.PSCustomObject**_

Single Resource

_**System.Collections.ArrayList**_

Multiple Resources

## Related Links

* [Get-HPOVManagedSan](get-hpovmanagedsan.md)
