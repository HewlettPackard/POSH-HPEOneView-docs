---
description: Change the appliance current security protocols. 
---

# Set-HPOVApplianceSecurityProtocol

## Syntax

```text
Set-HPOVApplianceSecurityProtocol
    [-EnableTlsVersion] <String[]>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to change the enabled security protocol(s) on the appliance. Before modifying the security protocols, a compatibility report should be run using the Show-HPOVApplianceSecurityModeCompatibilityReport.  Please be aware of the following rules:

    * Enabling or disabling TLS protocols is allowed only for the current cryptography mode. For example, disabling TLSv1.1 in legacy mode of the appliance will not disable TLSv1.1 when the appliance is switched to FIPS mode.
    * Enabling an unsupported protocol for the current cryptography mode of the appliance is not allowed. For example, enabling TLSv1 is not allowed in the FIPS mode.
    * TLSv1.2 protocol cannot be disabled
    * Disabling all the protocols is not allowed.

{% hint style="info" %}
Changing active security protocols will require an immediate appliance reboot.
{% endhint %}


{% hint style="warning" %}
 Not all devices that HPE OneView manages or monitors support these stronger cryptography modes. Some examples are:
{% endhint %}


    * ProLiant Gen 6 systems have iLO versions that only support TLS 1.0. These servers are not supported when the appliance is in the FIPS or CNSA modes.
    * Gen7 systems have iLO versions that only support TLS 1.0 and 1.1. These servers are not supported when the appliance is in the CNSA mode.
    * ProLiant Gen8 systems have iLO versions that support TLS 1.1 and 1.2, and are compatible with both FIPS and CNSA modes.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator
{% endhint %}

## Examples

###  Example 1 

```text
Set-HPOVApplianceSecurityProtocol -EnableTlsVersion Tlsv1.2
```

Set the appliance to only enable TLSv1.2. After confirmation prompt, appliance will immediately reboot.

###  Example 2 

```text
Set-HPOVApplianceSecurityProtocol -EnableTlsVersion Tlsv1, Tlsv1.1, Tlsv1.2
```

Set the appliance to enable all three supported TLS protocol versions. After confirmation prompt, appliance will immediately reboot.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.SecurityProtocol**_

After appliance reboots, the updated security protocol configuration is returned.

## Related Links

* [Get-HPOVApplianceSecurityProtocol](get-hpovappliancesecurityprotocol.md)
* [Show-HPOVApplianceSecurityModeCompatibilityReport](show-hpovappliancesecuritymodecompatibilityreport.md)
