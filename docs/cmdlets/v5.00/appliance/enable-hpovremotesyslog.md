---
description: Enable remote syslog.
---

# Enable-HPOVRemoteSyslog

## Syntax

```text
Enable-HPOVRemoteSyslog
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView. This Cmdlet handles enabling the remote syslog configuration. Only a single destination can be set. When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.

## Examples

### Example 1

```text
Enable-HPOVRemoteSyslog
```

Enable remote syslog configuration on all connected appliances.

### Example 2

```text
Enable-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com -Async | Wait-HPOVTaskComplete
```

Enable remote syslog configuration on the specific connected appliance.

## Parameters

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | false |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
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

If successful, returns Appliance Async Task object to monitor.

_**System.Collections.ArrayList**_ 

Collection of Appliance Async Task objects to monitor.

## Related Links

* [Disable-HPOVRemoteSyslog](disable-hpovremotesyslog.md)
* [Get-HPOVRemoteSyslog](get-hpovremotesyslog.md)
* [Set-HPOVRemoteSyslog](set-hpovremotesyslog.md)

