---
description: Retrieve Enclosure Group resource(s).
---

# Get-HPOVEnclosureGroup

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVEnclosureGroup [[-Name] <String>] [[-ApplianceConnection] <Array>] [[-exportFile] <String>] [<CommonParameters>]
```

### Description

An enclosure group is a logical resource that defines a consistent configuration for an enclosure or a set of enclosures making up a logical enclosure. The network connectivity for an enclosure group is defined by the logical interconnect groups associated with the enclosure group.

This Cmdlet will get all available enclosure group resources configured on an appliance.

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
| Default value | ${Global:ConnectedSessions} |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the Enclosure Group resource to be returned. All enclosure group resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -exportFile &lt;String&gt; 

Full path and file name to save the output of Get-HPOVEnclosureGroup

| Aliases | x, export |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.EnclosureGroup \[System.Management.Automation.PSCustomObject\]**_

Enclosure Group resource.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$enclosures = Get-HPOVEnclosureGroup
```

Return all the enclosure groups managed by this appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
$enclosure = Get-HPOVEnclosureGroup "A"
```

Return the enclosure group resource with name "A". 

### Related Links 

* Add-HPOVEnclosure
* Get-HPOVEnclosure
* Get-HPOVLogicalEnclosure
* New-HPOVLogicalEnclosure
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup) 
* Remove-HPOVEnclosure
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup) 
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup) 
* Update-HPOVLogicalEnclosure

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVEnclosureGroup [[-Name] <String>] [[-ApplianceConnection] <Array>] [[-exportFile] <String>] [<CommonParameters>]
```

### Description

An enclosure group is a logical resource that defines a consistent configuration for an enclosure or a set of enclosures making up a logical enclosure. The network connectivity for an enclosure group is defined by the logical interconnect groups associated with the enclosure group.

This Cmdlet will get all available enclosure group resources configured on an appliance.

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
| Default value | ${Global:ConnectedSessions} |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the Enclosure Group resource to be returned. All enclosure group resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -exportFile &lt;String&gt; 

Full path and file name to save the output of Get-HPOVEnclosureGroup

| Aliases | x, export |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.EnclosureGroup \[System.Management.Automation.PSCustomObject\]**_

Enclosure Group resource.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$enclosures = Get-HPOVEnclosureGroup
```

Return all the enclosure groups managed by this appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
$enclosure = Get-HPOVEnclosureGroup "A"
```

Return the enclosure group resource with name "A". 

### Related Links 

* Add-HPOVEnclosure
* Get-HPOVEnclosure
* Get-HPOVLogicalEnclosure
* New-HPOVLogicalEnclosure
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup) 
* Remove-HPOVEnclosure
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup) 
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup) 
* Update-HPOVLogicalEnclosure

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVEnclosureGroup [[-Name] <String>] [[-ApplianceConnection] <Array>] [[-exportFile] <String>] [<CommonParameters>]
```

### Description

An enclosure group is a logical resource that defines a consistent configuration for an enclosure or a set of enclosures making up a logical enclosure. The network connectivity for an enclosure group is defined by the logical interconnect groups associated with the enclosure group.

This Cmdlet will get all available enclosure group resources configured on an appliance.

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
| Default value | ${Global:ConnectedSessions} |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the Enclosure Group resource to be returned. All enclosure group resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -exportFile &lt;String&gt; 

Full path and file name to save the output of Get-HPOVEnclosureGroup

| Aliases | x, export |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.EnclosureGroup \[System.Management.Automation.PSCustomObject\]**_

Enclosure Group resource.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$enclosures = Get-HPOVEnclosureGroup
```

Return all the enclosure groups managed by this appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
$enclosure = Get-HPOVEnclosureGroup "A"
```

Return the enclosure group resource with name "A". 

### Related Links 

* Add-HPOVEnclosure
* Get-HPOVEnclosure
* Get-HPOVLogicalEnclosure
* New-HPOVLogicalEnclosure
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup) 
* Remove-HPOVEnclosure
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup) 
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup) 
* Update-HPOVLogicalEnclosure



