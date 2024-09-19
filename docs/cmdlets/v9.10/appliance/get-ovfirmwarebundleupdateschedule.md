---
description: Get the appliance update configuration and schedule state.
---

# Get-OVFirmwareBundleUpdateSchedule

## Syntax

```powershell
Get-OVFirmwareBundleUpdateSchedule
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can enable HPE OneView to automatically check for new service pack updates and notify you when they are available. A connected notification alert is generated when a scheduled or manual check for updates is run and a new service pack update is available from the HPE software depot. Enable the Check for updates setting using Set-OVFirmwareBundleUpdateSchedule to receive these connected notifications.

This Cmdlet will return the current schedule configuration of the appliance.  If set to manual, use the Get-OVApplianceUpdate and the -GetLatestUpdates switch to instruct the appliance to connect to the HPE software depot for available updates.

## Examples

###  Example 1 

```powershell
Get-OVFirmwareBundleUpdateSchedule

```

Get the appliance configured update method and applicable schedule.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPEOneView.Appliance.FirmwareBundleUpdateSchedule**_

Class object with the appliance update schedule configuration and current status.


## Related Links

* [Get-OVFirmwareBundleUpdate](get-ovfirmwarebundleupdate.md)
* [Set-OVFirmwareBundleUpdateSchedule](set-ovfirmwarebundleupdateschedule.md)
