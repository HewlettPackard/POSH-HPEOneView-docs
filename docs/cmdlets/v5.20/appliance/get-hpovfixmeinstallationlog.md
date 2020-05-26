---
description: Get fixme installation log file.
---

# Get-HPOVFixMeInstallationLog

## Syntax

```text
Get-HPOVFixMeInstallationLog
    [-Location <System.IO.DirectoryInfo>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will Retrieve any fixme patch installation log files needed by HPE Support to analyze for installation completion or errors.

{% hint style="info" %}
Minimum required privileges: Infrastructure Administrator
{% endhint %}

## Examples

###  Example 1 

```text
Get-HPOVFixMeInstallationLog
```

Get the fixme installation logs for the connected appliance.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.IO.FileInfo**_

The downloaded log file.

## Related Links

