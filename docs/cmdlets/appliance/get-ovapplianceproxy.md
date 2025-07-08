---
description: Get appliance configured HTTP proxy.
---

# Get-OVApplianceProxy

## Syntax

```powershell
Get-OVApplianceProxy
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

The setting an appliance proxy allows you to set the HTTP/HTTPS proxy, port number for client connections, and whether authentication requires a username and a password.  The appliance HTTP or HTTPS proxy configuration is used for HPE OneView Remote Support, and HPE OneView Remote Technician.

This Cmdlet will return the configured appliance HTTP/HTTPS proxy configuration.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVApplianceProxy
```

Get the appliance configured HTTP/HTTPS proxy configuration.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.ProxyServer"
    Appliance proxy server settings.
    

## Related Links

* [Remove-OVApplianceProxy](remove-ovapplianceproxy.md)
* [Set-OVApplianceProxy](set-ovapplianceproxy.md)
