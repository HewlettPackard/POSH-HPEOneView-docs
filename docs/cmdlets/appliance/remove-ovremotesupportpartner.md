---
description: Remove Remote Support support and reseller partners.
---

# Remove-OVRemoteSupportPartner

## Syntax

```powershell
Remove-OVRemoteSupportPartner
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to remove defined Remote Support partner from a specified or all appliances. 

## Examples

###  Example 1 

```powershell
Get-OVRemoteSupportPartner -Name "ABC IT Vendor" -ErrorAction Stop | Remove-OVRemoteSupportPartner
```

Remove the specified remote support partner from the appliance.

## Parameters

### -InputObject &lt;Object&gt;

Remote Suport partner resource object, from Get-OVRemoteSupportPartner.

| Aliases | Partner |
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

=== "HPEOneView.Appliance.RemoteSupport.Partner [System.Management.Automation.PSCustomObject]"
    Remote Suport partner resource from Get-OVRemoteSupportPartner.
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    Object with status confirmation the resource was deleted.
    

## Related Links

* [Get-OVRemoteSupportPartner](get-ovremotesupportpartner.md)
* [New-OVRemoteSupportPartner](new-ovremotesupportpartner.md)
