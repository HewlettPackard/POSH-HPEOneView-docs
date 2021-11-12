---
description: Configure appliance web proxy.
---

# Set-OVApplianceProxy

## Syntax

```powershell
Set-OVApplianceProxy
    [-Hostname] <String>
    [-Port] <Int>
    [-Https]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVApplianceProxy
    [-Hostname] <String>
    [-Port] <Int>
    [-Username] <String>
    [-Password] <System.Security.SecureString>
    [-Https]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

When configuring Remote Support, a Web Proxy may be required.  This Cmdlet will assist in defining an HTTPS web proxy for Remote Support outbound connectivity.  Proxy configuration does not support SOCKS. 

## Examples

###  Example 1 

```powershell
Set-OVApplianceProxy -Hostname MyProxy.domain.com -Port 8080
```

Configure the appliance proxy server by providing the required Hostname and Port values.

###  Example 2 

```powershell
Set-OVApplianceProxy -Hostname MyProxy.domain.com -Port 8080 -Username MyUserAccount -Password (ConvertTo-SecureString -String MyPassword -AsPlainText -Force)
```

Configure the appliance proxy server by providing the required Hostname and Port values, and using proxy authentication.

## Parameters

### -Hostname &lt;String&gt;

The FQDN or IP Address of the HTTPS Proxy server.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Port &lt;Int&gt;

The web proxy TCP port to connect to.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

The user name of your proxy server to authenticate with.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;System.Security.SecureString&gt;

The proxy server account password.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Https &lt;SwitchParameter&gt;

Specify if target proxy server requires HTTPS.  The target SSL/TSL certificate must be added to the appliance using the Add-OVApplianceTrustedCertificate Cmdlet.

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for monitoring.

## Related Links

* [Get-OVApplianceProxy](get-ovapplianceproxy.md)
* [Remove-OVApplianceProxy](remove-ovapplianceproxy.md)
