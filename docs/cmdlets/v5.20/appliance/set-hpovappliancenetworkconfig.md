---
description: Updates the configuration parameters for the primary network interface on the appliance.
---

# Set-HPOVApplianceNetworkConfig

## Syntax

```text
Set-HPOVApplianceNetworkConfig
    [-Hostname] <>
    [-IPv4Type] <>
    [-IPv4Addr] <>
    [-IPv4Subnet] <>
    [-IPv4Gateway] <>
    [-IPv6Type] <>
    [-IPv6Addr] <>
    [-IPv6Subnet] <>
    [-IPv6Gateway] <>
    [-OverrideIPv4DhcpDns <>]
    [-OverrideIPv6DhcpDns <>]
    [-DomainName] <>
    [-SearchDomains] <>
    [-IPv4NameServers] <>
    [-IPv6NameServers] <>
    [-NtpServers] <>
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

```text
Set-HPOVApplianceNetworkConfig
    [-Hostname] <>
    [-IPv4Addr] <>
    [-IPv4Subnet] <>
    [-IPv4Gateway] <>
    [-ServiceIPv4Node1] <>
    [-ServiceIPv4Node2] <>
    [-IPv4Type] <>
    [-IPv6Type] <>
    [-IPv6Addr] <>
    [-IPv6Subnet] <>
    [-IPv6Gateway] <>
    [-ServiceIPv6Node1 <>]
    [-ServiceIPv6Node2 <>]
    [-OverrideIPv4DhcpDns <>]
    [-OverrideIPv6DhcpDns <>]
    [-DomainName] <>
    [-SearchDomains] <>
    [-IPv4NameServers] <>
    [-IPv6NameServers] <>
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

```text
Set-HPOVApplianceNetworkConfig
    [-importFile] <>
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

## Description

Updates any or all configuration parameters for the primary network interface on the appliance. All parameters are  Current settings will be retained for any parameters NOT specified.

## Examples

###  Example 1 

```text
Set-HPOVApplianceNetworkConfig -hostname "appliance1.my.com" -IPv4Type "DHCP" -IPv6Type "UNCONFIGURE" -domainName "my.com"
```

This example passes in updated values to set for the appliance networking configuration.

###  Example 2 

```text
Set-HPOVApplianceNetworkConfig -importFile "c:\myNetworkInput.json"
```

This example passes the name of an input file containing JSON formatted properties and values for the appliance network configuration.

## Parameters

### -Hostname &lt;&gt;

Fully-qualified hostname for the appliance

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Type &lt;&gt;

"DHCP", "STATIC" or "UNCONFIGURE"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | STATIC |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Addr &lt;&gt;

"www.xxx.yyy.zzz" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Subnet &lt;&gt;

"www.xxx.yyy.zzz" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Gateway &lt;&gt;

"www.xxx.yyy.zzz" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6Type &lt;&gt;

"DHCP", "STATIC" or "UNCONFIGURE"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | UNCONFIGURE |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6Addr &lt;&gt;

"ssss:tttt:uuuu:vvvv:wwww:xxxx:yyyy:zzzz" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6Subnet &lt;&gt;

"ffff:ffff:ffff:ffff:0:0:0:0" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6Gateway &lt;&gt;

"ssss:tttt:uuuu:vvvv:wwww:xxxx:yyyy:zzzz" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServiceIPv4Node1 &lt;&gt;

Reserved for Synergy.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServiceIPv4Node2 &lt;&gt;

Reserved for Synergy.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServiceIPv6Node1 &lt;&gt;

Reserved for Synergy.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServiceIPv6Node2 &lt;&gt;

Reserved for Synergy.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OverrideIPv4DhcpDns &lt;&gt;

Switch to override DHCP provided DNS Servers

| Aliases | overrideDhcpDns |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OverrideIPv6DhcpDns &lt;&gt;

Switch to override DHCPv6 provided DNS Servers

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DomainName &lt;&gt;

DNS domain name for the appliance: "my.com"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SearchDomains &lt;&gt;

Array of DNS search domains: "my.com", "other.com"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4NameServers &lt;&gt;

Array of DNS servers: "www.xxx.yyy.zzz", "sss.ttt.uuu.vvv"

| Aliases | nameServers |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6NameServers &lt;&gt;

Array of DNS servers: "fe80::200:f8ff:fe21:67cf", "fe80::200:f8ff:fe21:89cb"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NtpServers &lt;&gt;

Deprecated parameter.  NTP Server configuration is now controlled in the `Set-HPOVApplianceDateTime` Cmdlet.  Please update your scripts accordingly.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -importFile &lt;&gt;

 File containing JSON formatted input values for the appliance network configuration parameters.

| Aliases | i, import |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

Final Task status (for asynchronous appliance config)

## Related Links

* [Get-HPOVApplianceNetworkConfig](get-hpovappliancenetworkconfig.md)
