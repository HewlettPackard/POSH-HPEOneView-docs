---
description: Retrieve the HPE Synergy Composer iLO configuration.
---

# Get-OVComposerIloStatus

## Syntax

```powershell
Get-OVComposerIloStatus
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can configure the HPE Synergy Composer2 for remote access through its embedded management processor (iLO). This configuration enables you to manage the Composer2 remotely and perform specific Composer2 management operations that previously required accessing the Composer console locally in the data center.

After remote access to a Composer2 iLO is configured, you can:

* Use the iLO Integrated Remote Console (iLO IRC) to access the Composer2 physical console. The physical console provides access to the HPE OneView maintenance console. The Composer2 iLO has an independent IPaddress and is accessible even when the Composer2 is not available.
* Mount a virtual USB drive on the Composer2 through iLO and perform critical operations such as reimage,restore, backup, and create support dump without physically accessing the appliance.
* Power on or off the appliance.

You can configure the iLO of the HPE Synergy Composer2 for remote access using this Cmdlet. All the Composer2 nodes that are present in the enclosures managed by HPE OneView can be configured, including standby or standalone Composer2 nodes.  The following are the settings that you can configure for the Composer2 iLO in HPE OneView:

* The iLO user account and password that are required to log in to the Composer2 iLO.
* Network parameters that allow you to access the Composer2 iLO from an external browser. The network parameters include iLO hostname, iLO IP address, subnet mask, gateway, and DNS server names. Both IPv4 and IPv6 addresses are supported.

Supported operations on the Composer2 through the iLO Integrated Remote Console

You can perform the following operations when using the HPE Synergy Composer2 iLO Integrated Remote Console (iLO IRC):

* Switch between the graphical console or the Composer2 maintenance console. By default, the Composer2 console displays a graphical browser interface. Use Ctrl+Alt+F1 and Ctrl+Alt+F2 to switch between the graphical interface and the maintenance console.
* For the first-time setup, Hewlett Packard Enterprise recommends that you configure the appliance network before the hardware discovery process starts.
* Power on and off the appliance using the integrated power control options on the iLO remote console.
* Use the Composer2 iLO virtual media feature to have a USB drive on your local workstation mounted as a virtual USB drive on the Composer2.

Virtually mounting the USB drive allows you to:

* Reimage the Composer2 from a DD image on the virtual USB drive.
* Create a support dump file on the virtual USB drive.

    NOTE:  If both virtual USB drive and local USB drive are plugged into the Composer2, by default the virtual USB drive is selected. To choose the USB drive that is plugged into the Composer2, unmount the virtual USB drive. In the iLO IRC, select Virtual Drives and clear the virtual drive selection to unmount the virtual USB drive.  You can also unmount the virtual USB drive from the maintenance console of HPE OneView.

* Restore the Composer2 from a backup image on the virtual USB drive.

Requirements

* A single iLO user account is supported. Creating a user account replaces any existing user account.
* The iLO username cannot be Administrator or start with an _.

???+ info
    The iLO user account is assigned a predefined set of privileges that allows the user to perform a restricted set of iLO operations. Specifically, the iLO account has permissions to control power, use the iLO Integrated Remote Console (iLO IRC), and use the iLO Virtual Media.


Use this Cmdlet to retrieve the iLO configuration of the support HPE Synergy Composer.  This will return an object detailing if the iLO is remotely accessible, configured iLO username and configured IP address(es).  The object will not contain the configued iLO username's password.

???+ info
    Minimum required privileges: Read-only
    

## Examples

###  Example 1 

```powershell
Get-OVComposerIloStatus

```

Get the avialable HPE Synergy Composers and their iLO configuration.

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

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Appliance.HardwareConfig [System.Management.Automation.PSCustomObject]"
    The existing iLO configuration of an HPE Synergy Composer.
    
    

## Related Links

* [Disable-OVComposerIlo](disable-ovcomposerilo.md)
* [Enable-OVComposerIlo](enable-ovcomposerilo.md)
* [Set-OVComposerIlo](set-ovcomposerilo.md)
