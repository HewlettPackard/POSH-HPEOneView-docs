---
description: Retrieve defined Support and Reseller partners.
---

# Get-HPOVRemoteSupportPartner

## Syntax

```text
Get-HPOVRemoteSupportPartner
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to retreive defined Remote Support partners that are authorized HPE Resellers and/or Support. 

## Examples

###  Example 1 

```text
Get-HPOVRemoteSupportPartner

```

Get all configured report support partners.

## Parameters

### -Name &lt;String&gt;

Name of the HPE Partner.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
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
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.RemoteSupport.Partner [System.Management.Automation.PSCustomObject]**_

Defined HPE authorized reseller and/or support partners.


## Related Links

* [New-HPOVRemoteSupportPartner](new-hpovremotesupportpartner.md)
* [Remove-HPOVRemoteSupportPartner](remove-hpovremotesupportpartner.md)
