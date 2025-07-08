---
description: Get a servers current One Time Boot setting.
---

# Get-OVServerOneTimeBoot

## Syntax

```powershell
Get-OVServerOneTimeBoot
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE OneView allows you to set a one-time boot option for the server hardware. You can set the one-time boot option to any of the following:

* Keep current settings—Keeps the previously chosen settings.
* No one-time boot—Normal boot is used when this option is selected.
* PXE—Boots from the PXE server on the network.
* Hard disk—Boots from the first local disk.
* CD—Boots from a local or virtual optical drive.
* USB—Boots from a physical or virtual USB drive.

Other one-time boot options are available through the HPE iLO interface; however, HPE OneView offers only a common subset of one-time boot options. The one-time boot option requires the server hardware to be powered off and powered back on. If you set the one-time boot option while the server power is on, the one-time boot value is remembered until the server is powered off and then powered back on. HPE OneView does not support setting of the one-time boot option while the server is in power-on self-test (POST).

After setting the one-time boot option, when the server hardware is powered off and powered on, HPE iLO attempts to boot the server using the selected boot option. If the selected boot option is not available, HPE iLO attempts to boot the server using the boot order defined in the server profile. After using or attempting to use the one-time boot value, the one-time boot value is reset to No one-time boot and the server boots using the boot order defined in its server profile or through HPE iLO.

???+ info
    Minimum required privileges: Server administrator

## Examples

###  Example 1 

```powershell
Get-OVServer -Name MyServer1 | Get-OVServerOneTimeBoot
```

Get the one time boot setting from the provided server hardware resource.

###  Example 2 

```powershell
Get-OVServerProfile -Name 'My Prod Node 1' | Get-OVServerOneTimeBoot
```

Get the one time boot setting from the provided server profile resource.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The server hardware or server profile resource object from Get-OVServer or Get-OVServerProfile.  If providing a server profile resource, it must be assigned to a server in order for one time boot settings to be returned.

| Aliases | Server |
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
    Server hardware resource object from Get-OVServer.
    

=== "HPEOneView.ServerProfile [System.Management.Automation.PSCustomObject]"
    Server profile resource object from Get-OVServerProfile.
    

## Return Values

=== "HPEOneView.ServerHardware+OneTimeBoot"
    The current One Time Boot setting of the server hardware resource.
    

## Related Links

* [Get-OVServer](get-ovserver.md)
* [Get-OVServerProfile](get-ovserverprofile.md)
* [Set-OVServerOneTimeBoot](set-ovserveronetimeboot.md)
