---
description: Disable HPE Synergy Composer2 iLO remote connectivity.
---

# Disable-OVComposerIlo

## Syntax

```powershell
Disable-OVComposerIlo
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Disable-OVComposerIlo
    [-InputObject] <Object>
    [-DisableIPv4Address]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Disable-OVComposerIlo
    [-InputObject] <Object>
    [-DisableIPv6Address]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can configure the HPE Synergy Composer2 for remote access through its embedded management processor (iLO). This configuration enables you to manage the Composer2 remotely and perform specific Composer2 management operations that previously required accessing the Composer console locally in the data center.

Use this Cmdlet to disable remote access to the HPE Synergy Composer2 iLO.  Disabling external iLO access will delete the configured iLO user account and unassign the user specified static IPv4 and IPv6 addresses.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
$ComposerAppliance = Get-OVComposerIloStatus | Where-Object IsExternallyAccessible
Disable-OVComposerIlo

```

Disable HPE Synergy Composer 2 iLO's that are configured for remote connectivity.  The configued iLO user and IP Address(es) will be removed from the iLO.

###  Example 2 

```powershell
$ComposerAppliance = Get-OVComposerIloStatus | Where-Object IsExternallyAccessible
Disable-OVComposerIlo -DisableIPv6Address

```

Disable only the configured IPv6 address on the HPE Synergy Composer 2 iLO's that are configured for remote connectivity.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
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

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisableIPv4Address &lt;SwitchParameter&gt;

Use to unconfigure the user specified IPv4 address of the iLO.  The iLO will no longer be accessible by this address.  This paramete cannot be combined with the `-DisableIPv6Address` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisableIPv6Address &lt;SwitchParameter&gt;

Use to unconfigure the user specified IPv6 address of the iLO.  The iLO will no longer be accessible by this address.  This paramete cannot be combined with the `-DisableIPv4Address` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The object from Get-OVComposerIloStatus.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.HardwareConfig [System.Management.Automation.PSCustomObject]"
    The appliance hardware configuration object from Get-OVComposerIloStatus.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

* [Enable-OVComposerIlo](enable-ovcomposerilo.md)
* [Get-OVComposerIloStatus](get-ovcomposerilostatus.md)
* [Set-OVComposerIlo](set-ovcomposerilo.md)
