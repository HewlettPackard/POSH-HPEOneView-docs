---
description: Get fixme installation log file.
---

# Get-OVFixMeInstallationLog

## Syntax

```powershell
Get-OVFixMeInstallationLog
    [-Location <System.IO.DirectoryInfo>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will Retrieve any fixme patch installation log files needed by HPE Support to analyze for installation completion or errors.

???+ info
    Minimum required privileges: Infrastructure Administrator

## Examples

###  Example 1 

```powershell
Get-OVFixMeInstallationLog
```

Get the fixme installation logs for the connected appliance.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Location &lt;System.IO.DirectoryInfo&gt;

The directory location where to save the generated file to.  If omitted, will use the current working directory.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.IO.FileInfo"
    The downloaded log file.
    

## Related Links

