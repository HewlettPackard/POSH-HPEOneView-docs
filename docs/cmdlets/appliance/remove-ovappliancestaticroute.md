---
description: Remove configured static route on an appliance.
---

# Remove-OVApplianceStaticRoute

## Syntax

```powershell
Remove-OVApplianceStaticRoute
    [-InputObject] <HPEOneView.Appliance.StaticRoute>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

When configuring a second NIC on a virtual machine appliance, static routes can be configured as only a single appliance NIC can be configured with a default gateway.  Both IPv4 and IPv6 static routes are supported.  Use this Cmdlet to remove a static route configured on an appliance.

???+ info
    Minimum required privileges:  Infrastructure administrator

## Examples

###  Example 1 

```powershell
Get-OVApplianceStaticRoute -Destination 192.168.44.0/24 | Remove-OVApplianceStaticRoute

```

Remove the specific static route from an appliance.

###  Example 2 

```powershell
Get-OVApplianceStaticRoute -Interface SecondNIC | Remove-OVApplianceStaticRoute

```

Remove all configured static routes configured for the the specific interface from an appliance.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;HPEOneView.Appliance.StaticRoute&gt;

Static route object from Get-OVApplianceStaticRoute.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.StaticRoute"
    Configured static route object from Get-OVApplianceStaticRoute.
    

## Return Values

=== "HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

* [Get-OVApplianceStaticRoute](get-ovappliancestaticroute.md)
* [New-OVApplianceStaticRoute](new-ovappliancestaticroute.md)
* [Set-OVApplianceStaticRoute](set-ovappliancestaticroute.md)
