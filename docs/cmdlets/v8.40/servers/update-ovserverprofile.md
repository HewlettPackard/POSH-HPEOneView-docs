---
description: Update Server Profile from Template
---

# Update-OVServerProfile

## Syntax

```powershell
Update-OVServerProfile
    [-InputObject] <Object>
    [-Stage]
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

```powershell
Update-OVServerProfile
    [-InputObject] <Object>
    [-Refresh]
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

```powershell
Update-OVServerProfile
    [-InputObject] <Object>
    [-Reapply]
    [-Baseline]
    [-AdapterAndBoot]
    [-Connections]
    [-LocalStorage]
    [-SANStorage]
    [-BIOS]
    [-Ilo]
    [-OSDeployment]
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

## Description

This Cmdlet performs one of two different operations.  By default, it will perform the "Update from Server Profile Template" operation on 1 or more Server Profile resources.  You can use Update from template to update the configuration of the server profile to make it consistent with its parent server profile template.

To bring an inconsistent (Inconsistent with template) server profile configuration back into consistency (Consistent) with the server profile template, you must reapply the settings from the server profile template either manually or automatically. Some server profile updates can be automatically performed when the server hardware is powered on and some updates can only be performed when the server hardware is powered off. You can now defer the automatic updates until the next hardware maintenance window or cancel them if you do not want to proceed with the updates.  If a Server Profile is already in a "Compliant" state, then no action will be taken

The second operation is Reapply, using the -Reapply parameter.  You can reapply a server profile to resolve errors or to ensure that the server hardware configuration matches the server profile. To reduce the time required to reapply a profile, individual components can be omitted from the reapply operation by clearing those components by omitting their switch parameter. Profiles that are in an error state can be reapplied, but individual components cannot be omitted.

Minimum required permissions: (Update from Template) Infrastructure administrator or Server administrator.  (Reapply a server profile) Infrastructure administrator, Server administrator, or Server firmware operator.

## Examples

###  Example 1 

```powershell
Get-OVServerProfile -Name "My Profile 1" | Update-OVServerProfile
```

Get all storage system resource objects managed by the appliance.

###  Example 2 

```powershell
Get-OVServerProfile | Update-OVServerProfile
```

Get all Server Profile resources and perform the Update from Server Profile Template action.

## Parameters

### -InputObject &lt;Object&gt;

The resource object of the specific Server Profile to update.

| Aliases | profile, ServerProfile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

### -Reapply &lt;SwitchParameter&gt;

Use to perform the Reapply Server Profile operation.  Server should be powered off to perform certain operations.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AdapterAndBoot &lt;SwitchParameter&gt;

Re-apply Boot settings, including adapter boot preference.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Baseline &lt;SwitchParameter&gt;

Re-apply Baseline.  If setting is Firmware only, the associated server hardware must be powered off.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Connections &lt;SwitchParameter&gt;

Re-apply Vitual Connect connections.  Will re-provision downlink ports and connection templates for the provided server profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LocalStorage &lt;SwitchParameter&gt;

Re-apply Local Storage settings.  This will cause the SmartArray to rescan for disks that should be part of the configured Logical Disk.  Server Hardware must be powered off in order for operation to be successful.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SANStorage &lt;SwitchParameter&gt;

Re-apply SAN storage settings.  Only applies to SAN zoning and volume presentation, and not recreating SAN volumes.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BIOS &lt;SwitchParameter&gt;

Re-apply BIOS settings.  Gen8 server hardware must be powered off for this operation to be allowed.  Gen9 and newer can be performed while the server hardware is powered on.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OSDeployment &lt;SwitchParameter&gt;

Re-apply OS Deployment Plan settings.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Ilo &lt;SwitchParameter&gt;

Re-apply iLO settings that are defined in the profile.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Stage &lt;SwitchParameter&gt;

If a setting requires the server tobe powered off, certain updates can be staged.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Refresh &lt;SwitchParameter&gt;

Choose to refresh the server profile state.  This does not perform re-apply or update from template operation.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

One or more Server Profile resources from Get-OVServerProfile.

## Return Values

_**HPEOneView.ServerProfile.CompliancePreview**_

Object containing the operations to be performed when the Server Profile object is not compliant.

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object to monitoring.

## Related Links

* [Convert-OVServerProfile](convert-ovserverprofile.md)
* [Convert-OVServerProfileTemplate](convert-ovserverprofiletemplate.md)
* [ConvertTo-OVServerProfileTemplate](convertto-ovserverprofiletemplate.md)
* [Copy-OVServerProfile](copy-ovserverprofile.md)
* [Get-OVServerProfile](get-ovserverprofile.md)
* [Get-OVServerProfileConnectionList](get-ovserverprofileconnectionlist.md)
* [Get-OVServerProfileMessage](get-ovserverprofilemessage.md)
* [Get-OVServerProfileTemplate](get-ovserverprofiletemplate.md)
* [Join-OVServerProfileToTemplate](join-ovserverprofiletotemplate.md)
* [New-OVServerProfile](new-ovserverprofile.md)
* [New-OVServerProfileAssign](new-ovserverprofileassign.md)
* [New-OVServerProfileAttachVolume](new-ovserverprofileattachvolume.md)
* [New-OVServerProfileConnection](new-ovserverprofileconnection.md)
* [New-OVServerProfileLogicalDisk](new-ovserverprofilelogicaldisk.md)
* [New-OVServerProfileLogicalDiskController](new-ovserverprofilelogicaldiskcontroller.md)
* [New-OVServerProfileTemplate](new-ovserverprofiletemplate.md)
* [Remove-OVServerProfile](remove-ovserverprofile.md)
* [Remove-OVServerProfileTemplate](remove-ovserverprofiletemplate.md)
* [Save-OVServerProfile](save-ovserverprofile.md)
* [Save-OVServerProfileTemplate](save-ovserverprofiletemplate.md)
* [Set-OVServerProfile](set-ovserverprofile.md)
* [Set-OVServerProfileTemplate](set-ovserverprofiletemplate.md)
