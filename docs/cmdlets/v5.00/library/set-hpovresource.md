---
description: Update existing resource(s).
---

# Set-HPOVResource

## Syntax

```text
Set-HPOVResource
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Force] <String>
    [<CommonParameters>]
```

## Description

This Cmdlet will assist the user to update an existing resource.  The resource should first be retrieved with a "Get-HPOV[resourcename]" Cmdlet.  The PowerShell resource may then be modified, followed by this "Set-HPOVResource" Cmdlet.

## Examples

###  Example 1 

```text
$profile = Get-HPOVServerProfile "Profile 1"
$profile.name = "New Name"
Set-HPOVResource $profile
```

Updates the name of the Server Profile resource.

## Parameters

### -InputObject &lt;Object&gt;

The modified resource that is to be updated. Can be resource object, name or URI.

| Aliases | Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -force &lt;String&gt;

Set to $true to `force-update` the resource.  Not all resources support `force-update`.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Management.Automation.PSCustomObject**_

Resource Object to modify by either using [`Send-HPOVRequest`](send-hpovrequest.md) with the resource URI, or the resource GET Cmdlet

## Return Values

_**System.Management.Automation.PSCustomObject**_

The modified resource or async task depending on the resource being modified

## Related Links

* [Add-HPOVResourceToLabel](../facilities/add-hpovresourcetolabel.md)
* [Add-HPOVResourceToRack](../facilities/add-hpovresourcetorack.md)
* [Add-HPOVResourceToScope](../appliance/add-hpovresourcetoscope.md)
* [New-HPOVResource](new-hpovresource.md)
* [Remove-HPOVResource](remove-hpovresource.md)
* [Remove-HPOVResourceFromLabel](../appliance/remove-hpovresourcefromlabel.md)
* [Remove-HPOVResourceFromScope](../appliance/remove-hpovresourcefromscope.md)
