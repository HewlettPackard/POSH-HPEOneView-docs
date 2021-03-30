---
description: Remove appliance HTTP/HTTPS proxy.
---

# Remove-HPOVApplianceProxy

## Syntax

```text
Remove-HPOVApplianceProxy
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

The setting an appliance proxy allows you to set the HTTP/HTTPS proxy, port number for client connections, and whether authentication requires a username and a password.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator
{% endhint %}

## Examples

###  Example 1 

```text
Remove-HPOVApplianceProxy

```

Remove the configured HTTP/HTTP proxy settings on the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.ProxyServer**_

Appliance proxy server settings.


## Related Links

* [Get-HPOVApplianceProxy](get-hpovapplianceproxy.md)
* [Set-HPOVApplianceProxy](set-hpovapplianceproxy.md)
