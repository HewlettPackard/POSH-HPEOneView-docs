---
description: Remove existing resource.
---

# Remove-HPOVResource

## HPE OneView 5.00 Library

### Syntax

```text
Remove-HPOVResource [-InputObject] <Object> [[-ApplianceConnection] <Object>] [[-Force] <SwitchParameter>] [<CommonParameters>]
```

### Description

Removes a resource identified by either the resource uri or a resource object. Remove-HPOVResource can be called with either -nameOrUri or -resource.

{% hint style="danger" %}
This cmdlet will not prompt for delete confirmation. Please use with caution.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the `ApplianceConnection` property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

A resource to be deleted. Value can be either resource object, Name or URI.

| Aliases | ro, nameOruri, uri, name, Resource |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Force &lt;SwitchParameter&gt; 

Invoke switch force-delete the resource when OneView can no longer communicate with the resource and removal is needed. -Force is not a PowerShell option, rather an HPE OneView API feature. This does not override the -Confirm PowerShell option. Not all resources support force-delete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.Management.Automation.PSCustomObject**_

A valid resource object first retrieved by a call to a Get-HPOV_\*_ cmdlet

### Return Values

_**System.Management.Automation.PSCustomObject**_

Removal async task

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Remove-HPOVResource -Resource "/rest/resource/1234-5678-9123"
```

Removes the resource specified by the URI.

```text
 -------------------------- EXAMPLE 2 --------------------------
Remove-HPOVResource -nameOrUri "ServerProfile-A"
```

Removes the resource named `ServerProfile-A`. If multiple resources exist with the name `ServerProfile-A`, an error is returned.

```text
 -------------------------- EXAMPLE 3 --------------------------
$MyResourceObject = send-hpovrequest "/rest/resource/1234-5678-9123"
Remove-HPOVResource -Resource $MyResourceObject

```

 Removes the resource `$MyReSourceObject`. 

### Related Links 

* [New-HPOVResource](new-hpovresource.md) 
* [Set-HPOVResource](set-hpovresource.md)

## HPE OneView 4.20 Library

### Syntax

```text
Remove-HPOVResource [-InputObject] <Object> [[-ApplianceConnection] <Object>] [[-Force] <SwitchParameter>] [<CommonParameters>]
```

### Description

Removes a resource identified by either the resource uri or a resource object. Remove-HPOVResource can be called with either -nameOrUri or -resource.

{% hint style="danger" %}
This cmdlet will not prompt for delete confirmation. Please use with caution.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the `ApplianceConnection` property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

A resource to be deleted. Value can be either resource object, Name or URI.

| Aliases | ro, nameOruri, uri, name, Resource |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Force &lt;SwitchParameter&gt; 

Invoke switch force-delete the resource when OneView can no longer communicate with the resource and removal is needed. -Force is not a PowerShell option, rather an HPE OneView API feature. This does not override the -Confirm PowerShell option. Not all resources support force-delete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.Management.Automation.PSCustomObject**_

A valid resource object first retrieved by a call to a Get-HPOV_\*_ cmdlet

### Return Values

_**System.Management.Automation.PSCustomObject**_

Removal async task

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Remove-HPOVResource -Resource "/rest/resource/1234-5678-9123"
```

Removes the resource specified by the URI.

```text
 -------------------------- EXAMPLE 2 --------------------------
Remove-HPOVResource -nameOrUri "ServerProfile-A"
```

Removes the resource named `ServerProfile-A`. If multiple resources exist with the name `ServerProfile-A`, an error is returned.

```text
 -------------------------- EXAMPLE 3 --------------------------
$MyResourceObject = send-hpovrequest "/rest/resource/1234-5678-9123"
Remove-HPOVResource -Resource $MyResourceObject

```

 Removes the resource `$MyReSourceObject`. 

### Related Links 

* [New-HPOVResource](new-hpovresource.md) 
* [Set-HPOVResource](set-hpovresource.md)

## HPE OneView 4.10 Library

### Syntax

```text
Remove-HPOVResource [-InputObject] <Object> [[-ApplianceConnection] <Object>] [[-Force] <SwitchParameter>] [<CommonParameters>]
```

### Description

Removes a resource identified by either the resource uri or a resource object. Remove-HPOVResource can be called with either -nameOrUri or -resource.

{% hint style="danger" %}
This cmdlet will not prompt for delete confirmation. Please use with caution.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the `ApplianceConnection` property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

A resource to be deleted. Value can be either resource object, Name or URI.

| Aliases | ro, nameOruri, uri, name, Resource |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Force &lt;SwitchParameter&gt; 

Invoke switch force-delete the resource when OneView can no longer communicate with the resource and removal is needed. -Force is not a PowerShell option, rather an HPE OneView API feature. This does not override the -Confirm PowerShell option. Not all resources support force-delete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.Management.Automation.PSCustomObject**_

A valid resource object first retrieved by a call to a Get-HPOV_\*_ cmdlet

### Return Values

_**System.Management.Automation.PSCustomObject**_

Removal async task

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Remove-HPOVResource -Resource "/rest/resource/1234-5678-9123"
```

Removes the resource specified by the URI.

```text
 -------------------------- EXAMPLE 2 --------------------------
Remove-HPOVResource -nameOrUri "ServerProfile-A"
```

Removes the resource named `ServerProfile-A`. If multiple resources exist with the name `ServerProfile-A`, an error is returned.

```text
 -------------------------- EXAMPLE 3 --------------------------
$MyResourceObject = send-hpovrequest "/rest/resource/1234-5678-9123"
Remove-HPOVResource -Resource $MyResourceObject

```

 Removes the resource `$MyReSourceObject`. 

### Related Links 

* [New-HPOVResource](new-hpovresource.md) 
* [Set-HPOVResource](set-hpovresource.md)



