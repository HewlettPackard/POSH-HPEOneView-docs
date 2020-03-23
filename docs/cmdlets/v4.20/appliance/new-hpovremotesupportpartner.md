---
description: Retrieve Remote Support Default Site.
---

# New-HPOVRemoteSupportPartner

## Syntax

```text
New-HPOVRemoteSupportPartner
    [-Name] <String>
    [-Type] <String>
    [-PartnerId] <Int>
    [-Default]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to retrieve the configured default site.

## Examples

### Example 1

```text
New-HPOVRemoteSupportPartner -Name "My Authorized Partner" -Type Reseller -PartnerId 123456
```

Define a new authorized HPE Reseller partner.

### Example 2

```text
New-HPOVRemoteSupportPartner -Name "My Authorized Partner" -Type Support -PartnerId 123456 -Default
```

Define a new authorized HPE Support partner, and make it the default appliance Support partner.

## Parameters

### -Name &lt;String&gt;

Supply the Partner Name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PartnerID &lt;Int&gt;

The HPE Authorized Support and/or Reseller Partner ID.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Type &lt;String&gt;

Specify if the authorized partner is a Reseller or Support. If requiring a partner that is both Support and a Reseller, create it twice.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Default &lt;SwitchParameter&gt;

Use to specify if the partner should be the default Support or Reseller partner. All supproted monitored resources by default will inherit from the appliance.

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
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.RemoteSupport.Partner \[System.Management.Automation.PSCustomObject\]**_

Newly created Remote Support Partner.

## Related Links

* [Get-HPOVRemoteSupportPartner](get-hpovremotesupportpartner.md)
* [Remove-HPOVRemoteSupportPartner](../../v5.00/appliance/remove-hpovremotesupportpartner.md)

