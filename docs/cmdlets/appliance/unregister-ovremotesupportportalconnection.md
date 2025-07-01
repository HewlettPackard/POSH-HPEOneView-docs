---
description: Unregister appliance from the HPE Support Center
---

# Unregister-OVRemoteSupportPortalConnection

## Syntax

```powershell
Unregister-OVRemoteSupportPortalConnection
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The Hewlett Packard Enterprise Support Center (HPESC) integration enables you to securely register the HPE OneView Remote Support client with your HPESC group. It can be a private or shared group. Registering remote support with HPESC improves case visibility for the cases originating from the client. After registration, all the group members can view the cases originating from the client.

This feature provides an improvement over the existing contact-based access. It does not require explicit contact matching and allows you to share case content with all the HPESC group members.

Use this Cmdlet to unregister the appliance from the HPESC.

???+ info
    Minimum required privileges:
    
    * Infrastructure Administrator

## Examples

###  Example 1 

```powershell
Unregister-OVRemoteSupportPortalConnection

```

Unregister appliance with HPESC.

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

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Appliance.RemoteSupport.PortalConnection"
    The current appliance secure connection status to the HPE Support Center.
    
    

## Related Links

* [Get-OVRemoteSupportPortalConnectionStatus](get-ovremotesupportportalconnectionstatus.md)
* [Register-OVRemoteSupportPortalConnection](register-ovremotesupportportalconnection.md)
