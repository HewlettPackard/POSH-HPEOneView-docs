---
description: Import a physical server.
---

# Add-HPOVServer

## Syntax

```text
Add-HPOVServer
    [-Hostname] <String>
    [-Username] <String>
    [-Password <Object>]
    [-Credential] <PSCredential>
    [-LicensingIntent] <String>
    [-Scope <Array>]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
Add-HPOVServer
    [-Hostname] <String>
    [-Monitored]
    [-Username] <String>
    [-Password <Object>]
    [-Credential] <PSCredential>
    [-Scope <Array>]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

A server hardware resource represents an instance of a server being managed or monitored by HPE OneView.

For a managed server hardware resource, the configuration can be applied by assigning a server profile to it.

Servers are associated with a server hardware type. A server hardware type captures the details of the relevant physical configuration for server hardware and defines which settings are available to server profiles that are to be assigned to that type of server hardware.

Servers can be added into HPE OneView as either Managed or Monitored.

Managed

HPE OneView manages the server enabling you to apply configurations, assign server profiles, monitor operation status, collect statistics, and alert users to specific conditions. Server blades that are in a managed enclosure will automatically be added as managed. Managed servers require an HPE OneView Advanced or an HPE OneView Advanced w/o iLO license.

For HPE Superdome Flex Server, server chassis that are in a rack manager will automatically be added as managed if the firmware installed on the rack manager supports managed mode features.

Monitored

HPE OneView monitors the hardware for inventory and hardware status only. The server is managed outside of HPE OneView. Server blades that are in a monitored enclosure are added as monitored. Monitored servers use a free license called HPE OneView Standard.

For HPE Superdome Flex Server, server chassis that are in a rack manager are added as monitored if the firmware installed on the rack manager does not support managed mode features.

You cannot remove a server that is part of an enclosure or rack manager from the appliance using either Remove-HPOVServer. You must remove the rack manager instead using Remove-HPOVRackManager. Removing a rack manager from management removes its partitions and associations. To remove a HPE BladeSystem or HPE Synergy server, it must be physically removed from the enclosure it is hosted within.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator.
{% endhint %}

## Examples

### Example 1

```text
Add-HPOVServer -Hostname serverilo.contoso.com -Credential (Get-Credential) -LicenseIntent OneView
```

Add `[serverilo.contoso.com]` to the appliance, with the OneView license.

### Example 2

```text
Add-HPOVServer -Hostname serverilo2.contoso.com -Credential (Get-Credential) -Monitored
```

Add serverilo2.contoso.com to the appliance as a monitored only device.

## Parameters

### -Hostname &lt;String&gt;

Hostname of the server's iLO, either IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

This parameter is now deprecated. Please transition to using the `-Credential` parameter.

Administrator account of the target iLO.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

This parameter is now deprecated. Please transition to using the `-Credential` parameter.

Account password of the iLO specified. Can be String or SecureString.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LicensingIntent &lt;String&gt;

Specifies whether the intent is to apply either OneView or OneView w/o iLO licenses to the server being imported. This is only required when the `-Managed` parameter switch is provided. If you include the `-Monitored` switch, LicenseIntent should not be provided.

Accepted values are

* OneView
* OneViewNoiLO

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `OneView` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Monitored &lt;SwitchParameter&gt;

Add the specified server for monitor only management. You can view hardware for inventory and status information only. Omitting this parameter, you can apply configurations, deploy server profiles, monitor operation status, collect statistics, and alert users to specific conditions.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

| Aliases | None |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### -Confirm &lt;SwitchParameter&gt;

When attempting to add a Server to the appliance, the appliance will validate the target Server is not already claimed. If it is, this parameter is used when the server has been claimed by another appliance to bypass the confirmation prompt, and force add the server resource.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Array&gt;

Provide an array of  Scope resource\(s\) to initially add.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Returns an async task resource to monitor.

## Related Links

* [Convert-HPOVServerProfile](convert-hpovserverprofile.md)
* [Convert-HPOVServerProfileTemplate](convert-hpovserverprofiletemplate.md)
* [ConvertTo-HPOVServerProfileTemplate](convertto-hpovserverprofiletemplate.md)
* [Copy-HPOVServerProfile](copy-hpovserverprofile.md)
* [Get-HPOVServer](get-hpovserver.md)
* [Get-HPOVServerHardwareType](get-hpovserverhardwaretype.md)
* [Get-HPOVServerProfile](get-hpovserverprofile.md)
* [Get-HPOVServerProfileConnectionList](get-hpovserverprofileconnectionlist.md)
* [Get-HPOVServerProfileMessage](get-hpovserverprofilemessage.md)
* [Get-HPOVServerProfileTemplate](get-hpovserverprofiletemplate.md)
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView-docs/tree/2c3cd0d508b6cdba6336a27d496637fc71c6ce4c/docs/cmdlets/v5.00/servers/join-hpovserverprofiletotemplate.md)
* [New-HPOVServerProfile](new-hpovserverprofile.md)
* [New-HPOVServerProfileAssign](new-hpovserverprofileassign.md)
* [New-HPOVServerProfileAttachVolume](new-hpovserverprofileattachvolume.md)
* [New-HPOVServerProfileConnection](new-hpovserverprofileconnection.md)
* [New-HPOVServerProfileLogicalDisk](new-hpovserverprofilelogicaldisk.md)
* [New-HPOVServerProfileLogicalDiskController](new-hpovserverprofilelogicaldiskcontroller.md)
* [New-HPOVServerProfileTemplate](new-hpovserverprofiletemplate.md)
* [Remove-HPOVServer](remove-hpovserver.md)
* [Remove-HPOVServerProfile](remove-hpovserverprofile.md)
* [Remove-HPOVServerProfileTemplate](remove-hpovserverprofiletemplate.md)
* [Restart-HPOVServer](restart-hpovserver.md)
* [Save-HPOVServerProfile](save-hpovserverprofile.md)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView-docs/tree/2c3cd0d508b6cdba6336a27d496637fc71c6ce4c/docs/cmdlets/v5.00/servers/save-hpovserverprofiletemplate.md)
* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView-docs/tree/2c3cd0d508b6cdba6336a27d496637fc71c6ce4c/docs/cmdlets/v5.00/servers/set-hpovserverhardwaretype.md)
* [Set-HPOVServerPower](set-hpovserverpower.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView-docs/tree/2c3cd0d508b6cdba6336a27d496637fc71c6ce4c/docs/cmdlets/v5.00/servers/set-hpovserverprofiletemplate.md)
* [Start-HPOVServer](start-hpovserver.md)
* [Stop-HPOVServer](stop-hpovserver.md)
* [Update-HPOVServer](update-hpovserver.md)
* [Update-HPOVServerHardwareLicenseIntent](https://github.com/HewlettPackard/POSH-HPOneView-docs/tree/2c3cd0d508b6cdba6336a27d496637fc71c6ce4c/docs/cmdlets/v5.00/servers/update-hpovserverhardwarelicenseintent.md)
* [Update-HPOVServerProfile](update-hpovserverprofile.md)

