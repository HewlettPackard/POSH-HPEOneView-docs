---
description: Configure new Remote Support contact.
---

# New-OVRemoteSupportContact

## Syntax

```powershell
New-OVRemoteSupportContact
    [-Firstname] <String>
    [-Lastname] <String>
    [-Email] <String>
    [-PrimaryPhone] <String>
    [-AlternatePhone <String>]
    [-Language <String>]
    [-SpecialInstructions <String>]
    [-Default]
    [-DefaultSecondary]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to create a new Remote Support Contact.  The Remote Support Contact is used to identify authorized users HPE Support can contact for service events.  Only a single contact can be defined as the Default.  The Default contact cannot be removed, and at least 1 contact must be configured before attempting to register the appliance with HPE support using the Set-OVRemoteSupport Cmdlet. 

## Examples

###  Example 1 

```powershell
New-OVRemoteSupportContact -Firstname Rebert -Lastname Jones -Email robert.jones@domain.local -PrimaryPhone 123-111-2222 -AlternatePhone 111-333-4444 -Language en -Default
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

### -SpecialInstructions &lt;String&gt;

The contacts special instructions.

| Aliases | Notes |
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

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DefaultSecondary &lt;SwitchParameter&gt;

Use to indicate if the specified contact should be the appliance default secondary contact.

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.RemoteSupport.Contact [System.Management.Automation.PSCustomObject]"
    The created Remote Support Contact.
    

## Related Links

* [Get-OVRemoteSupportContact](get-ovremotesupportcontact.md)
* [Remove-OVRemoteSupportContact](remove-ovremotesupportcontact.md)
