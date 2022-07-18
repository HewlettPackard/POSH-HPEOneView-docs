---
description: Remove a Remote Support contact.
---

# Remove-OVRemoteSupportContact

## Syntax

```powershell
Remove-OVRemoteSupportContact
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to remove an existing Remote Support Contact.  The Default contact cannot be removed, and at least 1 contact must be configured before attempting to register the appliance with HPE support using the Set-OVRemoteSupport Cmdlet. 

## Examples

###  Example 1 

```powershell
New-OVRemoteSupportContact -Firstname Rebert -Lastname Jones -Email robert.jones@domain.local -PrimaryPhone 123-111-2222 -AlternatePhone 111-333-4444 -Language en -Default
```

Configure a new user who is the default contact.

## Parameters

### -InputObject &lt;Object&gt;

The contacts first or given name.

| Aliases | Contact |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

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

_**HPEOneView.Appliance.RemoteSupport.Contact [System.Management.Automation.PSCustomObject]**_

A Remote Support Contact from Get-OVRemoteSupportContact.

## Return Values

_**System.Management.Automation.PSCustomObject**_

Resource deleted response.

## Related Links

* [Get-OVRemoteSupportContact](get-ovremotesupportcontact.md)
* [New-OVRemoteSupportContact](new-ovremotesupportcontact.md)
