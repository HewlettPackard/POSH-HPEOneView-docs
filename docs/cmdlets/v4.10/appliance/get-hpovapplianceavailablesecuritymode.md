---
description: Get appliance available security modes.
---

# Get-HPOVApplianceAvailableSecurityMode

## Syntax

```text
Get-HPOVApplianceAvailableSecurityMode
    [-ModeName <String[]>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to get the appliances available security modes and the current mode. Security Modes adjust the allowed security protocols \(TLS\) and their associated cyphers.

## Examples

### Example 1

```text
Get-HPOVApplianceAvailableSecurityMode
```

Return all available security modes on the appliance.

### Example 2

```text
Get-HPOVApplianceAvailableSecurityMode -ModeName CNSA
```

Return the CNSA available security mode on the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Aliases \[-Appliance\]

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### -ModeName &lt;String\[\]&gt;

The name of the mode to return. Allowed values:

* Legacy
* FIPS
* CNSA

Default: Return all available security modes.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.SecurityMode**_

The available appliance security mode, including which mode is set as the current value.

## Related Links

