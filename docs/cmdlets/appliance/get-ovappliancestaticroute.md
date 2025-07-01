---
description: Display configured static routes on the appliance.
---

# Get-OVApplianceStaticRoute

## Syntax

```powershell
Get-OVApplianceStaticRoute
    [-Destination <String>]
    [-Interface <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

When configuring a second NIC on a virtual machine appliance, static routes can be configured as only a single appliance NIC can be configured with a default gateway.  Both IPv4 and IPv6 static routes are supported.  Use Get-OVApplianceIPAddress to display the configured NIC interfaces, and supply the interface name with the `-Interface` parameter.

???+ info
    Minimum required privileges:  Infrastructure administrator

## Examples

###  Example 1 

```powershell
Get-OVApplianceStaticRoute

```

Get all configured static routes.

###  Example 2 

```powershell
Get-OVApplianceStaticRoute -Interface Appliance

```

Get all configured static routes for the default "Appliance" NIC.

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

### -Destination &lt;String&gt;

The static route defined on the appliance.  IP address format should be {destination_subnet}/{subnetmask_short_bit}.

Example: 10.55.74.0/24

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Interface &lt;String&gt;

Interface name to filter.  Use Get-OVApplianceIPAddress to display the configured NIC interfaces.

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

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Appliance.StaticRoute"
    IP static route object.
    
    

## Related Links

* [New-OVApplianceStaticRoute](new-ovappliancestaticroute.md)
* [Set-OVApplianceStaticRoute](set-ovappliancestaticroute.md)
* [Remove-OVApplianceStaticRoute](remove-ovappliancestaticroute.md)
