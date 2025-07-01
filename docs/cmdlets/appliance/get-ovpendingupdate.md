---
description: Verify pending appliance update has been staged.
---

# Get-OVPendingUpdate

## Syntax

```powershell
Get-OVPendingUpdate
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The appliance runs a combination of software and firmware. Maintaining up-to-date appliance software and firmware fixes problems, improves performance, and adds new features to the appliance. The appliance does not automatically notify you when an update is available. You must determine if an appliance update file has been released.

To view the installed version of appliance firmware, use Get-OVVersion Cmdlet.

Verify if a newer version of an appliance update file is available for download at www.hpe.com/info/hpeoneview/updates.

Before you update the appliance, examine the HPE OneView Release Notes to learn about supported upgrade paths, new features delivered in the update, limitations, troubleshooting hints and tips, and if you must restart the appliance after it is updated.

???+ info
    When you download the appliance update file, a link to the HPE OneView Release Notes appears in the download dialog box. Hewlett Packard Enterprise recommends that you click the link to read, save, and print the information for future reference. Once the download starts, you cannot access the link again.


When you install an appliance update, the appliance restarts and goes offline. When the appliance is offline, it does not affect the managed resources. The managed resources continue to operate while the appliance is offline.

???+ info
    Minimum required privileges: Infrastructure administrator or Software administrator

## Examples

###  Example 1 

```powershell
Get-OVPendingUpdate
```

Retrieve pending update from all connected appliance sessions.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.Update.Pending [System.Management.Automation.PSCustomObject]"
    Pending appliance update
    

## Related Links

* [Get-OVVersion](../library/get-ovversion.md)
* [Install-OVUpdate](install-ovupdate.md)
* [Remove-OVPendingUpdate](remove-ovpendingupdate.md)
