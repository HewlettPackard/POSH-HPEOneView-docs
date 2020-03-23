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

Use this Cmdlet to change the enabled security protocol\(s\) on the appliance. Before modifying the security protocols, a compatibility report should be run using the Show-HPOVApplianceSecurityModeCompatibilityReport.

**NOTE** When changing active security protocols will require an immediate appliance reboot. **NOTE**

Not all devices that HPE OneView manages or monitors support these stronger cryptography modes. Some examples are:

* ProLiant Gen 6 systems have iLO versions that only support TLS 1.0. These servers are not supported when the appliance is in the FIPS or CNSA modes.
* Gen7 systems have iLO versions that only support TLS 1.0 and 1.1. These servers are not supported when the appliance is in the CNSA mode.
* ProLiant Gen8 systems have iLO versions that support TLS 1.1 and 1.2, and are compatible with both FIPS and CNSA modes.

## Examples

### Example 1

```text
Set-HPOVApplianceSecurityProtocol -EnableTlsVersion Tlsv1.2
```

Set the appliance to only enable TLSv1.2. After confirmation prompt, appliance will immediately reboot.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### -EnableTlsVersion &lt;String\[\]&gt;

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

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.SecurityProtocol**_

After appliance reboots, the updated security protocol configuration is returned.

## Related Links

* [Get-HPOVApplianceSecurityProtocol](get-hpovappliancesecurityprotocol.md)

