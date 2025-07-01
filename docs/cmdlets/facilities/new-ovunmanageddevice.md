---
description: Create an Unmanaged Device.
---

# New-OVUnmanagedDevice

## Syntax

```powershell
New-OVUnmanagedDevice
    [-Name] <String>
    [-Model] <String>
    [-MaxPower] <Int32>
    [-Height] <Int32>
    [-MacAddress] <String>
    [-IPv4Address] <String>
    [-IPv6Address] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

HPE OneView provides administrators with the capability to define unmanaged devices to them place within Racks, in order to provide a more realistic and complete data center layout.  Creating a device does not provide the ability to manage it from HPE OneView.  The administrator will need to specify static characteristics of the device being added.  The unmanaged device can then be assigned into the appropriate rack manually.

## Examples

###  Example 1 

```powershell
New-OVUnmanagedDevice -name "Unmanaged-SRVR1" -model "ProLiant DL380 G6" -height 2 -maxpower 750 -IPv4Address 10.154.1.10
```

Create a new unmanaged server device.

###  Example 2 

```powershell
New-OVUnmanagedDevice -name "HPN5900CP1" -model "HPN 5900CP" -height 1 -maxpower 260 -IPv4Address 172.18.254.99 "MyAppliance.domain.com"
```

Create a new unmanaged switch device.

## Parameters

### -Name &lt;String&gt;

The name of the Unmanaged Device.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Model &lt;String&gt;

The device model.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Height &lt;Int32&gt;

Rack Unit height of the Unmanaged Device.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 1 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaxPower &lt;Int32&gt;

The maximum power consumption of the Unmanaged Device.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MacAddress &lt;String&gt;

Provide the management interface L2 address.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Address &lt;String&gt;

Provide the IPv4 Address value of the management interface.  This value does not provide a method for an HPE OneView appliance to communicate with the management interface.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6Address &lt;String&gt;

Provide the IPv6 Address value of the management interface.  This value does not provide a method for an HPE OneView appliance to communicate with the management interface.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]"
    Newly created Unmanaged Device resource
    

## Related Links

* [Get-OVUnmanagedDevice](get-ovunmanageddevice.md)
* [Remove-OVUnmanagedDevice](remove-ovunmanageddevice.md)
