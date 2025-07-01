---
description: Update existing resource(s).
---

# Set-OVResource

## Syntax

```powershell
Set-OVResource
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Force] <String>
    [<CommonParameters>]
```

## Description

This Cmdlet will assist the user to update an existing resource.  The resource should first be retrieved with a "Get-OV[resourcename]" Cmdlet.  The PowerShell resource may then be modified, followed by this "Set-OVResource" Cmdlet.

## Examples

###  Example 1 

```powershell
$profile = Get-OVServerProfile -Name "Profile 1"
$profile.name = "New Name"
Set-OVResource $profile
```

Updates the name of the Server Profile resource.

## Parameters

### -InputObject &lt;Object&gt;

The modified resource that is to be updated. Can be resource object, name or URI.

| Aliases | Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Force &lt;String&gt;

Set to $true to force-update the resource.  Not all resources support force-update.

| Aliases | None |
| :--- | :--- |
| Required? | True |
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

=== "System.Management.Automation.PSCustomObject"
    Resource Object to modify by either using Send-OVRequest with the resource URI, or the resource GET Cmdlet
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    The modified resource or async task depending on the resource being modified
    

## Related Links

* [Add-OVResourceToLabel](../facilities/add-ovresourcetolabel.md)
* [Add-OVResourceToRack](../facilities/add-ovresourcetorack.md)
* [Add-OVResourceToScope](../appliance/add-ovresourcetoscope.md)
* [New-OVResource](new-ovresource.md)
* [Remove-OVResource](remove-ovresource.md)
* [Remove-OVResourceFromLabel](../appliance/remove-ovresourcefromlabel.md)
* [Remove-OVResourceFromScope](../appliance/remove-ovresourcefromscope.md)
