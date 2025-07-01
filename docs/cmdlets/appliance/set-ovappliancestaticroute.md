---
description: Update a configured static routes on an appliance.
---

# Set-OVApplianceStaticRoute

## Syntax

```powershell
Set-OVApplianceStaticRoute
    [-InputObject] <StaticRoute>
    [-Destination <String>]
    [-Gateway <IPAddress>]
    [-Interface <String>]
    [-Metric <int>]
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
Get-OVapplianceStaticRoute -Destination 192.168.78.0/24 | Set-OVApplianceStaticRoute -Gateway 192.168.12.254

```

Update the specific static route with a new gateway address.

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

### -Destination &lt;String&gt;

IP Address of the destination subnet.  Format must follow {address}/{bits}.  Can either be IPv4 or IPv6 address type.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Gateway &lt;IPAddress&gt;

The IP address of the router.  Can either be an IPv4 or IPv6 address, but must match the type provided in the `-Destination` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;StaticRoute&gt;

Static route object from Get-OVApplianceStaticRoute.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Interface &lt;String&gt;

Interface name of the NIC the static route will be configured for.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Metric &lt;int&gt;

Route weight value if multiple next hop routes will be configured for the same subnet.  If no value provided, the route weight will be set to 100.

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

=== "HPEOneView.Appliance.StaticRoute"
    Configured static route object from Get-OVApplianceStaticRoute.
    

## Return Values

=== "HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

* [Get-OVApplianceStaticRoute](get-ovappliancestaticroute.md)
* [New-OVApplianceStaticRoute](new-ovappliancestaticroute.md)
* [Remove-OVApplianceStaticRoute](remove-ovappliancestaticroute.md)
