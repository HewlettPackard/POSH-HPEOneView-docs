---
description: Configure new Remote Support contact.
---

# New-HPOVRemoteSupportContact

## Syntax

```text
New-HPOVRemoteSupportContact
    [-Firstname] <String>
    [-Lastname] <String>
    [-Email] <String>
    [-PrimaryPhone] <String>
    [-AlternatePhone <String>]
    [-Language <String>]
    [-Notes <String>]
    [-Default]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to create a new Remote Support Contact. The Remote Support Contact is used to identify authorized users HPE Support can contact for service events. Only a single contact can be defined as the Default. The Default contact cannot be removed, and at least 1 contact must be configured before attempting to register the appliance with HPE support using the `Set-HPOVRemoteSupport` Cmdlet.

## Examples

### Example 1

```text
New-HPOVRemoteSupportContact -Firstname Rebert -Lastname Jones -Email robert.jones@domain.local -PrimaryPhone 123-111-2222 -AlternatePhone 111-333-4444 -Language en -Default
```

Configure a new user who is the default contact.

## Parameters

### -Firstname &lt;String&gt;

The contacts first or given name.

| Aliases | GivenName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Lastname &lt;String&gt;

The contacts last or sur name.

| Aliases | Surname |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Email &lt;String&gt;

The contacts email address.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PrimaryPhone &lt;String&gt;

The contacts primary phone number.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AlternatePhone &lt;String&gt;

The contacts alternate phone number.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Language &lt;String&gt;

The contacts primary spoken language.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | en |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Notes &lt;String&gt;

The contacts special instructions.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Default &lt;SwitchParameter&gt;

Use to specify if this contact is the Default.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.RemoteSupport.Contact \[System.Management.Automation.PSCustomObject\]**_

The created Remote Support Contact.

## Related Links

* [Get-HPOVRemoteSupportContact](get-hpovremotesupportcontact.md)
* [Remove-HPOVRemoteSupportContact](remove-hpovremotesupportcontact.md)

