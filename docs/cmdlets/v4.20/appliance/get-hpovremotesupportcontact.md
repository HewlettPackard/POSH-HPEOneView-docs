---
description: Retrieve configured Remote Support contacts.
---

# Get-HPOVRemoteSupportContact

## Syntax

```text
Get-HPOVRemoteSupportContact
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to get the configured Remote Support contacts defined on the appliance. 

## Examples

###  Example 1 

```text
Get-HPOVRemoteSupportContact

```

List all configured Remote Support Contacts.

###  Example 2 

```text
Get-HPOVRemoteSupportContact -Name "Bob*"

```

List all contacts with the name Bob, using the * wildcard character.

## Parameters

### -Name &lt;String&gt;

Full ("Bob Smith") or partial ("Bob*") name of the contact.  When using partial names, please include the * (asterisk) wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

The configured Remote Support Contact.

## Related Links

* [New-HPOVRemoteSupportContact](new-hpovremotesupportcontact.md)
* [Remove-HPOVRemoteSupportContact](remove-hpovremotesupportcontact.md)
