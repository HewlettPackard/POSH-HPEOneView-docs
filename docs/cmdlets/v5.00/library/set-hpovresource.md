---
description: Update an existing resource.
---

# Set-HPOVResource

## HPE OneView 5.00 Library

### Syntax

```text
Set-HPOVResource [-InputObject] <Object> [[-ApplianceConnection] <Object>] [[-Force] <SwitchParameter>] [<CommonParameters>]
```

### Description

This Cmdlet will assist the user to update an existing resource. The resource should first be retrieved with a `Get-HPOV[resourcename]` Cmdlet, or using [`Send-HPOVRequest`](send-hpovrequest.md). The PowerShell resource may then be modified within your PowerShell console, followed by this Cmdlet.

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the `ApplianceConnection` property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters? | False |

#### -Force &lt;SwitchParameter&gt;

Use to force-update the resource. Not all resources support force-update.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -InputObject &lt;Object&gt;

The modified resource that is to be updated.

| Aliases | Resource |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.Management.Automation.PSCustomObject**_

Resource Object to modify by either using [`Send-HPOVRequest`](send-hpovrequest.md) with the resource URI, or the resource GET Cmdlet.

### Return Values

_**System.Management.Automation.PSCustomObject**_

The modified resource or async task depending on the resource being modified

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$profile = Get-HPOVServerProfile -Name "Profile 1"
$profile.name = "New Name"
Set-HPOVResource -InputObject $profile
```

Updates the name of the Server Profile resource.

### Related Links

* [New-HPOVResource](new-hpovresource.md)
* [Remove-HPOVResource](remove-hpovresource.md)

