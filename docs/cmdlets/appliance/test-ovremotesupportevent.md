---
description: Initiate remote support test event.
---

# Test-OVRemoteSupportEvent

## Syntax

```powershell
Test-OVRemoteSupportEvent
    [-InputObject] <Object>
    [-CreateTestCase]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Hewlett Packard Enterprise recommends enabling all features and benefits provided by HPE OneView Remote Support so you can receive fast, accurate 'phone home' support and service per your contractual terms with Hewlett Packard Enterprise. Hewlett Packard Enterprise securely collects your HPE IT hardware diagnostics, configuration and telemetry information to provide you with remote support and services. The data is handled and managed to respect your privacy. For more information, Hewlett Packard Enterprise's Privacy Statement can be found at http://privacy.hpe.com.

Enabling Remote Support configures your devices being remotely supported to securely send support or service events, IT configuration information, diagnostic, and telemetry information to Hewlett Packard Enterprise, together with your support contact information. No other business information is collected and the data is managed according to the Hewlett Packard Enterprise's Privacy Statement.

This Cmdlet will initiate a Remote Support test event for supported servers and compute modules.  Remote Support must be enabled globally on the appliance in order to use this Cmdlet.  Either basic connectivity (omitting `-CreateTestCase` parameter) or a support case (-CreateTestCase parameter) can be requested.  Requesting a test event may take up to 20 minutes and will send data back to Hewlett Packard Enterprise.

???+ info
    Minimum required privileges: Infrastructure administrator, Server administrator, or Server firmware operator

## Examples

###  Example 1 

```powershell
Test-OVRemoteSupportEvent
```

Request a remote support test event without creating a test support case.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -CreateTestCase &lt;SwitchParameter&gt;

Request a test support caes be created during test event.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

A support server hardware resource from Get-OVServer.

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

=== "HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject]"
    Supported server hardware from Get-OVServer Cmdlet.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

