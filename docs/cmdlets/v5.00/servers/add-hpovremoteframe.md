---
description: Add remote HPE Synergy Frame to Composer.
---

# Add-HPOVRemoteFrame

## Syntax

```text
Add-HPOVRemoteFrame
    [-Hostname] <String>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE Synergy Frames are automatically discovered after the initial Hardware Setup task has been completed. Remote frames outside of the HPE Synergy management ring must be added manually. Use this Cmdlet to specify the IPv6 Link Local address of the remote frame to add.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator.
{% endhint %}

## Examples

### Example 1

```text
Add-HPOVRemoteFrame -Hostname fe80::c8f:fbcb:aa8a:97c8
```

Add the specified remote HPE Synergy Frame.

## Parameters

### -Hostname &lt;String&gt;

The IPv6 Link Local address of the remote frame. This can be viewed from the Frame Link Module \(FLM\) console using a crash cart.

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
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | None |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task Resource object for monitoring.

## Related Links

* [Get-HPOVEnclosure](get-hpovenclosure.md)

