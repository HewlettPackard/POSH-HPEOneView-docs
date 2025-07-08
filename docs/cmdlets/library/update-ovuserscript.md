---
description: Update user scripts with updated Cmdlet and class names.
---

# Update-OVUserScript

## Syntax

```powershell
Update-OVUserScript
    [-Path] <FileInfo>
    [-Replace]
    [<CommonParameters>]
```

## Description

The HPE OneVIew 5.30 PowerShell library has gone through a major change, in that all Cmdlet and the C# base class name have changed.  PowerShell Cmdlet nouns used the HPOV vendor prefix.  This is now OV.  The C# based class namespace was HPOneView, and is now HPEOneView.

This script will process a user created script to find references to the original Cmdlet and Class names, and update them acordingly.  By default, this Cmdlet will only output to the console the changes it would make.  Use the -Replace parameter to commit those changes to the orignal file.

## Examples

###  Example 1 

```powershell
Update-OVUserScript -Path .\MyScript.ps1

```

Process the `[MyScript.ps]`1 script present in the working directory.

###  Example 2 

```powershell
Get-ChildItem -Path C:\MyDir -Include *.ps1 | Update-OVUserScript -Replace

```

Process scripts (.ps1) found in the specified directory, and save them.

## Parameters

### -Path &lt;FileInfo&gt;

The path and file to be process.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Replace &lt;SwitchParameter&gt;

Use to save the changes to the original file.

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

=== "System.IO.FileInfo"
    The file object to parse and update.
    

## Return Values

=== "System.String"
    Output of script that would have been modified.  Using the `-Replace` parameter will generate no output.
    
    

## Related Links

