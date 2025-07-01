---
description: Retrieve Remote Support Default Site.
---

# New-OVRemoteSupportPartner

## Syntax

```powershell
New-OVRemoteSupportPartner
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

###  Example 1 

```powershell
New-OVRemoteSupportPartner -Name "My Authorized Partner" -Type Reseller -PartnerId 123456
```

Define a new authorized HPE Reseller partner.

###  Example 2 

```powershell
New-OVRemoteSupportPartner -Name "My Authorized Partner" -Type Support -PartnerId 123456 -Default
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

Specify if the authorized partner is a Reseller or Support.  If requiring a partner that is both Support and a Reseller, create it twice.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Default &lt;SwitchParameter&gt;

Use to specify if the partner should be the default Support or Reseller partner.  All supproted monitored resources by default will inherit from the appliance.

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.RemoteSupport.Partner [System.Management.Automation.PSCustomObject]"
    Newly created Remote Support Partner.
    

## Related Links

* [Get-OVRemoteSupportPartner](get-ovremotesupportpartner.md)
* [Remove-OVRemoteSupportPartner](remove-ovremotesupportpartner.md)
