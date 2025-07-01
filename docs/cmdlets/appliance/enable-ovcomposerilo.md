---
description: Enable HPE Synergy Composer2 iLO for remote connectivity.
---

# Enable-OVComposerIlo

## Syntax

```powershell
Enable-OVComposerIlo
    [-InputObject] <Object>
    [-Username] <String>
    [-Password] <SecureString>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Enable-OVComposerIlo
    [-InputObject] <Object>
    [-Username] <String>
    [-Password] <SecureString>
    [-IPv4Address <IPAddress>]
    [-IPv4SubnetMask <String>]
    [-IPv4Gateway <IPAddress>]
    [-IPv4DnsServer <IPAddress[]>]
    [-IPv6Address <IPAddress>]
    [-IPv6SubnetMask <String>]
    [-IPv6Gateway <IPAddress>]
    [-IPv6DnsServer <IPAddress[]>]
    [-IloHostname <String>]
    [-Async]
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


???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
$SecurePassword = Read-Host "Password" -AsSecureString
$ComposerAppliance = Get-OVComposerIloStatus
Enable-OVComposerIlo -InputObject $ComposerAppliance -Hostname Myilohost.domian.com -Username iloadm -Password $SecurePassword

```

Enable HPE Synergy Composer 2 iLO remote connectivity, by setting the specified hostname, useraccount and secure password.

###  Example 2 

```powershell
$SecurePassword = Read-Host "Password" -AsSecureString
$ComposerAppliance = Get-OVComposerIloStatus
Enable-OVComposerIlo -InputObject $ComposerAppliance -Hostname Myilohost.domian.com -Username iloadm -Password $SecurePassword -IPv4Address 10.148.23.10 -IPv4SubnetMask 24 -IPv4Gateway 10.148.23.1 -IPv4DnsServer 10.10.4.23

```

Enable HPE Synergy Composer 2 iLO remote connectivity, by setting the specified hostname, useraccount, secure password and static IPv4 address.

###  Example 3 

```powershell
$SecurePassword = Read-Host "Password" -AsSecureString
$ComposerAppliance = Get-OVComposerIloStatus
Enable-OVComposerIlo -InputObject $ComposerAppliance -Hostname Myilohost.domian.com -Username iloadm -Password $SecurePassword -IPv6Address fd51:df0f:1f8c:4916::1 -IPv4SubnetMask 64 -IPv6Gateway fe80::1:1

```

Enable HPE Synergy Composer 2 iLO remote connectivity, by setting the specified hostname, useraccount, secure password and static IPv6 address.

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

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
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

### -IPv4Address &lt;IPAddress&gt;

Use to configure a specific static IPv4 address to the iLO of the Composer appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4DnsServer &lt;IPAddress[]&gt;

Optionally configure the Primary and Secondary DNS server address(es).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Gateway &lt;IPAddress&gt;

Use to configure what the default gateway is for the subnet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4SubnetMask &lt;String&gt;

Use to set the subnet mask, either in decimal noted or CIDR format.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6Address &lt;IPAddress&gt;

Use to configure the static IPv6 address to the iLO of the Compose appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6DnsServer &lt;IPAddress[]&gt;

Optionally configure the Primary and Secondary DNS server address(es).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6Gateway &lt;IPAddress&gt;

Use to set the subnet mask, either in decimal noted or CIDR format.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Use to configure what the default gateway is for the subnet. |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6SubnetMask &lt;String&gt;

Use to set the subnet mask, either in decimal noted or CIDR format.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IloHostname &lt;String&gt;

Use to specify a the iLO subsystem hostname.  If omitted, a randomly generated name will be created.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The object from Get-OVComposerIloStatus.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;SecureString&gt;

The SecureString of a password to set for the user account.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

The iLO account to be created.  The account name must not begin with an '_' (underscore), or be the built-in Administrator account.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.HardwareConfig [System.Management.Automation.PSCustomObject]"
    The appliance hardware configuration object from Get-OVComposerIloStatus.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

* [Disable-OVComposerIlo](disable-ovcomposerilo.md)
* [Get-OVComposerIloStatus](get-ovcomposerilostatus.md)
* [Set-OVComposerIlo](set-ovcomposerilo.md)
