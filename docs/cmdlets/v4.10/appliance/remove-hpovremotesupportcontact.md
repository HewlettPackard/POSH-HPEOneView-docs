---
description: Remove a Remote Support contact.
---

# Remove-HPOVRemoteSupportContact

## Syntax

```text
Remove-HPOVRemoteSupportContact
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to remove an existing Remote Support Contact.  The Default contact cannot be removed, and at least 1 contact must be configured before attempting to register the appliance with HPE support using the Set-HPOVRemoteSupport Cmdlet. 

## Examples

###  Example 1 

```text
New-HPOVRemoteSupportContact -Firstname Rebert -Lastname Jones -Email robert.jones@domain.local -PrimaryPhone 123-111-2222 -AlternatePhone 111-333-4444 -Language en -Default

```

Configure a new user who is the default contact.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-Contact]
The contacts first or given name.

| Aliases | Contact |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

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

_**HPOneView.Appliance.RemoteSupport.Contact [System.Management.Automation.PSCustomObject]**_

A Remote Support Contact from Get-HPOVRemoteSupportContact.

## Return Values

_**System.Management.Automation.PSCustomObject**_

Resource deleted response.


## Related Links

* [Get-HPOVRemoteSupportContact](get-hpovremotesupportcontact.md)
* [New-HPOVRemoteSupportContact](new-hpovremotesupportcontact.md)
