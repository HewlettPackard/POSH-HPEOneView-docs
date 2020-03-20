---
description: Upload new SPP Baseline or hotfix to appliance firmware repository.
---

# Add-HPOVBaseline

## Syntax

```text
Add-HPOVBaseline
    [-File] <String>
    [-CompSigFile <String>]
    [-Scope <HPOneView.Appliance.ScopeCollection>]
    [-ApplianceConnection <Array>]
    [-Async]
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to upload a new SPP Baseline into the appliance. It will return after the upload has completed but before the SPP file has been imported into the firmware repository.

After upload the baseline ISO, any . \(period character\) within the filename will be chaned to the \_ \(underscore character\) by the appliance. So, if a baseline ISo file name is "bp.2016.04.custom.ISo", the appliance will change the filename to "bp\_2016\_04\_custom.iso".

## Examples

### Example 1

```text
Add-HPOVBaseline -File "C:\Users\me\Documents\SPP2012060B.2012.0525.1.iso"
```

Upload SPP ISO to all connected appliances.

### Example 2

```text
Add-HPOVBaseline -File (Get-ChildItem .\CP672214.exe)
```

Upload the specified hotfix to all connected appliances.

### Example 3

```text
$HotFixFile = dir .\CP672214.exe
$CompSigFile = dir .\CP672214.compsig
Add-HPOVBaseline -File $HotFixFile -CompSigFile $CompSigFile
```

Upload the specified Gen10 hotfix and its associated compsig file to all connected appliances.

## Parameters

### -File &lt;String&gt;

The full path and file name of the SPP file. The function returns an error if the file path cannot be validated.

| Aliases | sppFile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -CompSigFile &lt;String&gt;

When adding a Gen10 hotfix component, the associated compsig file is required to validate the digital signature of the hotfix. Use this parameter to accompany the hotfix file upload to the repository.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with. Resource can also be added to scope using the `Add-HPOVResourceToScope` Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.IO.FileSystemInfo**_

File System bject from Get-ChildItem

## Return Values

_**System.Management.Automation.PSCustomObject**_

The progress of uploading the file to the appliance, and in-progress or completion result.

## Related Links

* [Get-HPOVBaseline](get-hpovbaseline.md)
* [Get-HPOVBaselineRepository](get-hpovbaselinerepository.md)
* [Remove-HPOVBaseline](remove-hpovbaseline.md)
* [Show-HPOVBaselineRepositorySize](show-hpovbaselinerepositorysize.md)

