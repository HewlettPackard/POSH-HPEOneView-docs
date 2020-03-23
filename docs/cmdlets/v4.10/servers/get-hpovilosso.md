---
description: Generate iLO SSO Token.
---

# Get-HPOVIloSso

## Syntax

```text
Get-HPOVIloSso
    [-InputObject] <Object>
    [-RemoteConsoleOnly]
    [-IloRestSession]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```text
Get-HPOVIloSso
    [-InputObject] <Object>
    [-IloRestSession]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Obtain an iLO SSO Token URL to authenticate to an iLO.  If the server hardware is unsupported, the resulting URL will not use SSO and the iLO web interface will prompt for credentials. Note, this is not supported on G7 or earlier servers.

## Examples

###  Example 1 

```text
$SSOObjects = Get-HPOVServer | Get-HPOVIloSso

```

Generate iLO SSO Objects for all managed server resources.

###  Example 2 

```text
$SSOObject = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso

```

Generate iLO SSO Object for the specified managed server resource.

###  Example 3 

```text
$SSOObject = Get-HPOVServerProfile -Name "My Server Profile" | Get-HPOVIloSso

```

Generate iLO SSO Object for the specified managed server resource.

###  Example 4 

```text
$IloSession = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso -IloRestSession

```

Generate iLO SSO Object that can then be used with the HPRESTCmdlets.

## Parameters

### -InputObject &lt;Object&gt;

The Server Hardware or Server Profile resource object from `Get-HPOVServer` or `Get-HPOVServerProfile`.

| Aliases | Server |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -RemoteConsoleOnly &lt;SwitchParameter&gt;

Generate an SSO URL Token for accessing the Remote Console.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IloRestSession &lt;SwitchParameter&gt;

Generate an HPRESTCmdlets compliant IloSession object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

Server Hardware resource object.


_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

Server Profile resource object.


## Return Values

_**System.Management.Automation.PSCustomObject**_

SSO Url Object


_**System.Array**_

Multiple SSO URL objects.


## Related Links

