---
description: Download appliance audit log.
---

# Get-HPOVAuditLogArchive

## Syntax

```text
Get-HPOVAuditLogArchive
    [-Location] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Use this Cmdlet to download the on appliance audit log.

## Examples

### Example 1

```text
Get-HPOVAuditLogArchive c:\Temp
```

Save the Appliance audit log archive to C:\Temp

## Parameters

### -Location &lt;String&gt;

The full path to where the audit log will be saved to. If omitted, current directory location will be used.

| Aliases | save |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(get-location).Path` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

One or more Appliance Connection Objects, Connection ID, or Connection Name. If omitted, all connected appliances will be processed.

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

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**The generated audit log File**_

## Related Links

