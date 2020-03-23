---
description: Create a Server Profile Template from Server Profile.
---

# ConvertTo-HPOVServerProfileTemplate

## Syntax

```text
ConvertTo-HPOVServerProfileTemplate
    [-InputObject] <Object>
    [-Name] <String>
    [-Description] <String>
    [-ApplianceConnection] <Object>
    [-Async]
    [<CommonParameters>]
```

## Description

This CMDLET will allow the user to "clone" or create a Server Profile Template from an existing Server Profile object. Not all Server Profile features will be converted to a Server Profile Template. For instance, the following features are not supported with a Server Profile Template:

* Import existing local Smart Array Logical Disk configuration
* Attach SAN Storage Volumes must be assigned a unique LUN ID

If the source Server Profile has the "Import existing logical drives" enabled, this setting will be disabled, and the Local Disk Configuration policy will be set to "disabled".

If any SAN Storage Volume attachments contain an "Auto" LUN value, it will be set to "Manual", with the LUN ID set to a unique value based on the Array Index value.

## Examples

### Example 1

```text
Get-HPOVServerProfile MyProfile | ConvertTo-HPOVServerProfileTemplate -Name "Hypervisor Gold Template 1"
```

Use `Get-HPOVServerProfile` to retrieve the "MyProfile" object, and pipe it to `ConvertTo-HPOVServerProfileTemplate`, creating a new Server Profile Template "Hyervisor Gold Template 1".

## Parameters

### -InputObject &lt;Object&gt;

A source Server Profile Object or Resource Name.

| Aliases | source, ServerProfile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

The Server Profile Template Name to assign. If omitted, then a new name of "Copy of - {Original\_Name}" will be defined.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Description &lt;String&gt;

The Server Profile description.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\]**_

A Server Profile resource object from [`Get-HPOVServerProfile`](get-hpovserverprofile.md).

_**System.Collections.ArrayList**_

Multiple HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\] objects.

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\] objects.**_

Asyncronous task of the Server Profile Template creation request.

## Related Links

* [Convert-HPOVServerProfileTemplate](convert-hpovserverprofiletemplate.md)
* [Get-HPOVServerProfileTemplate](get-hpovserverprofiletemplate.md)
* [New-HPOVServerProfileTemplate](new-hpovserverprofiletemplate.md)
* [Remove-HPOVServerProfileTemplate](remove-hpovserverprofiletemplate.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)

