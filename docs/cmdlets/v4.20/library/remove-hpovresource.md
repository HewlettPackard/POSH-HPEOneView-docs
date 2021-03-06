﻿---
description: Remove existing resource(s).
---

# Remove-HPOVResource

## Syntax

```text
Remove-HPOVResource
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-force]
    [<CommonParameters>]
```

## Description

Removes a resource identified by either the resource uri or a resource object.  Remove-HPOVResource can be called with either -nameOrUri or -resource.  

    *** This cmdlet will not prompt for delete confirmation. Please use with caution. ***

## Examples

###  Example 1 

```text
Remove-HPOVResource -Resource "/rest/resource/1234-5678-9123"

```

Removes the resource specified by the URI.

###  Example 2 

```text
Remove-HPOVResource -nameOrUri "ServerProfile-A"

```

Removes the resource named "ServerProfile-A".  If multiple resources exist with the name "ServerProfile-A", an error is returned.

###  Example 3 

```text
$MyResourceObject = send-hpovrequest "/rest/resource/1234-5678-9123"
Remove-HPOVResource -Resource $MyResourceObject
```

Removes the resource $MyReSourceObject.

## Parameters

### -InputObject &lt;Object&gt;

A resource to be deleted. Value can be either resource object, Name or URI.

| Aliases | ro, nameOruri, uri, name, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -force &lt;SwitchParameter&gt;

Invoke switch force-delete the resource when OneView can no longer communicate with the resource and removal is needed.  `-Force` is not a PowerShell option, rather an HPE OneView API feature.  This does not override the `-Confirm` PowerShell option. Not all resources support force-delete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Management.Automation.PSCustomObject**_

A valid resource object first retrieved by a call to a Get-HPOV*** cmdlet

## Return Values

_**System.Management.Automation.PSCustomObject**_

Removal async task

## Related Links

* [Add-HPOVResourceToLabel](../facilities/add-hpovresourcetolabel.md)
* [Add-HPOVResourceToRack](../facilities/add-hpovresourcetorack.md)
* [Add-HPOVResourceToScope](../appliance/add-hpovresourcetoscope.md)
* [New-HPOVResource](new-hpovresource.md)
* [Remove-HPOVResourceFromLabel](../appliance/remove-hpovresourcefromlabel.md)
* [Remove-HPOVResourceFromScope](../appliance/remove-hpovresourcefromscope.md)
* [Set-HPOVResource](set-hpovresource.md)
