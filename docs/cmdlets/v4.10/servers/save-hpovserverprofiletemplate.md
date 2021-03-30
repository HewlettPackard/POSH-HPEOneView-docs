---
description: Save the contents of a Server Profile Template to the appliance.
---

# Save-HPOVServerProfileTemplate

## Syntax

```text
Save-HPOVServerProfileTemplate
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

This Cmdlet allows administrators to save the modified Server Profile Template object within the current PowerShell session to the target appliance.

## Examples

###  Example 1 

```text
$MyProfileTemplate = Get-HPOVServerProfileTemplate -Name "My Profile Template 1" -ErrorAction Stop
$MyProfileTemplate.name = "My Profile Template NewName 1"
Save-HPOVServerProfileTemplate -InputObject $MyProfileTemplate

```

Get a Server Profile Template, update its name, then save.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Server Profile Template object to be saved.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerProfileTemplate**_

A Server Profile Template resource object from Get-HPOVServerProfileTemplate that was modified and needs to be saved.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for monitoring the enclosure import process.


## Related Links

* [Convert-HPOVServerProfileTemplate](convert-hpovserverprofiletemplate.md)
* [ConvertTo-HPOVServerProfileTemplate](convertto-hpovserverprofiletemplate.md)
* [Get-HPOVServerProfileTemplate](get-hpovserverprofiletemplate.md)
* [New-HPOVServerProfileTemplate](new-hpovserverprofiletemplate.md)
* [Remove-HPOVServerProfileTemplate](remove-hpovserverprofiletemplate.md)
