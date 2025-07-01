---
description: Display the configured NICs of an appliance, or Synergy Composer cluster.
---

# Get-OVApplianceIPAddress

## Syntax

## Description

The HPE OneView appliance can be configured with static IPv4 and/or IPv6 addresses.  This address is used for all IP communication between monitored/managed resources, external services (i.e. authentication directory, HPE web services like OneView Remote Support) and for administrator client management operations from the web UI and/or REST API.  This Cmdlet will return the configured IP address(es).

## Examples

###  Example 1 

```powershell
Get-OVApplianceIPAddress

```

Display configured appliance NICs.

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Appliance.NetworkInterface"
    Network interface configured for virtual machine appliance.
    
    

=== "HPEOneView.Appliance.ComposerNetworkInterface"
    Network interface(s) configured for HPE Synergy Composer appliance(s).
    
    

## Related Links

* [New-OVApplianceStaticRoute](new-ovappliancestaticroute.md)
* [Get-OVApplianceStaticRoute](get-ovappliancestaticroute.md)
* [Set-OVApplianceStaticRoute](set-ovappliancestaticroute.md)
* [Remove-OVApplianceStaticRoute](remove-ovappliancestaticroute.md)
