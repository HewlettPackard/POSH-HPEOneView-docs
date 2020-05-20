---
description: Remove Remote Support support and reseller partners.
---

# Remove-HPOVRemoteSupportPartner

## Syntax

```text
Remove-HPOVRemoteSupportPartner
    [-InputObject] <>
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to remove defined Remote Support partner from a specified or all appliances. 

## Examples

###  Example 1 

```text
Get-HPOVRemoteSupportPartner -Name "ABC IT Vendor" -ErrorAction Stop | Remove-HPOVRemoteSupportPartner
```

Remove the specified remote support partner from the appliance.

## Parameters

### -InputObject &lt;&gt;

Remote Suport partner resource object, from `Get-HPOVRemoteSupportPartner`.

| Aliases | Partner |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**HPOneView.Appliance.RemoteSupport.Partner [System.Management.Automation.PSCustomObject]**_

Remote Suport partner resource from [`Get-HPOVRemoteSupportPartner`](get-hpovremotesupportpartner.md).

## Return Values

_**System.Management.Automation.PSCustomObject**_

Object with status confirmation the resource was deleted.

## Related Links

* [Get-HPOVRemoteSupportPartner](get-hpovremotesupportpartner.md)
* [New-HPOVRemoteSupportPartner](new-hpovremotesupportpartner.md)
