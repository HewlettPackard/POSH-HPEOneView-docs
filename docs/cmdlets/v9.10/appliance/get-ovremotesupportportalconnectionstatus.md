---
description: Get appliance connection status to HPE Support Center
---

# Get-OVRemoteSupportPortalConnectionStatus

## Syntax

```powershell
Get-OVRemoteSupportPortalConnectionStatus
    [-GetGeneratedToken]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The Hewlett Packard Enterprise Support Center (HPESC) integration enables you to securely register the HPE OneView Remote Support client with your HPESC group. It can be a private or shared group. Registering remote support with HPESC improves case visibility for the cases originating from the client. After registration, all the group members can view the cases originating from the client.

This feature provides an improvement over the existing contact-based access. It does not require explicit contact matching and allows you to share case content with all the HPESC group members.

Use this Cmdlet to get the current portal registration status.  To establish a secure connection, you use Register-OVRemoteSupportPortalConnection Cmdlet.  To disconnect the appliance connection to the HPE Support Center, use the Unregister-OVRemoteSupportPortalConnection Cmdlet.

You can also view the connection details on the My Remote Support Connections page in HPESC.

If the appliance has not completed registration, you can retrieve the token with the -GetGeneratedToken switch parameter.

## Examples

###  Example 1 

```powershell
Get-OVRemoteSupportPortalConnectionStatus

```

Get the appliances current connection status to the HPE Support Center.

###  Example 2 

```powershell
Get-OVRemoteSupportPortalConnectionStatus -GetGeneratedToken

```

Get the appliances generated token.  If still valid, can be used to complet appliance registration in the HPE Support Center.

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

### -GetGeneratedToken &lt;SwitchParameter&gt;

Use to return the current token used to onboard the appliance to the HPE Support Center.

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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPEOneView.Appliance.RemoteSupport.PortalConnectionToken**_

If the `-GetGeneratedToken` switch parameter is used, return the generated token class.


_**HPEOneView.Appliance.RemoteSupport.PortalConnection**_

The current appliance secure connection status to the HPE Support Center.


## Related Links

