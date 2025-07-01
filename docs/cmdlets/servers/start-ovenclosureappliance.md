---
description: Power on HPE Synergy appliance device.
---

# Start-OVEnclosureAppliance

## Syntax

```powershell
Start-OVEnclosureAppliance
    [-InputObject] <Object>
    [-BayID] <int>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will assist server administrators in powering on appliance devices within HPE Synergy frames. Additional power operations for Frame devices are provided by Reset-OVEnclosureDevice.

???+ info
    Minimum required privileges: Infrastructure administrator, Server administrator

## Examples

###  Example 1 

```powershell
Start-OVEnclosureAppliance -InputObject (Get-OVEnclosure -Name Enclosure-2) -BayID 1
```

Start the appliance device in bay 1 of the specified enclosure.

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

### -BayID &lt;int&gt;

The specified appliance bay ID of the provided enclosure resource.  Only ID's 1 or 2 are allowed.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The HPE Synergy frame resource from Get-OVEnclosure.

| Aliases | Encl |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Enclosure [System.Management.Automation.PSCustomObject]"
    Enclosure resource from Get-OVEnclosure.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

* [Get-OVEnclosure](get-ovenclosure.md)
* [Reset-OVEnclosureDevice](reset-ovenclosuredevice.md)
* [Stop-OVAppliance](../appliance/stop-ovappliance.md)
