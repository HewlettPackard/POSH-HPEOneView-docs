---
description: Get available SPP/SSP updates from connected service.
---

# Get-OVApplianceUpdate

## Syntax

```powershell
Get-OVApplianceUpdate
    [-GetLatestUpdates]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can enable HPE OneView to automatically check for new service pack updates and notify you when they are available. A connected notification alert is generated when a scheduled or manual check for updates is run and a new service pack update is available from the HPE software depot. Enable the Check for updates setting using Set-OVFirmwareBundleUpdateSchedule to receive these connected notifications.

This Cmdlet will return a list of available updates from the connected service.  In order to download a new available baseline, the supportURL attribute of the update object can be used to open in your browser.

Example:  Get-OVApplianceUpdate | Select -First 1 | % { Start-Process $_.supportURL }

## Examples

###  Example 1 

```powershell
Get-OVApplianceUpdate

```

Return the list of available updates.

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

### -GetLatestUpdates &lt;SwitchParameter&gt;

Use this switch to request the appliance pull down the latest available updates and return an updated list.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPEOneView.Appliance.ApplianceAvailableUpdates [System.Management.Automation.PSCustomObject]**_

Object that represents the available update.


## Related Links

* [Get-OVApplianceUpdateSchedule](get-ovapplianceupdateschedule.md)
* [Set-OVFirmwareBundleUpdateSchedule](set-ovfirmwarebundleupdateschedule.md)
