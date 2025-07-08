---
description: Import a power device.
---

# Add-OVPowerDevice

## Syntax

```powershell
Add-OVPowerDevice
    [-Hostname] <String>
    [-Username <String>]
    [-Password <String>]
    [-Credential <PSCredential>]
    [-ApplianceConnection <Object>]
    [-Async]
    [-TrustLeafCertificate]
    [-Force]
    [<CommonParameters>]
```

## Description

Power delivery devices provide power to IT hardware. A typical power topology in a data center includes power delivery devices such as power feeds, breaker panels, branch circuits, and power distribution units (PDUs), as well as the load segments, outlet bars, and outlet components of these devices. Adding your power delivery devices to the appliance enables power management using thermal limits, rated capacity, and derated capacity.

Power Delivery Devices describes the following classes of devices:

* Intelligent Power Distribution Units (iPDUs), which the appliance can automatically discover and control.
* Other power delivery devices that the appliance cannot discover. By manually adding these devices to the appliance, they become available for tracking, inventory, and power management purposes.

Regardless of how power delivery devices are added to the appliance, the appliance automatically generates the same types of analysis (capacity, redundancy, and configuration). For iPDUs, the appliance gathers statistical data and reports errors.

Connectivity and synchronization with the appliance

The appliance monitors the connectivity status of iPDUs. If the appliance loses connectivity with an iPDU, an alert displays until connectivity is restored. The appliance will try to resolve connectivity issues and clear the alert automatically, but if it cannot, you must resolve the issue and manually refresh the iPDU to bring it in synchronization with the appliance.

The appliance also monitors iPDU to remain synchronized with changes to hardware and power connections. However, some changes to devices made outside of the control of the appliance (from iLO or the OA, for example) may cause them to become out of synchronization with the appliance. You may have to manually refresh devices that lose synchronization with the appliance.

Minimum required privilegesMinimum required privileges: Infrastructure administrator or Server administrator.

## Examples

###  Example 1 

```powershell
Add-OVPowerDevice -Hostname ipdu24.example.com -Credential (Get-Credential)
```

Add the iPDU to the appliance.

## Parameters

### -Hostname &lt;String&gt;

Hostname of the iPDU, either IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

???+ warning
    This parameter is deprecated. Please transition to the `-Credential` parameter.


Administrator account of the target iPDU.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;String&gt;

???+ warning
    This parameter is deprecated. Please transition to the `-Credential` parameter.


Account password of the iPDU specified.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TrustLeaCertificate &lt;SwitchParameter&gt;

When adding an iPDU resource, the SSL certificate may be self signed and untrusted.  Use this switch to add the iPDU SSL certificate to the appliance trust store, if Certificate Verification has not been disabled on the appliance.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Force the import of the iPDU when currently managed by another HPE OneView appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TrustLeafCertificate &lt;SwitchParameter&gt;

If the iPDU SSL certificate is not trusted, use this Cmdlet to add the certificate to the appliance trust store.

| Aliases | None |
| :--- | :--- |
| Required? | False |
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

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
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

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
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

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async Task resource to monitor progress.
    

## Related Links

* [Add-OVPowerDeviceConnection](add-ovpowerdeviceconnection.md)
* [Get-OVPowerDevice](get-ovpowerdevice.md)
* [New-OVPowerDevice](new-ovpowerdevice.md)
* [Remove-OVPowerDevice](remove-ovpowerdevice.md)
