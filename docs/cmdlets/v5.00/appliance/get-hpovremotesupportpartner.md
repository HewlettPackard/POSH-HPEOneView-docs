﻿---
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

The Partner ID uniquely identifies a partner as an HPE Authorized Partner. Hewlett Packard Enterprise is the default channel partner if no other channel partner is assigned.

HPE Authorized Resellers

By enabling remote support, you enable the reseller to access configuration reports and contract warranty reports in Insight Online in the HPE Support Center, as well as configuration details and some contract and warranty details.

HPE Authorized Service Partners

In addition to the above information provided to Authorized Resellers, the Service Partner has access to service event status and reports, with links into the HPE Channel Services Network portal.

Use this Cmdlet to Retrieve defined Remote Support partners that are authorized HPE Resellers and/or Support.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

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

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.RemoteSupport.Partner [System.Management.Automation.PSCustomObject]**_

Defined HPE authorized reseller and/or support partners.

## Related Links

* [Get-HPOVRemoteSupport](get-hpovremotesupport.md)
* [New-HPOVRemoteSupportPartner](new-hpovremotesupportpartner.md)
* [Remove-HPOVRemoteSupportPartner](remove-hpovremotesupportpartner.md)
