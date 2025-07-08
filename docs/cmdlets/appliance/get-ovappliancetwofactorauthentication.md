---
description: Get appliance two-factor configuration.
---

# Get-OVApplianceTwoFactorAuthentication

## Syntax

```powershell
Get-OVApplianceTwoFactorAuthentication
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Enabling two-factor authentication allows you to use smart cards - for example, Common Access Cards (CAC), or Personal Identity Verification (PIV) cards - to authenticate within HPE OneView. The client certificate embedded in the smart card is presented to HPE OneView by the library. The client certificate must be signed by a root or intermediate Certificate Authority (CA) that has been previously imported into the HPE OneView appliance. The appliance authenticates the client certificate to validate that the user name specified in the certificate is that of a valid user recognized by the directory server configuration in HPE OneView.

When two-factor authentication is enabled, HPE OneView uses a Microsoft Active Directory service account set up and owned by the user to access an Active Directory entry for the user, rather than using an account associated with the user name received during first time login.

Use this Cmdlet to get two factor authentication state of the connected appliance. Infrastructure administrator role is required.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVApplianceTwoFactorAuthentication
```

Get the appliance two-factor authentication configuration.

## Parameters

### -ApplianceConnection &lt;Array&gt;

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.Security.TwoFactorAuthConfiguration"
    Appliance two-factor security settings.
    

## Related Links

* [Disable-OVApplianceTwoFactorAuthentication](disable-ovappliancetwofactorauthentication.md)
* [Set-OVApplianceTwoFactorAuthentication](set-ovappliancetwofactorauthentication.md)
