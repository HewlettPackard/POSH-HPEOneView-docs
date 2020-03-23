---
description: Get the appliance SSL certificate status.
---

# Get-HPOVApplianceCertificateStatus

## Syntax

```text
Get-HPOVApplianceCertificateStatus
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This CMDLET will retrieve the SSL Certificate details installed on the appliance. This does not check the validity of the SSL certificate. Use the Get-HPOVApplianceCertificateStatus CMDLET to validate the certificate chain.

## Examples

### Example 1

```text
Get-HPOVApplianceCertificateStatus
```

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.ApplianceSslCertificateStatus \[System.Management.Automation.PSCustomObject\]**_

Formatted table display of the SSL Certificate object.

## Related Links

