---
description: Remove existing resource(s).
---

# Remove-OVResource

## Syntax

```powershell
Remove-OVResource
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Force]
    [<CommonParameters>]
```

## Description

Removes a resource identified by either the resource uri or a resource object.  Remove-OVResource can be called with either -nameOrUri or -resource.  

    *** This Cmdlet will not prompt for delete confirmation. Please use with caution. ***

## Examples

###  Example 1 

```powershell
Remove-OVResource -Resource "/rest/resource/1234-5678-9123"
```

Removes the resource specified by the URI.

###  Example 2 

```powershell
Remove-OVResource -nameOrUri "ServerProfile-A"
```

Removes the resource named "ServerProfile-A".  If multiple resources exist with the name "ServerProfile-A", an error is returned.

###  Example 3 

```powershell
$MyResourceObject = send-OVrequest "/rest/resource/1234-5678-9123"
Remove-OVResource -Resource $MyResourceObject
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

### -Force &lt;SwitchParameter&gt;

Invoke switch force-delete the resource when OneView can no longer communicate with the resource and removal is needed.  `-Force` is not a PowerShell option, rather an HPE OneView API feature.  This does not override the `-Confirm` PowerShell option. Not all resources support force-delete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

A valid resource object first retrieved by a call to a Get-OV*** Cmdlet

## Return Values

_**System.Management.Automation.PSCustomObject**_

Removal async task

## Related Links

* [Add-OVResourceToLabel](../facilities/add-ovresourcetolabel.md)
* [Add-OVResourceToRack](../facilities/add-ovresourcetorack.md)
* [Add-OVResourceToScope](../appliance/add-ovresourcetoscope.md)
* [New-OVResource](new-ovresource.md)
* [Remove-OVResourceFromLabel](../appliance/remove-ovresourcefromlabel.md)
* [Remove-OVResourceFromScope](../appliance/remove-ovresourcefromscope.md)
* [Set-OVResource](set-ovresource.md)
