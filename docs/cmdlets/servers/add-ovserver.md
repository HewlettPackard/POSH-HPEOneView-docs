---
description: Import a physical server.
---

# Add-OVServer

## Syntax

```powershell
Add-OVServer
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

```powershell
Add-OVServer
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

You cannot remove a server that is part of an enclosure or rack manager from the appliance using either Remove-OVServer. You must remove the rack manager instead using Remove-OVRackManager. Removing a rack manager from management removes its partitions and associations.  To remove a HPE BladeSystem or HPE Synergy server, it must be physically removed from the enclosure it is hosted within.

???+ info
    Minimum required privileges: Infrastructure administrator or Server administrator.

## Examples

###  Example 1 

```powershell
Add-OVServer -Hostname serverilo.contoso.com -Credential (Get-Credential) -LicenseIntent OneView
```

Add `[serverilo.contoso.com]` to the appliance, with the OneView license.

###  Example 2 

```powershell
Add-OVServer -Hostname serverilo2.contoso.com -Credential (Get-Credential) -Monitored
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
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

This parameter is now deprecated.  Please transition to using the `-Credential` parameter.

Administrator account of the target iLO.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

This parameter is now deprecated.  Please transition to using the `-Credential` parameter.

Account password of the iLO specified.  Can be String or SecureString.

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
| Default value | OneView |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Monitored &lt;SwitchParameter&gt;

Add the specified server for monitor only management.  You can view hardware for inventory and status information only.  Omitting this parameter, you can apply configurations, deploy server profiles, monitor operation status, collect statistics, and alert users to specific conditions.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
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

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

When attempting to add a Server to the appliance, the appliance will validate the target Server is not already claimed.  If it is, this parameter is used when the server has been claimed by another appliance to bypass the confirmation prompt, and force add the server resource.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Array&gt;

Provide an array of <HPEOneView.Appliance.ScopeResource> Scope resource(s) to initially add.

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Returns an async task resource to monitor.
    

## Related Links

* [Convert-OVServerProfile](convert-ovserverprofile.md)
* [Convert-OVServerProfileTemplate](convert-ovserverprofiletemplate.md)
* [ConvertTo-OVServerProfileTemplate](convertto-ovserverprofiletemplate.md)
* [Copy-OVServerProfile](copy-ovserverprofile.md)
* [Get-OVServer](get-ovserver.md)
* [Get-OVServerHardwareType](get-ovserverhardwaretype.md)
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
* [Remove-OVServer](remove-ovserver.md)
* [Remove-OVServerProfile](remove-ovserverprofile.md)
* [Remove-OVServerProfileTemplate](remove-ovserverprofiletemplate.md)
* [Restart-OVServer](restart-ovserver.md)
* [Save-OVServerProfile](save-ovserverprofile.md)
* [Save-OVServerProfileTemplate](save-ovserverprofiletemplate.md)
* [Set-OVServerHardwareType](set-ovserverhardwaretype.md)
* [Set-OVServerPower](set-ovserverpower.md)
* [Set-OVServerProfile](set-ovserverprofile.md)
* [Set-OVServerProfileTemplate](set-ovserverprofiletemplate.md)
* [Start-OVServer](start-ovserver.md)
* [Stop-OVServer](stop-ovserver.md)
* [Update-OVServer](update-ovserver.md)
* [Update-OVServerHardwareLicenseIntent](update-ovserverhardwarelicenseintent.md)
* [Update-OVServerProfile](update-ovserverprofile.md)
