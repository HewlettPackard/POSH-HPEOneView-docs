---
description: Validate IP Connectivity to resources.
---

# Ping-HPOVAddress

## Syntax

```text
Ping-HPOVAddress
    [-Address] <String>
    [-Packets] <Int32>
    [-ApplianceConnection] <Object>
    [-Async]
    [<CommonParameters>]
```

## Description

This CMDLET provides the administrator the capability to PING (ICMP "echo request") to a resource the appliance is or is not managing, to help validate L2 and/or L3 connectivity from the appliance.

## Examples

###  Example 1 

```text
$results = Ping-HPOVAddress host.domain.com -Appliance appliance.contoso.com
$results.progressUpdates.statusUpdate
PING host.domain.com (192.168.1.100) 56(84) bytes of data.
64 bytes from host.domain.com (192.168.1.100): icmp_seq=1 ttl=64 time=0.462 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=2 ttl=64 time=0.629 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=3 ttl=64 time=0.478 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=4 ttl=64 time=0.424 ms

```

64 bytes from `[host.domain.com]` (192.168.1.100): icmp_seq=5 ttl=64 time=0.578 ms

## Parameters

### -Address &lt;String&gt;

The IP or FQDN Address of the target device.  If using FQDN, please make sure valid DNS Servers are configured on the appliance for proper DNS resolution.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Packets &lt;Int32&gt;

Number of Packets to generate.

Default: 5

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `5` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Net.IPAddress**_

IP Address of target node to ping

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Task resource of the PING request

## Related Links

* [Get-HPOVAddressPool](get-hpovaddresspool.md)
* [Get-HPOVAddressPoolRange](get-hpovaddresspoolrange.md)
* [Get-HPOVAddressPoolSubnet](get-hpovaddresspoolsubnet.md)
* [New-HPOVAddressPoolRange](new-hpovaddresspoolrange.md)
* [New-HPOVAddressPoolSubnet](new-hpovaddresspoolsubnet.md)
* [Remove-HPOVAddressPoolRange](remove-hpovaddresspoolrange.md)
* [Remove-HPOVAddressPoolSubnet](remove-hpovaddresspoolsubnet.md)
* [Set-HPOVAddressPoolSubnet](set-hpovaddresspoolsubnet.md)
