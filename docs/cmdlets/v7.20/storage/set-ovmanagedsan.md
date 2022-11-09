---
description: Enable or Disable Automated SAN Zoning.
---

# Set-OVManagedSan

## Syntax

```powershell
Set-OVManagedSan
    [-InputObject] <Object>
    [-ZoningPolicy] <String>
    [-EnableAutomatedZoning]
    [-EnableAliasing]
    [-InitiatorNameFormat <String>]
    [-TargetGroupNameFormat <String>]
    [-DisableTargetGroupAliasing <Bool>]
    [-TargetNameFormat <String>]
    [-ZoneNameFormat <String>]
    [-UpdateZoneNames <Boolean>]
    [-UpdateInitiatorAliases <Boolean>]
    [-UpdateTargetAliases <Boolean>]
    [-UpdateTargetGroupAliases <Bool>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVManagedSan
    [-InputObject] <Object>
    [-EnableAutomatedZoning]
    [-ZoningPolicy <String>]
    [-DisableAliasing]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVManagedSan
    [-InputObject] <Object>
    [-ZoningPolicy] <String>
    [-DisableAutomatedZoning]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet is used to Enable or Disable a Managed SAN resource on the appliance.  Disabling a Managed SAN will prevent the appliance from configuring FC Zones.

## Examples

###  Example 1 

```powershell
Set-OVManagedSan Fabric_A -ZoningPolicy SingleInitiatorAllTargets
```

Enable Automated SAN Zoning for "Fabric_A"

###  Example 2 

```powershell
Set-OVManagedSan Fabric_A -ZoningPolicy NoZoning
```

Disable Automated SAN Zoning for "Fabric_A"

###  Example 3 

```powershell
Get-OVManagedSan | Set-OVManagedSan -ZoningPolicy SingleInitiatorAllTargets
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

(DEPRICATED - Please use `-ZoningPolicy` parameter.) Enable Automated Zoning for the specified Managed SAN.  When used, the default Zone Policy "SingleInitiatorAllTargets" is set.

| Aliases | ZoningEnable, Enable |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisableAutomatedZoning &lt;SwitchParameter&gt;

(DEPRICATED - Please use `-ZoningPolicy` parameter.) Disable Automated Zoning for the specified Managed SAN.

| Aliases | ZoningDisable, Disable |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | False |
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
| Default value | SingleInitiatorAllTargets |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableAliasing &lt;SwitchParameter&gt;

Enable aliases to be created for initiators, targets and target groups based on the specified name formats

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisableAliasing &lt;SwitchParameter&gt;

Disable aliases to be created for initiators, targets and target groups based on the specified name formats

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | false |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InitiatorNameFormat &lt;String&gt;

Format to use for initiator alias names. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}.

Example: "initiator_{hostname}_{initiatorName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TargetGroupNameFormat &lt;String&gt;

Format to use for target group (ex. storage system port group) alias names. The following built-in variables can be used: {storageSystemName}, {targetGroupName}.

Example: "TargetGroup_{storageSystemName}_{targetGroupName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TargetNameFormat &lt;String&gt;

Format to use for target (ex. storage system port) alias names. The following built-in variables can be used: {storageSystemName}, {targetName}.

Example: "Target_{storageSystemName}_{targetName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ZoneNameFormat &lt;String&gt;

Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UpdateZoneNames &lt;Boolean&gt;

Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UpdateInitiatorAliases &lt;Boolean&gt;

Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UpdateTargetAliases &lt;Boolean&gt;

Format to use when naming new and updated zones. The following built-in variables can be used: {hostName}, {initiatorName}, {initiatorWwn}, {storageSystemName}, {targetName}, {targetGroupName} 

Example: "{initiatorWwn}_{initiatorName}"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -DisableTargetGroupAliasing &lt;Bool&gt;

When the zoning policy is not set to SingleInitiatorSingleTarget, Target Group Aliasing can be enabled or disabled.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UpdateTargetGroupAliases &lt;Bool&gt;

When Enabled (True), target and target group aliases will be updated in the SAN whenever resources are renamed in OneView.

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

_**HPEOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

Single Resource

_**System.Collection.ArrayList <HPEOneView.Storage.ManagedSan>**_

Multiple Resources

## Return Values

_**System.Management.Automation.PSCustomObject**_

Single Resource

_**System.Collections.ArrayList**_

Multiple Resources

## Related Links

* [Get-OVManagedSan](get-ovmanagedsan.md)
