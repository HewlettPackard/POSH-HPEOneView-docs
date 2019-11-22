---
description: Retrieve available SPP baseline and hotfix information.
---

# Get-HPOVBaseline

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVBaseline [[-File] <String>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVBaseline [[-SppName] <String>] [[-Version] <String>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVBaseline [[-HotfixesOnly] <SwitchParameter>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

The appliance provides reliable and simplified firmware management across the data center. Using the firmware management features built in to the appliance, you can define firmware baselines and perform firmware updates across many resources. When you add a resource to the appliance, the appliance automatically updates the resource firmware to the minimum version required to be managed by the appliance or version defined to be a baseline.

A firmware bundle, also known as an HPE Service Pack for ProLiant \(SPP\), is a comprehensive collection of firmware and system software components, all tested together as a single solution stack that includes drivers, agents, utilities, and firmware packages. Firmware bundles enable you to update firmware on HPE ProLiant servers, controllers, storage, servers, interconnects, and enclosures.

Retrieve the list of SPPs or hotfixes which have been uploaded to the appliance, and their detail. You can examine the included components and their versions reported by the baseline.

Please note that any file name that contains the `.` \(period, CHAR46\) character will be replaced with `_` \(underscore, CHAR95\).

Example: `My.Spp.To.Upload.201605.iso` will become `My_Spp_To_Upload_201605.iso`.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -File &lt;String&gt; 

The file name of an SPP or hotfix component.

| Aliases | isoFileName, FileName |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -HotfixesOnly &lt;SwitchParameter&gt; 

Display only the available hotfixes present with in the repository.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SppName &lt;String&gt; 

The SPP/Baseline or hotfix name.

| Aliases | name |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Version &lt;String&gt; 

If multiple SPP/Baselines with the same name exist, use the Version parameter to filter to the specific SPP/Baseline version.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.Baseline**_ 

SPP baseline resource object.

_**HPOneView.Appliance.BaselineHotfix : HPOneView.Appliance.Baseline**_

Baseline hotfix resource. Class derived from HPOneView.Appliance.Baseline base class.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$sppCollection = Get-HPOVBaseline
```

Retrieves all baseline objects from the appliance and stores them in the sppCollection variable.

```text
 -------------------------- EXAMPLE 2 --------------------------
$sppObject = Get-HPOVBaseline -Filename SPP2012060B.2012_0525.1.iso
```

Retrieves an baseline object with the filename `SPP2012060B.2012_0525.1.iso` .

```text
 -------------------------- EXAMPLE 3 --------------------------
$sppObject = Get-HPOVBaseline -SppName "HP Service Pack for ProLiant"
```

Retrieves an baseline object with the SPP Name `HP Service Pack for ProLiant.`

### Related Links 

* [Add-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVBaseline) 
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository) 
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline) 
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVBaseline [[-File] <String>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVBaseline [[-SppName] <String>] [[-Version] <String>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVBaseline [[-HotfixesOnly] <SwitchParameter>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

The appliance provides reliable and simplified firmware management across the data center. Using the firmware management features built in to the appliance, you can define firmware baselines and perform firmware updates across many resources. When you add a resource to the appliance, the appliance automatically updates the resource firmware to the minimum version required to be managed by the appliance or version defined to be a baseline.

A firmware bundle, also known as an HPE Service Pack for ProLiant \(SPP\), is a comprehensive collection of firmware and system software components, all tested together as a single solution stack that includes drivers, agents, utilities, and firmware packages. Firmware bundles enable you to update firmware on HPE ProLiant servers, controllers, storage, servers, interconnects, and enclosures.

Retrieve the list of SPPs or hotfixes which have been uploaded to the appliance, and their detail. You can examine the included components and their versions reported by the baseline.

Please note that any file name that contains the `.` \(period, CHAR46\) character will be replaced with `_` \(underscore, CHAR95\).

Example: `My.Spp.To.Upload.201605.iso` will become `My_Spp_To_Upload_201605.iso`.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -File &lt;String&gt; 

The file name of an SPP or hotfix component.

| Aliases | isoFileName, FileName |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -HotfixesOnly &lt;SwitchParameter&gt; 

Display only the available hotfixes present with in the repository.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SppName &lt;String&gt; 

The SPP/Baseline or hotfix name.

| Aliases | name |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Version &lt;String&gt; 

If multiple SPP/Baselines with the same name exist, use the Version parameter to filter to the specific SPP/Baseline version.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.Baseline**_ 

SPP baseline resource object.

_**HPOneView.Appliance.BaselineHotfix : HPOneView.Appliance.Baseline**_

Baseline hotfix resource. Class derived from HPOneView.Appliance.Baseline base class.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$sppCollection = Get-HPOVBaseline
```

Retrieves all baseline objects from the appliance and stores them in the sppCollection variable.

```text
 -------------------------- EXAMPLE 2 --------------------------
$sppObject = Get-HPOVBaseline -Filename SPP2012060B.2012_0525.1.iso
```

Retrieves an baseline object with the filename `SPP2012060B.2012_0525.1.iso` .

```text
 -------------------------- EXAMPLE 3 --------------------------
$sppObject = Get-HPOVBaseline -SppName "HP Service Pack for ProLiant"
```

Retrieves an baseline object with the SPP Name `HP Service Pack for ProLiant.`

### Related Links 

* [Add-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVBaseline) 
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository) 
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline) 
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVBaseline [[-File] <String>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVBaseline [[-SppName] <String>] [[-Version] <String>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVBaseline [[-HotfixesOnly] <SwitchParameter>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

The appliance provides reliable and simplified firmware management across the data center. Using the firmware management features built in to the appliance, you can define firmware baselines and perform firmware updates across many resources. When you add a resource to the appliance, the appliance automatically updates the resource firmware to the minimum version required to be managed by the appliance or version defined to be a baseline.

A firmware bundle, also known as an HPE Service Pack for ProLiant \(SPP\), is a comprehensive collection of firmware and system software components, all tested together as a single solution stack that includes drivers, agents, utilities, and firmware packages. Firmware bundles enable you to update firmware on HPE ProLiant servers, controllers, storage, servers, interconnects, and enclosures.

Retrieve the list of SPPs or hotfixes which have been uploaded to the appliance, and their detail. You can examine the included components and their versions reported by the baseline.

Please note that any file name that contains the `.` \(period, CHAR46\) character will be replaced with `_` \(underscore, CHAR95\).

Example: `My.Spp.To.Upload.201605.iso` will become `My_Spp_To_Upload_201605.iso`.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -File &lt;String&gt; 

The file name of an SPP or hotfix component.

| Aliases | isoFileName, FileName |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -HotfixesOnly &lt;SwitchParameter&gt; 

Display only the available hotfixes present with in the repository.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SppName &lt;String&gt; 

The SPP/Baseline or hotfix name.

| Aliases | name |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Version &lt;String&gt; 

If multiple SPP/Baselines with the same name exist, use the Version parameter to filter to the specific SPP/Baseline version.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.Baseline**_ 

SPP baseline resource object.

_**HPOneView.Appliance.BaselineHotfix : HPOneView.Appliance.Baseline**_

Baseline hotfix resource. Class derived from HPOneView.Appliance.Baseline base class.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$sppCollection = Get-HPOVBaseline
```

Retrieves all baseline objects from the appliance and stores them in the sppCollection variable.

```text
 -------------------------- EXAMPLE 2 --------------------------
$sppObject = Get-HPOVBaseline -Filename SPP2012060B.2012_0525.1.iso
```

Retrieves an baseline object with the filename `SPP2012060B.2012_0525.1.iso` .

```text
 -------------------------- EXAMPLE 3 --------------------------
$sppObject = Get-HPOVBaseline -SppName "HP Service Pack for ProLiant"
```

Retrieves an baseline object with the SPP Name `HP Service Pack for ProLiant.`

### Related Links 

* [Add-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVBaseline) 
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository) 
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline) 
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize) 



