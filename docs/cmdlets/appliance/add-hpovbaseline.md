---
description: >-
  Documentation about how to add a support HPE Service Pack for ProLiant (SPP),
  hotfix smart component (with Gen10 compsig), and HPE Synergy baseline to an
  appliance.
---

# Add-HPOVBaseline

## HPE OneView 5.00 Library

### Syntax

```text
Add-HPOVBaseline [-File] <String> [[-CompSigFile] <String>]] [[-Scope] <HPOneView.Appliance.ScopeCollection>] [[-ApplianceConnection] <Array>]] [[-Async] <SwitchParameter>]] [<CommonParameters>]
```

### Description

This Cmdlet provides the ability to upload a new SPP Baseline into the appliance. It will return after the upload has completed but before the SPP file has been imported into the firmware repository.

After upload the baseline ISO, any . \(period character\) within the filename will be chaned to the \_ \(underscore character\) by the appliance. So, if a baseline ISo file name is "bp.2016.04.custom.ISo", the appliance will change the filename to "bp\_2016\_04\_custom.iso".

### Parameters

#### -ApplianceConnection &lt;Array&gt;

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 3 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -CompSigFile &lt;String&gt; 

When adding a Gen10 hotfix component, the associated compsig file is required to validate the digital signature of the hotfix. Use this parameter to accompany the hotfix file upload to the repository.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -File &lt;String&gt; 

The full path and file name of the SPP file. The function returns an error if the file path cannot be validated.

| Aliases | sppFile |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; 

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with. Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | 2 |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.IO.FileSystemInfo**_

File System object from Get-ChildItem

### Return Values

_**System.Management.Automation.PSCustomObject**_

The progress of uploading the file to the appliance, and in-progress or completion result.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVBaseline -File "C:\Users\me\Documents\SPP2012060B.2012.0525.1.iso"
```

 Upload SPP ISO to all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Add-HPOVBaseline -File (Get-ChildItem .\CP672214.exe)
```

 Upload the specified hotfix to all connected appliances.

```text
 -------------------------- EXAMPLE 3 --------------------------
$HotFixFile = dir .\CP672214.exe
$CompSigFile = dir .\CP672214.compsig
Add-HPOVBaseline -File $HotFixFile -CompSigFile $CompSigFile
```

 Upload the specified Gen10 hotfix and its associated compsig file to all connected appliances. 

### Related Links 

* [Get-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaseline) 
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository) 
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline) 
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize) 

## HPE OneView 4.20 Library

### Syntax

```text
Add-HPOVBaseline [-File] <String> [[-CompSigFile] <String>]] [[-Scope] <HPOneView.Appliance.ScopeCollection>] [[-ApplianceConnection] <Array>]] [[-Async] <SwitchParameter>]] [<CommonParameters>]
```

### Description

This Cmdlet provides the ability to upload a new SPP Baseline into the appliance. It will return after the upload has completed but before the SPP file has been imported into the firmware repository.

After upload the baseline ISO, any . \(period character\) within the filename will be chaned to the \_ \(underscore character\) by the appliance. So, if a baseline ISo file name is "bp.2016.04.custom.ISo", the appliance will change the filename to "bp\_2016\_04\_custom.iso".

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 3 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -CompSigFile &lt;String&gt; 

When adding a Gen10 hotfix component, the associated compsig file is required to validate the digital signature of the hotfix. Use this parameter to accompany the hotfix file upload to the repository.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -File &lt;String&gt;

The full path and file name of the SPP file. The function returns an error if the file path cannot be validated.

| Aliases | sppFile |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; 

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with. Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | 2 |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.IO.FileSystemInfo**_

File System object from Get-ChildItem

### Return Values

_**System.Management.Automation.PSCustomObject**_

The progress of uploading the file to the appliance, and in-progress or completion result.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVBaseline -File "C:\Users\me\Documents\SPP2012060B.2012.0525.1.iso"
```

 Upload SPP ISO to all connected appliances.

```text
 -------------------------- EXAMPLE 2 --------------------------
Add-HPOVBaseline -File (Get-ChildItem .\CP672214.exe)
```

 Upload the specified hotfix to all connected appliances.

```text
 -------------------------- EXAMPLE 3 --------------------------
$HotFixFile = dir .\CP672214.exe
$CompSigFile = dir .\CP672214.compsig
Add-HPOVBaseline -File $HotFixFile -CompSigFile $CompSigFile
```

 Upload the specified Gen10 hotfix and its associated compsig file to all connected appliances. 

### Related Links 

* [Get-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaseline) 
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository) 
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline) 
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)

## HPE OneView 4.10 Library 

### Syntax

```text
Add-HPOVBaseline [-File] <String> [[-Scope] <HPOneView.Appliance.ScopeCollection>] [[-ApplianceConnection] <Array>] [[-Async] <SwitchParameter>]] [<CommonParameters>]
```

### Detailed Description

This Cmdlet provides the ability to upload a new SPP Baseline into the appliance. It will return after the upload has completed but before the SPP file has been imported into the firmware repository.

After upload the baseline ISO, any . \(period character\) within the filename will be chaned to the \_ \(underscore character\) by the appliance. So, if a baseline ISo file name is "bp.2016.04.custom.ISo", the appliance will change the filename to "bp\_2016\_04\_custom.iso".

### Parameters

#### -ApplianceConnection &lt;Array&gt; Aliases \[-Appliance\]

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 2 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -File &lt;String&gt; 

The full path and file name of the SPP file. The function returns an error if the file path cannot be validated.

| Aliases | sppFile |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; 

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with. Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | 1 |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.IO.FileSystemInfo**_

File System object from Get-ChildItem

### Return Values

_**System.Management.Automation.PSCustomObject**_

The progress of uploading the file to the appliance, and in-progress or completion result.

### Examples

```
 -------------------------- EXAMPLE 1 -------------------------- 
 Add-HPOVBaseline -File "C:\Users\me\Documents\SPP2012060B.2012.0525.1.iso" 
```

#### Related Links

* [Get-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaseline)
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository)
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline)
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)

