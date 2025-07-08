---
description: Change the appliance current security protocols. 
---

# Set-OVApplianceSecurityProtocol

## Syntax

```powershell
Set-OVApplianceSecurityProtocol
    [-EnableTlsVersion] <String[]>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to change the enabled security protocol(s) on the appliance. The security protocols that can be changed on an HPE OneView appliance are TLS protocol versions.  Please be aware of the following rules:

* Enabling or disabling TLS protocols is allowed only for the current cryptography mode. For example, disabling TLSv1.1 in legacy mode of the appliance will not disable TLSv1.1 when the appliance is switched to FIPS mode.
* Enabling an unsupported protocol for the current cryptography mode of the appliance is not allowed. For example, enabling TLSv1 is not allowed in the FIPS mode.
* TLSv1.2 protocol cannot be disabled
* Disabling all the protocols is not allowed.

???+ warning
    Changing active security protocol(s) will require an immediate appliance reboot.


???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Set-OVApplianceSecurityProtocol -EnableTlsVersion Tlsv1.2
```

Set the appliance to only enable TLSv1.2. After confirmation prompt, appliance will immediately reboot.

###  Example 2 

```powershell
Set-OVApplianceSecurityProtocol -EnableTlsVersion Tlsv1, Tlsv1.1, Tlsv1.2
```

Set the appliance to enable all three supported TLS protocol versions. After confirmation prompt, appliance will immediately reboot.

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

### -EnableTlsVersion &lt;String[]&gt;

Specify 1 or more security protocols to enable. Allowed values:

* TLSv1
* TLSv1.1
* TLSv1.2

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.SecurityProtocol"
    After appliance reboots, the updated security protocol configuration is returned.
    

## Related Links

* [Get-OVApplianceSecurityProtocol](get-ovappliancesecurityprotocol.md)
* [Show-OVApplianceSecurityModeCompatibilityReport](show-ovappliancesecuritymodecompatibilityreport.md)
