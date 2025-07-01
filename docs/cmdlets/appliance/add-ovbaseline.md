---
description: Upload new SPP Baseline or hotfix to appliance firmware repository.
---

# Add-OVBaseline

## Syntax

```powershell
Add-OVBaseline
    [-File] <System.IO.File>
    [-CompSigFile <System.IO.File[]>]
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-ApplianceConnection <Array>]
    [-UseInvokeWebRequest]
    [-Async]
    [<CommonParameters>]
```

## Description

The appliance provides reliable and simplified firmware management across the data center. Using the firmware management features built in to the appliance, you can define firmware baselines and perform firmware updates across many resources. When you add a resource to the appliance, the appliance automatically updates the resource firmware to the minimum version required to be managed by the appliance or version defined to be a baseline.

A firmware bundle, also known as an HPE Service Pack for ProLiant (SPP), is a comprehensive collection of firmware and system software components, all tested together as a single solution stack that includes drivers, agents, utilities, and firmware packages. Firmware bundles enable you to update firmware on HPE ProLiant servers, controllers, storage, servers, interconnects, and enclosures.

???+ info
    If you attempt to add a firmware bundle that does not contain the required firmware version and components, the firmware bundle is uploaded with a warning message in the appliance firmware repository. The warning message displays the missing components in the firmware bundle. All the components below the minimum required versions are considered as missing.


Retrieve the list of SPPs or hotfixes which have been uploaded to the appliance, and their detail. You can examine the included components and their versions reported by the baseline.

Please note that any file name that contains the . (period, CHAR46) character will be replaced with _ (underscore, CHAR95).

Example: My.Spp.To.Upload.201605.iso will become My_Spp_To_Upload_201605.iso.

???+ info
    Minimum required privileges: Infrastructure administrator, Network administrator, or Server administrator

## Examples

###  Example 1 

```powershell
Add-OVBaseline -File "C:\Users\me\Documents\SPP2012060B.2012.0525.1.iso"
```

Upload SPP ISO to all connected appliances.

###  Example 2 

```powershell
Add-OVBaseline -File (Get-ChildItem .\CP672214.exe)
```

Upload the specified hotfix to all connected appliances.

###  Example 3 

```powershell
$HotFixFile = dir .\CP672214.exe
$CompSigFile = dir .\CP672214.compsig
Add-OVBaseline -File $HotFixFile -CompSigFile $CompSigFile
```

Upload the specified Gen10 hotfix and its associated compsig file to the connected appliance.

###  Example 4 

```powershell
$HotFixFile = dir .\cp044597.exe
$CompSigFiles = dir .\cp044597_part*.compsig
Add-OVBaseline -File $HotFixFile -CompSigFile $CompSigFiles
```

Upload the specified Gen10 hotfix and its associated compsig files to the connected appliance.

## Parameters

### -File &lt;System.IO.File&gt;

The full path and file name of the SPP file.  The function returns an error if the file path cannot be validated.

| Aliases | sppFile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -CompSigFile &lt;System.IO.File[]&gt;

When adding a Gen10 hotfix component, the associated compsig file is required to validate the digital signature of the hotfix.  Use this parameter to accompany the hotfix file upload to the repository.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;HPEOneView.Appliance.ScopeCollection[]&gt;

Provide an `[HPEOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-OVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UseInvokeWebRequest &lt;SwitchParameter&gt;

Use to override the libraries default use of `[System.Net.WebRequest]` .Net class support for syncronously uploading a file.  This parameter should only be used when uploading baselines larger than 2GB.  Using this parameter will not display any status progress during file transfer.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "System.IO.FileSystemInfo"
    File System object from Get-ChildItem of the baseline ISO image to upload.
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    The progress of uploading the file to the appliance, and in-progress or completion result.
    

## Related Links

* [Get-OVBaseline](get-ovbaseline.md)
* [Get-OVBaselineRepository](get-ovbaselinerepository.md)
* [Remove-OVBaseline](remove-ovbaseline.md)
* [Show-OVBaselineRepositorySize](show-ovbaselinerepositorysize.md)
