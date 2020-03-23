---
description: Modify a servers current One Time Boot setting.
---

# Set-HPOVServerOneTimeBoot

## Syntax

```text
Set-HPOVServerOneTimeBoot
    [-InputObject] <Object>
    [-Setting] <string>
    [-ApplianceConnection <Object>]
    [-PowerOn]
    [<CommonParameters>]
```

## Description

HPE OneView allows you to set a one-time boot option for the server hardware. You can set the one-time boot option to any of the following:

    * Keep current settings—Keeps the previously chosen settings.
    * No one-time boot—Normal boot is used when this option is selected.
    * PXE—Boots from the PXE server on the network.
    * Hard disk—Boots from the first local disk.
    * CD—Boots from a local or virtual optical drive.
    * USB—Boots from a physical or virtual USB drive.

Other one-time boot options are available through the HPE iLO interface; however, HPE OneView offers only a common subset of one-time boot options. The one-time boot option requires the server hardware to be powered off and powered back on. If you set the one-time boot option while the server power is on, the one-time boot value is remembered until the server is powered off and then powered back on. HPE OneView does not support setting of the one-time boot option while the server is in power-on self-test (POST).

After setting the one-time boot option, when the server hardware is powered off and powered on, HPE iLO attempts to boot the server using the selected boot option. If the selected boot option is not available, HPE iLO attempts to boot the server using the boot order defined in the server profile. After using or attempting to use the one-time boot value, the one-time boot value is reset to No one-time boot and the server boots using the boot order defined in its server profile or through HPE iLO.

Required permissions: Server administrator

## Examples

###  Example 1 

```text
Get-HPOVServer -Name MyServer1 | Set-HPOVServerOneTimeBoot -Setting PXE
```

Set the specific server to PXE boot.

###  Example 2 

```text
Get-HPOVServer -Name MyServer* | ? powerState -eq On | Stop-HPOVServer -Confirm:$false
Get-HPOVServer -Name MyServer* | Set-HPOVServerOneTimeBoot -Setting PXE -PowerOn
```

Power off the servers that need to be powered off. The set those servers to PXE boot and power on.

###  Example 3 

```text
Get-HPOVServer -Name MyOtherServer | Set-HPOVServerOneTimeBoot -Setting Normal
```

Set the specified server to boot normally, clearing the one time boot value.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The server hardware or server profile resource object from `Get-HPOVServer` or `Get-HPOVServerProfile`.  If providing a server profile resource, it must be assigned to a server in order for one time boot settings to be returned.

| Aliases | Server |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -PowerOn &lt;SwitchParameter&gt;

If the server is already powered off, instruct OneView to power on the server once the one time boot setting has been applied.

| Aliases | PowerState |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Setting &lt;string&gt;

The intended one time boot setting.  Allowed values:

    * Normal - Normal boot, or to disable one time boot on a server that has a different value set.
    * PXE - Network boot from the default PXE adapter device.
    * HDD - instruct the server to find the first bootable disk drive.
    * CD - instruct the server to boot from an available CD/DVD drive, including iLO Virtual Media
    * USB - boot from a USB removal storage device.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Servers.ServerHardware [System.Management.Automation.PSCustomObject]**_

Server hardware resource object from [`Get-HPOVServer`](get-hpovserver.md).

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

Server profile resource object from [`Get-HPOVServerProfile`](get-hpovserverprofile.md).

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asynchronous task resource to monitor.

## Related Links

* [Get-HPOVServer](get-hpovserver.md)
* [Get-HPOVServerProfile](get-hpovserverprofile.md)
* [Get-HPOVServerOneTimeBoot](get-hpovserveronetimeboot.md)
