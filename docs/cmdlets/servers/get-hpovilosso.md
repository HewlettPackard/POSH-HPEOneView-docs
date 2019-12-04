---
description: Generate iLO SSO Token.
---

# Get-HPOVIloSso

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVIloSso [-InputObject] <Object> [[-RemoteConsoleOnly] <SwitchParameter>] [[-IloRestSession] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVIloSso [-InputObject] <Object> [[-IloRestSession] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Obtain an iLO SSO Token URL to authenticate to an iLO. If the server hardware is unsupported, the resulting URL will not use SSO and the iLO web interface will prompt for credentials.

{% hint style="warning" %}
This is not supported on G7 or earlier servers.
{% endhint %}

The generated SSO object or URL can be used with other HPE libraries that support iLO session tokens.

{% hint style="info" %}
Minimum required privileges: Read-only. Know that your user account role within OneView will be mapped to a specific iLO role. Please review the HPE OneView online help for more information, searching for "Mapping of SSO roles".

Obtain an iLO SSO Token URL to authenticate to an iLO. If the server hardware is unsupported, the resulting URL will not use SSO and the iLO web interface will prompt for credentials. 
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -IloRestSession &lt;SwitchParameter&gt; 

Generate an HPRESTCmdlets compliant IloSession object.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The Server Hardware or Server Profile resource object from Get-HPOVServer or Get-HPOVServerProfile.

| Aliases | Server |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -RemoteConsoleOnly &lt;SwitchParameter&gt; 

Generate an SSO URL Token for accessing the Remote Console.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\]**_

Server Hardware resource object.

_**HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\]**_

Server Profile resource object.

### Return Values

_**System.Management.Automation.PSCustomObject**_

SSO Url Object

_**System.Array**_

Multiple SSO URL objects.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$SSOObjects = Get-HPOVServer | Get-HPOVIloSso
```

Generate iLO SSO Objects for all managed server resources.

```text
 -------------------------- EXAMPLE 2 --------------------------
$SSOObject = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso
```

Generate iLO SSO Object for the specified managed server resource.

```text
 -------------------------- EXAMPLE 3 --------------------------
$SSOObject = Get-HPOVServerProfile -Name "My Server Profile" | Get-HPOVIloSso
```

Generate iLO SSO Object for the specified managed server resource.

```text
 -------------------------- EXAMPLE 4 --------------------------
$IloSession = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso -IloRestSession
```

Generate iLO SSO Object that can then be used with the HPRESTCmdlets. 

### Related Links 

* Get-HPOVServer
* Get-HPOVServerProfile

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVIloSso [-InputObject] <Object> [[-RemoteConsoleOnly] <SwitchParameter>] [[-IloRestSession] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVIloSso [-InputObject] <Object> [[-IloRestSession] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Obtain an iLO SSO Token URL to authenticate to an iLO. If the server hardware is unsupported, the resulting URL will not use SSO and the iLO web interface will prompt for credentials.

{% hint style="warning" %}
This is not supported on G7 or earlier servers.
{% endhint %}

The generated SSO object or URL can be used with other HPE libraries that support iLO session tokens.

{% hint style="info" %}
Minimum required privileges: Read-only. Know that your user account role within OneView will be mapped to a specific iLO role. Please review the HPE OneView online help for more information, searching for "Mapping of SSO roles".

Obtain an iLO SSO Token URL to authenticate to an iLO. If the server hardware is unsupported, the resulting URL will not use SSO and the iLO web interface will prompt for credentials. 
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -IloRestSession &lt;SwitchParameter&gt; 

Generate an HPRESTCmdlets compliant IloSession object.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The Server Hardware or Server Profile resource object from Get-HPOVServer or Get-HPOVServerProfile.

| Aliases | Server |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -RemoteConsoleOnly &lt;SwitchParameter&gt; 

Generate an SSO URL Token for accessing the Remote Console.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\]**_

Server Hardware resource object.

_**HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\]**_

Server Profile resource object.

### Return Values

_**System.Management.Automation.PSCustomObject**_

SSO Url Object

_**System.Array**_

Multiple SSO URL objects.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$SSOObjects = Get-HPOVServer | Get-HPOVIloSso
```

Generate iLO SSO Objects for all managed server resources.

```text
 -------------------------- EXAMPLE 2 --------------------------
$SSOObject = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso
```

Generate iLO SSO Object for the specified managed server resource.

```text
 -------------------------- EXAMPLE 3 --------------------------
$SSOObject = Get-HPOVServerProfile -Name "My Server Profile" | Get-HPOVIloSso
```

Generate iLO SSO Object for the specified managed server resource.

```text
 -------------------------- EXAMPLE 4 --------------------------
$IloSession = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso -IloRestSession
```

Generate iLO SSO Object that can then be used with the HPRESTCmdlets. 

### Related Links 

* Get-HPOVServer
* Get-HPOVServerProfile

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVIloSso [-InputObject] <Object> [[-RemoteConsoleOnly] <SwitchParameter>] [[-IloRestSession] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVIloSso [-InputObject] <Object> [[-IloRestSession] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Obtain an iLO SSO Token URL to authenticate to an iLO. If the server hardware is unsupported, the resulting URL will not use SSO and the iLO web interface will prompt for credentials.

{% hint style="warning" %}
This is not supported on G7 or earlier servers.
{% endhint %}

The generated SSO object or URL can be used with other HPE libraries that support iLO session tokens.

{% hint style="info" %}
Minimum required privileges: Read-only. Know that your user account role within OneView will be mapped to a specific iLO role. Please review the HPE OneView online help for more information, searching for "Mapping of SSO roles".

Obtain an iLO SSO Token URL to authenticate to an iLO. If the server hardware is unsupported, the resulting URL will not use SSO and the iLO web interface will prompt for credentials. 
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -IloRestSession &lt;SwitchParameter&gt; 

Generate an HPRESTCmdlets compliant IloSession object.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The Server Hardware or Server Profile resource object from Get-HPOVServer or Get-HPOVServerProfile.

| Aliases | Server |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -RemoteConsoleOnly &lt;SwitchParameter&gt; 

Generate an SSO URL Token for accessing the Remote Console.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\]**_

Server Hardware resource object.

_**HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\]**_

Server Profile resource object.

### Return Values

_**System.Management.Automation.PSCustomObject**_

SSO Url Object

_**System.Array**_

Multiple SSO URL objects.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$SSOObjects = Get-HPOVServer | Get-HPOVIloSso
```

Generate iLO SSO Objects for all managed server resources.

```text
 -------------------------- EXAMPLE 2 --------------------------
$SSOObject = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso
```

Generate iLO SSO Object for the specified managed server resource.

```text
 -------------------------- EXAMPLE 3 --------------------------
$SSOObject = Get-HPOVServerProfile -Name "My Server Profile" | Get-HPOVIloSso
```

Generate iLO SSO Object for the specified managed server resource.

```text
 -------------------------- EXAMPLE 4 --------------------------
$IloSession = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso -IloRestSession
```

Generate iLO SSO Object that can then be used with the HPRESTCmdlets. 

### Related Links 

* Get-HPOVServer
* Get-HPOVServerProfile



