---
description: Remove X.509 SSL certificates from the appliace trusted store.
---

# Remove-HPOVApplianceTrustedCertificate

## Syntax

```text
Remove-HPOVApplianceTrustedCertificate
    [-InputObject <String>]
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

## Description

This Cmdlet will allow the Infrastructure Administrator to remove X.509 compliant SSL certificates on the appliance within its trusted store.

## Examples

###  Example 1 

```text
Get-HPOVApplianceTrustedCertificate -AliasName myhost1.domain.com | Remove-HPOVApplianceTrustedCertificate
```

Remove the specific trusted certificate from the appliances trusted certificate store.

## Parameters

### -InputObject &lt;String&gt;

Aliases [-Certificate]

The Alias Name of the certificate.  Please know that wildcard is not supported.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` objects or Name property values.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.TrustedCertificate**_

A trusted certificate from [`Get-HPOVApplianceTrustedCertificate`](get-hpovappliancetrustedcertificate.md).

## Return Values

_**System.Management.Automation.PSCustomObject**_

Status oject of successfull deletion of trusted certificate.

## Related Links

* [Add-HPOVApplianceTrustedCertificate](add-hpovappliancetrustedcertificate.md)
* [Get-HPOVApplianceTrustedCertificate](get-hpovappliancetrustedcertificate.md)
