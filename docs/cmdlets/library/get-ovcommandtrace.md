---
description: Start an OV Library Verbose Trace.
---

# Get-OVCommandTrace

## Syntax

```powershell
Get-OVCommandTrace
    [-ScriptBlock] <ScriptBlock>
    [-Location <String>]
    [-Passthru]
    [<CommonParameters>]
```

## Description

This Cmdlet will assist the user in setting up the PowerShell environment to generate and capture Verbose output from OV Library Cmdlets.  Once this Cmdlet has been executed, the prior OV Cmdlets can be executed, without the need of using the `-Cerbose` switch.

Cmdlet output will be captured using the built-in Microsoft PowerShell Start-Transcript provider.  A transcript trace file will be saved in either the current working directory, or specified using the `-Location` parameter.

Please know that this Cmdlet is currently not supported in the Windows PowerShell ISE, unless using PowerShell v5 or newer.

## Examples

###  Example 1 

```powershell
Get-OVCommandTrace -ScriptBlock { Get-OVNetwork -Name MyNet } -Location C:\Temp
```

Start a new library trace, which will create a file in the `C:\Temp` directory.

## Parameters

### -ScriptBlock &lt;ScriptBlock&gt;

One or more HPOneView library Cmdlets.  The Cmdlet will execute the contents of the ScriptBlock, ensuring that the commands will generate verbose output and be captured to a log file.

| Aliases | Command |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Location &lt;String&gt;

Specify the directory where the output file will be created.  A file with the following format will be created:

    "{Date}_HPOV_transcript.log", where date is derived from `Get-Date `-UFormat` %y%m%d%H%M`

Default Value: (PWD).Path

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (pwd).path |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Passthru &lt;SwitchParameter&gt;

When you use the PassThru parameter, Get-OVCommandTrace returns the processed output from the provided scriptblock, while still capturing to file.

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

=== "System.Management.Automation.ScriptBlock"
    ScriptBlock of the command or commands to generate verbose output for.
    

## Return Values

=== "System.IO.FileInfo"
    FileInfo object where the "{Date}_HPOV_transcript.log" file is generated.
    

## Related Links

