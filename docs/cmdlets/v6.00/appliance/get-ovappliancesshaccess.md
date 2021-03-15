---
description: Get the current SSH console access state.
---

# Get-OVApplianceSshAccess

## Syntax

```text
Get-OVApplianceSshAccess
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE OneView supports Secure Shell (SSH) to remotely access the appliance to perform maintenance and recovery operations. Without SSH access, you must access the virtual machine system console. To avoid requiring a console access, SSH access is enabled by default. However, remote access to maintenance and recovery operations is considered a security risk by some users. Therefore, HPE OneView provides the option to disable remote access to the appliance via SSH.

Use this Cmdlet to enable appliance SSH access.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

## Examples

###  Example 1 

```text
Get-OVApplianceSshAccess
```

Get the current state of the appliance SSH console.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPEOneView.Appliance.SshAccess**_

The configured state of the appliance SSH console.

## Related Links

* [Disable-OVApplianceSshAccess](disable-ovappliancesshaccess.md)
* [Enable-OVApplianceSshAccess](enable-ovappliancesshaccess.md)
