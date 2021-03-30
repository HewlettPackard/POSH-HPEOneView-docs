---
description: Download appliance audit log.
---

# Get-HPOVAuditLogArchive

## Syntax

```text
Get-HPOVAuditLogArchive
    [-Location <System.IO.FileInfo>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to download the on appliance audit log.

## Examples

###  Example 1 

```text
Get-HPOVAuditLogArchive c:\Temp
```

Save the Appliance audit log archive to C:\Temp

## Parameters

### -Location &lt;System.IO.FileInfo&gt;

The full path to where the audit log will be saved to.  If omitted, current directory location will be used.

| Aliases | save |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (get-location).Path |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

One or more Appliance Connection Objects, Connection ID, or Connection Name.  If omitted, all connected appliances will be processed.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.IO.FileInfo**_

The generated audit log File

## Related Links

