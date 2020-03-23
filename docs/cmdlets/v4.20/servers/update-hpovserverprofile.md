---
description: Update Server Profile from Template
---

# Update-HPOVServerProfile

## Syntax

```text
Update-HPOVServerProfile
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

```text
Update-HPOVServerProfile
    [-InputObject] <Object>
    [-Reapply]
    [-Baseline]
    [-AdapterAndBoot]
    [-Connections]
    [-LocalStorage]
    [-SANStorage]
    [-BIOS]
    [-OSDeployment]
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

## Description

This Cmdlet will perform the "Update from Server Profile Template" operation on 1 or more Server Profile resources.  If a Server Profile is already in a "Compliant" state, then no action will be taken.

## Examples

###  Example 1 

```text
Get-HPOVServerProfile -Name "My Profile 1" | Update-HPOVServerProfile

```

Get all storage system resource objects managed by the appliance.

###  Example 2 

```text
Get-HPOVServerProfile | Update-HPOVServerProfile

```

Get all Server Profile resources and perform the Update from Server Profile Template action.

## Parameters

### -InputObject &lt;Object&gt;

The Name or Resource Object of the specific Server Profile to update.

| Aliases | profile, ServerProfile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Reapply &lt;SwitchParameter&gt;

Use to perform the Reapply Server Profile operation.  Server should be powered off to perform certain operations.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AdapterAndBoot &lt;SwitchParameter&gt;

Re-apply Boot settings, including adapter boot preference.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Baseline &lt;SwitchParameter&gt;

Re-apply Baseline.  If setting is Firmware only, the associated server hardware must be powered off.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Connections &lt;SwitchParameter&gt;

Re-apply Vitual Connect connections.  Will `re-provision` downlink ports and connection templates for the provided server profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LocalStorage &lt;SwitchParameter&gt;

Re-apply Local Storage settings.  This will cause the SmartArray to rescan for disks that should be part of the configured Logical Disk.  Server Hardware must be powered off in order for operation to be successful.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SANStorage &lt;SwitchParameter&gt;

Re-apply SAN storage settings.  Only applies to SAN zoning and volume presentation, and not recreating SAN volumes.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BIOS &lt;SwitchParameter&gt;

Re-apply BIOS settings.  Gen8 server hardware must be powered off for this operation to be allowed.  Gen9 and newer can be performed while the server hardware is powered on.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OSDeployment &lt;SwitchParameter&gt;

Re-apply OS Deployment Plan settings.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;

When using this parameter, an `[HPOneView.ServerProfile.CompliancePreview]` object is returned, which contains the operations that will be performed.

| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

Single Server Profile

_**System.CollectionsArrayList <HPOneView.ServerProfile>**_

Multiple Server Profiles

## Return Values

_**HPOneView.ServerProfile.CompliancePreview**_

Object containing the operations to be performed when the Server Profile object is not compliant.

_**HPOneView.Appliance.Task {System.Management.Automation.PSCustomObject}**_

Async update task

_**System.Collections.ArrayList <HPOneView.Appliance.Task>**_

Multiple Async update tasks

## Related Links

* [Convert-HPOVServerProfile](convert-hpovserverprofile.md)
* [Convert-HPOVServerProfileTemplate](convert-hpovserverprofiletemplate.md)
* [ConvertTo-HPOVServerProfileTemplate](convertto-hpovserverprofiletemplate.md)
* [Copy-HPOVServerProfile](copy-hpovserverprofile.md)
* [Get-HPOVServerProfile](get-hpovserverprofile.md)
* [Get-HPOVServerProfileConnectionList](get-hpovserverprofileconnectionlist.md)
* [Get-HPOVServerProfileMessage](get-hpovserverprofilemessage.md)
* [Get-HPOVServerProfileTemplate](get-hpovserverprofiletemplate.md)
* [Join-HPOVServerProfileToTemplate](join-hpovserverprofiletotemplate.md)
* [New-HPOVServerProfile](new-hpovserverprofile.md)
* [New-HPOVServerProfileAssign](new-hpovserverprofileassign.md)
* [New-HPOVServerProfileAttachVolume](new-hpovserverprofileattachvolume.md)
* [New-HPOVServerProfileConnection](new-hpovserverprofileconnection.md)
* [New-HPOVServerProfileLogicalDisk](new-hpovserverprofilelogicaldisk.md)
* [New-HPOVServerProfileLogicalDiskController](new-hpovserverprofilelogicaldiskcontroller.md)
* [New-HPOVServerProfileTemplate](new-hpovserverprofiletemplate.md)
* [Remove-HPOVServerProfile](remove-hpovserverprofile.md)
* [Remove-HPOVServerProfileTemplate](remove-hpovserverprofiletemplate.md)
* [Save-HPOVServerProfile](save-hpovserverprofile.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)
