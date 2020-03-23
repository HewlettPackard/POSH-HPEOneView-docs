---
description: Disable appliance two-factor authentication settings.
---

# Disable-HPOVApplianceTwoFactorAuthentication

## Syntax

```text
Disable-HPOVApplianceTwoFactorAuthentication
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to disable two-factor authentication on the appliance.

Enabling two-factor authentication allows you to use smart cards ï¿½ for example, Common Access Cards (CAC), or Personal Identity Verification (PIV) cards ï¿½ to authenticate within HPE OneView. The client certificate embedded in the smart card is presented to HPE OneView by the library. The client certificate must be signed by a root or intermediate Certificate Authority (CA) that has been previously imported into the HPE OneView appliance. The appliance authenticates the client certificate to validate that the user name specified in the certificate is that of a valid user recognized by the directory server configuration in HPE OneView.

When two-factor authentication is enabled, HPE OneView uses a Microsoft Active Directory service account set up and owned by the user to access an Active Directory entry for the user, rather than using an account associated with the user name received during first time login.

Use this Cmdlet to configure two factor authentication state of the connected appliance.  An Active Directory authentication directoyr must be configured, with a Service Account, and the root or issuing certificate authority Base64 certificate must be uploaded to appliance.

Required: Infrastructure administrator

## Examples

###  Example 1 

```text
Disable-HPOVApplianceTwoFactorAuthentication

```

Disable `two-factor` authentication on the connected appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

Appliance global security settings.


## Related Links

* [Get-HPOVApplianceTwoFactorAuthentication](get-hpovappliancetwofactorauthentication.md)
* [Set-HPOVApplianceTwoFactorAuthentication](set-hpovappliancetwofactorauthentication.md)
