---
description: Remove State Change Message Bus certificate from appliance.
---

# Remove-OVScmbCertificate

## Syntax

```powershell
Remove-OVScmbCertificate
    [<CommonParameters>]
```

```powershell
Remove-OVScmbCertificate
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Remove the State Change Message Bus (SCMB) and Metric Streaming Message Bug (MSMB) read only account (rabbitmq_readonly) certificate key pair from an appliance.

## Examples

###  Example 1 

```powershell
Remove-OVScmbCertificates
```

Remove the SCMB (rabbitmq_readonly) certificate key pair from an appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

Resource deleted response.

## Related Links

* [Get-OVScmbCertificates](get-ovscmbcertificates.md)
