---
description: Import a physical server.
---

# Add-HPOVServer

## Syntax

```text
Add-HPOVServer
    [-Hostname] <String>
    [-Username] <String>
    [-Password] <Object>
    [-Credential <PSCredential>]
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
    [-Password] <Object>
    [-Credential <PSCredential>]
    [-Scope <Array>]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Import a physical server.  This cmdlet is not used to add a Blade Server to the appliance, only supported DL Gen 8/9 servers.  A BL server will automatically be discovered once it inserted into an enclosure being managed by the appliance.

## Examples

###  Example 1 

```text
Add-HPOVServer -hostname serverilo.contoso.com -username Administrator -password password -licenseintent OneView

```

Add `[serverilo.contoso.com]` to the appliance, with the OneView license.

###  Example 2 

```text
Add-HPOVServer serverilo2.contoso.com Administrator password -monitored

```

Add serverilo2.contoso.com to the appliance as a monitored only device.

## Parameters

### -Hostname &lt;String&gt;

Hostname of the server"s iLO, either IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Administrator account of the target iLO.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

Account password of the iLO specified.  Can be String or SecureString.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LicensingIntent &lt;String&gt;

Specifies whether the intent is to apply either OneView or OneView w/o iLO licenses to the server being imported.  This is only required when the `-Monitored` paraemter switch is not provided.  If you include the `-Monitored` switch, LicenseIntent is not required and should not be provided.

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

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
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

Provide an array of <HPOneView.Appliance.ScopeResource> Scope resource(s) to initially add.

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

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

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
* [Join-HPOVServerProfileToTemplate](join-hpovserverprofiletotemplate.md)
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
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerHardwareType](set-hpovserverhardwaretype.md)
* [Set-HPOVServerPower](set-hpovserverpower.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)
* [Start-HPOVServer](start-hpovserver.md)
* [Stop-HPOVServer](stop-hpovserver.md)
* [Update-HPOVServer](update-hpovserver.md)
* [Update-HPOVServerHardwareLicenseIntent](update-hpovserverhardwarelicenseintent.md)
* [Update-HPOVServerProfile](update-hpovserverprofile.md)
