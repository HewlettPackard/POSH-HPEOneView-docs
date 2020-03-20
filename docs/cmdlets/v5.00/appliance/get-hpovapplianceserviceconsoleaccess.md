---
description: Get the appliance service console access configuration.
---

# Get-HPOVApplianceServiceConsoleAccess

## Syntax

```text
Get-HPOVApplianceServiceConsoleAccess
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE OneView contains a technical feature that you can use to allow an authorized technical support to access your system, through the system console, to assess and troubleshoot problems that you have reported. This access is controlled by a password generated and provided by you to the authorized technical support. You can disable the access at any time while the system is running. Hewlett Packard Enterprise recommends that you enable service console access so that an authorized technical support can diagnose your system in the event of a system failure.

This Cmdlet will return the existing configuration state of the appliance service console.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

## Examples

### Example 1

```text
Get-HPOVApplianceServiceConsoleAccess
```

Get the service console access status.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.ServiceConsoleAccess**_

The current service console configuration status.

## Related Links

* [Disable-HPOVApplianceServiceConsoleAccess](disable-hpovapplianceserviceconsoleaccess.md)
* [Enable-HPOVApplianceServiceConsoleAccess](enable-hpovapplianceserviceconsoleaccess.md)

