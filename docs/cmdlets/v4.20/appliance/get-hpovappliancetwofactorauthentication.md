---
description: Get appliance two-factor configuration.
---

# Get-HPOVApplianceTwoFactorAuthentication

## Syntax

```text
Get-HPOVApplianceTwoFactorAuthentication
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Enabling `two-factor` authentication allows you to use smart cards ï¿½ for example, Common Access Cards \(CAC\), or Personal Identity Verification \(PIV\) cards ï¿½ to authenticate within HPE OneView. The client certificate embedded in the smart card is presented to HPE OneView by the library. The client certificate must be signed by a root or intermediate Certificate Authority \(CA\) that has been previously imported into the HPE OneView appliance. The appliance authenticates the client certificate to validate that the user name specified in the certificate is that of a valid user recognized by the directory server configuration in HPE OneView.

When `two-factor` authentication is enabled, HPE OneView uses a Microsoft Active Directory service account set up and owned by the user to access an Active Directory entry for the user, rather than using an account associated with the user name received during first time login.

Use this Cmdlet to get two factor authentication state of the connected appliance. Infrastructure administrator role is required.

## Examples

### Example 1

```text
Get-HPOVApplianceTwoFactorAuthentication
```

Get the appliance `two-factor` authentication configuration.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.Security.TwoFactorAuthConfiguration**_

Appliance two-factor security settings.

## Related Links

* [Disable-HPOVApplianceTwoFactorAuthentication](disable-hpovappliancetwofactorauthentication.md)
* [Set-HPOVApplianceTwoFactorAuthentication](set-hpovappliancetwofactorauthentication.md)

