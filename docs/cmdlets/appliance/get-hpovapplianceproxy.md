---
description: Get appliance configured HTTP proxy.
---

# Get-HPOVApplianceProxy

## HPE OneView 5.00 Library

###  Syntax

```text
Get-HPOVApplianceProxy [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

The setting an appliance proxy allows you to set the HTTP/HTTPS proxy, port number for client connections, and whether authentication requires a username and a password.  The appliance HTTP or HTTPS proxy configuration is used for HPE OneView Remote Support, and HPE OneView Remote Technician.

This Cmdlet will return the configured appliance HTTP/HTTPS proxy configuration.

{% hint style="info" %}
Required permissions: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.ProxyServer**_

Appliance proxy server settings.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceProxy
```

Get the appliance configured HTTP/HTTPS proxy configuration. 

### Related Links 

* [Remove-HPOVApplianceProxy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceProxy) 
* [Set-HPOVApplianceProxy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceProxy) 



