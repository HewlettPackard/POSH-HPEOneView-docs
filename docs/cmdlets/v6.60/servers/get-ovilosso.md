---
description: Generate iLO SSO Token.
---

# Get-OVIloSso

## Syntax

```powershell
Get-OVIloSso
    [-InputObject] <Object>
    [-RemoteConsoleOnly]
    [-IloRestSession]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
Get-OVIloSso
    [-InputObject] <Object>
    [-IloRestSession]
    [-SkipCertificateCheck]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Obtain an iLO SSO Token URL to authenticate to an iLO.  If the server hardware is unsupported, the resulting URL will not use SSO and the iLO web interface will prompt for credentials.

{% hint style="info" %}
this is not supported on G7 or earlier servers.
{% endhint %}


The generated SSO object or URL can be used with other HPE libraries that support iLO session tokens.

{% hint style="info" %}
Minimum required privileges: Read-only. Know that your user account role within OneView will be mapped to a specific iLO role.  Please review the HPE OneView online help for more information, searching for 
{% endhint %}
"Mapping of SSO roles".
## Examples

###  Example 1 

```powershell
$SSOObjects = Get-OVServer | Get-OVIloSso
```

Generate iLO SSO Objects for all managed server resources.

###  Example 2 

```powershell
$SSOObject = Get-OVServer -Name "Enc1, bay 1" | Get-OVIloSso
```

Generate iLO SSO Object for the specified managed server resource.

###  Example 3 

```powershell
$SSOObject = Get-OVServerProfile -Name "My Server Profile" | Get-OVIloSso
```

Generate iLO SSO Object for the specified managed server resource.

###  Example 4 

```powershell
$IloSession = Get-OVServer -Name "Enc1, bay 1" | Get-OVIloSso -IloRestSession
```

Generate iLO SSO Object that can then be used with the HPRESTCmdlets.

## Parameters

### -InputObject &lt;Object&gt;

The Server Hardware or Server Profile resource object from Get-OVServer or Get-OVServerProfile.

| Aliases | Server |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -RemoteConsoleOnly &lt;SwitchParameter&gt;

Generate an SSO URL Token for accessing the Remote Console.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -IloRestSession &lt;SwitchParameter&gt;

Generate an HPRESTCmdlets compliant IloSession object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -SkipCertificateCheck &lt;SwitchParameter&gt;

Skips certificate validation checks that include all validations such as expiration, revocation, trusted root authority, etc.

[WARNING]:  Using this parameter is not secure and is not recommended. This switch is only intended to be used against known hosts using a self-signed certificate for testing purposes. Use at your own risk.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

Server Hardware resource object.

_**HPEOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

Server Profile resource object.

## Return Values

_**System.Management.Automation.PSCustomObject**_

SSO Url Object

_**System.Array**_

Multiple SSO URL objects.

## Related Links

* [Get-OVServer](get-ovserver.md)
* [Get-OVServerProfile](get-ovserverprofile.md)
