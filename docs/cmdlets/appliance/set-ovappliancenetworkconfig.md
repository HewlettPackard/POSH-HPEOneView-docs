---
description: Updates the configuration parameters for the primary network interface on the appliance.
---

# Set-OVApplianceNetworkConfig

## Syntax

```powershell
Set-OVApplianceNetworkConfig
    [-Hostname] <String>
    [-IPv4Type] <String>
    [-IPv4Addr] <IPAddress>
    [-IPv4Subnet] <String>
    [-IPv4Gateway] <IPAddress>
    [-IPv6Type] <String>
    [-IPv6Addr] <IPAddress>
    [-IPv6Subnet] <String>
    [-IPv6Gateway] <String>
    [-OverrideIPv4DhcpDns]
    [-OverrideIPv6DhcpDns]
    [-DomainName] <String>
    [-SearchDomains] <Array>
    [-IPv4NameServers] <Array>
    [-IPv6NameServers] <Array>
    [-NtpServers] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVApplianceNetworkConfig
    [-Hostname] <String>
    [-IPv4Addr] <IPAddress>
    [-IPv4Subnet] <String>
    [-IPv4Gateway] <IPAddress>
    [-ServiceIPv4Node1] <IPAddress>
    [-ServiceIPv4Node2] <IPAddress>
    [-IPv4Type] <String>
    [-IPv6Type] <String>
    [-IPv6Addr] <IPAddress>
    [-IPv6Subnet] <String>
    [-IPv6Gateway] <String>
    [-ServiceIPv6Node1 <IPAddress>]
    [-ServiceIPv6Node2 <IPAddress>]
    [-OverrideIPv4DhcpDns]
    [-OverrideIPv6DhcpDns]
    [-DomainName] <String>
    [-SearchDomains] <Array>
    [-IPv4NameServers] <Array>
    [-IPv6NameServers] <Array>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVApplianceNetworkConfig
    [-importFile] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Updates any or all configuration parameters for the primary network interface on the appliance. All parameters are  Current settings will be retained for any parameters NOT specified.

## Examples

###  Example 1 

```powershell
Set-OVApplianceNetworkConfig -hostname "appliance1.my.com" -IPv4Type "DHCP" -IPv6Type "UNCONFIGURE" -domainName "my.com"
```

This example passes in updated values to set for the appliance networking configuration.

###  Example 2 

```powershell
Set-OVApplianceNetworkConfig -importFile "c:\myNetworkInput.json"
```

This example passes the name of an input file containing JSON formatted properties and values for the appliance network configuration.

## Parameters

### -Hostname &lt;String&gt;

Fully-qualified hostname for the appliance

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Type &lt;String&gt;

"DHCP", "STATIC" or "UNCONFIGURE"

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | STATIC |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Addr &lt;IPAddress&gt;

"www.xxx.yyy.zzz" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Subnet &lt;String&gt;

"www.xxx.yyy.zzz" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Gateway &lt;IPAddress&gt;

"www.xxx.yyy.zzz" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6Type &lt;String&gt;

"DHCP", "STATIC" or "UNCONFIGURE"

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | UNCONFIGURE |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6Addr &lt;IPAddress&gt;

"ssss:tttt:uuuu:vvvv:wwww:xxxx:yyyy:zzzz" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6Subnet &lt;String&gt;

"ffff:ffff:ffff:ffff:0:0:0:0" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6Gateway &lt;String&gt;

"ssss:tttt:uuuu:vvvv:wwww:xxxx:yyyy:zzzz" (leave blank for DHCP)

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServiceIPv4Node1 &lt;IPAddress&gt;

Reserved for Synergy.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServiceIPv4Node2 &lt;IPAddress&gt;

Reserved for Synergy.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServiceIPv6Node1 &lt;IPAddress&gt;

Reserved for Synergy.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServiceIPv6Node2 &lt;IPAddress&gt;

Reserved for Synergy.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OverrideIPv4DhcpDns &lt;SwitchParameter&gt;

Switch to override DHCP provided DNS Servers

| Aliases | overrideDhcpDns |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OverrideIPv6DhcpDns &lt;SwitchParameter&gt;

Switch to override DHCPv6 provided DNS Servers

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DomainName &lt;String&gt;

DNS domain name for the appliance: "my.com"

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SearchDomains &lt;Array&gt;

Array of DNS search domains: "my.com", "other.com"

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4NameServers &lt;Array&gt;

Array of DNS servers: "www.xxx.yyy.zzz", "sss.ttt.uuu.vvv"

| Aliases | nameServers |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6NameServers &lt;Array&gt;

Array of DNS servers: "fe80::200:f8ff:fe21:67cf", "fe80::200:f8ff:fe21:89cb"

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NtpServers &lt;Object&gt;

Deprecated parameter.  NTP Server configuration is now controlled in the Set-OVApplianceDateTime Cmdlet.  Please update your scripts accordingly.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -importFile &lt;Object&gt;

 File containing JSON formatted input values for the appliance network configuration parameters.

| Aliases | i, import |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value.

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    Final Task status (for asynchronous appliance config)
    

## Related Links

* [Get-OVApplianceNetworkConfig](get-ovappliancenetworkconfig.md)
