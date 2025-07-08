---
description: Create a new Logical Switch resource.
---

# New-OVLogicalSwitch

## Syntax

```powershell
New-OVLogicalSwitch
    [-Name <String>]
    [-LogicalSwitchGroup] <Object>
    [-Managed]
    [-Switch1Address] <String>
    [-SshUserName] <String>
    [-SshPassword] <Object>
    [-SnmpCommunity] <String>
    [-Switch2Address <String>]
    [-SnmpPort <Int>]
    [-SnmpV1]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVLogicalSwitch
    [-Name <String>]
    [-LogicalSwitchGroup] <Object>
    [-Monitored]
    [-Switch1Address] <String>
    [-SshUserName] <String>
    [-SshPassword] <Object>
    [-Switch2Address <String>]
    [-SnmpPort <Int>]
    [-SnmpV3]
    [-SnmpUserName] <String>
    [-SnmpAuthLevel] <String>
    [-SnmpAuthProtocol] <String>
    [-SnmpAuthPassword] <Object>
    [-SnmpPrivProtocol] <String>
    [-SnmpPrivPassword] <Object>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVLogicalSwitch
    [-Name <String>]
    [-LogicalSwitchGroup] <Object>
    [-Managed]
    [-Switch1Address] <String>
    [-SshUserName] <String>
    [-SshPassword] <Object>
    [-Switch2Address <String>]
    [-SnmpPort <Int>]
    [-SnmpV3]
    [-SnmpUserName] <String>
    [-SnmpAuthLevel] <String>
    [-SnmpAuthProtocol] <String>
    [-SnmpAuthPassword] <Object>
    [-SnmpPrivProtocol] <String>
    [-SnmpPrivPassword] <Object>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVLogicalSwitch
    [-Name <String>]
    [-LogicalSwitchGroup] <Object>
    [-Monitored]
    [-Switch1Address] <String>
    [-SshUserName] <String>
    [-SshPassword] <Object>
    [-SnmpCommunity] <String>
    [-Switch2Address <String>]
    [-SnmpPort <Int>]
    [-SnmpV1]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A logical switch is added into HPE OneView as a managed or monitored logical switch. The logical switch can consist of a maximum of two physical top-of-rack switches (external to the c7000 enclosure) configured in a single stacking domain.  It is based on a logical switch group configuration. If the logical switch transitions to an Inconsistent with group state (because of changes in either the logical switch or the logical switch group), update the logical switch configuration based on the logical switch group to return to a consistent state.

You can create a logical switch with a maximum of two Cisco Nexus switches. When there are two Cisco Nexus switches in a logical switch, they are expected to be in a virtual port channel (vPC) environment. vPC must be configured on both switches, and they should belong to the same vPC domain. For information about supported switches, see the Hewlett Packard Enterprise Information Library for supportability information.

Before you add a logical switch as managed, consider the following for Fabric Extender and Virtual Connect interconnects physically connected to the logical switch:

* When only IPv4 Ethernet networks are assigned to an uplink set at creation time, the uplink set can be physically connected to any upstream switch in the logical switch.
* When an FCoE network is assigned to an uplink set at creation time, the uplink set is limited to single-homed physical connectivity and all uplink ports must connect to the same upstream switch in the logical switch.  If a port is subsequently added to the uplink set with an FCoE network or an existing port in the uplink set is connected to a second upstream switch, that port is not available for configuration and an alert is generated. If a new port added to the uplink set is connected to the same switch as the other ports, that port is available to carry traffic and an alert is not generated.  To change an uplink set from single-homed connectivity to multi-homed connectivity or vice-versa, the uplink set configuration must be deleted and re-created with the appropriate network assignments and physical configuration.
* Make sure that LLDP is enabled on the top-of-rack switch internal (downlink) ports where Virtual Connect interconnects under HPE OneView management are connected.

Adding a logical switch as monitored enables HPE OneView to monitor the logical switch for operation status, collect statistics, and alert users to specific conditions and incompatibilities between the switch and Fabric Extender or Virtual Connect interconnect. In the monitored mode, deployment of the server profile connections is supported for HPE Virtual Connect interconnects but not for Fabric Extender (FEX) interconnects.

Logical switch configuration guidelines

* When Virtual Connect interconnects are connected to a logical switch, an uplink set cannot span multiple interconnects. This limitation is similar to FEX interconnects. However, multiple uplink sets are supported on a single Virtual Connect interconnect.
* When you enable or disable a top-of-rack switch internal port, the associated port on a FEX interconnect also displays the updated port status.
* When retrieving MAC addresses for FEX interconnects, only the entries that are associated with the managed FEX interconnects are displayed.
* If an FCoE network is assigned to an uplink set that is configured as dual-homed, (an invalid configuration), that FCoE network is not provisioned on the switch. Deployment of any server profile connection with this FCoE network will fail.
* When a logical switch is defined and configured with only a single physical switch, the uplink set associated with any FEX module connected to this logical switch is considered single-homed. Therefore, you can add an FCoE network to the uplink set even if the uplink set was initially created only with Ethernet networks. Deployment of any server profile connection with this FCoE network will succeed.
* For server profiles created for server ports connected to FEX interconnects, Ethernet networks are only supported on physical function a, and FCoE networks are only supported on physical function b at the server port. When both physical functions have connections defined, traffic is split evenly across both ports.
* If HPE OneView cannot log in to the switch, a critical alert is generated. Prevent any event on the switch that might trigger switch configuration; otherwise, the switch transitions to ConfigError state and you must reapply the configuration on the associated logical interconnects to recover.
* If HPE OneView is unable to claim a member switch of the logical switch when the operational mode of the logical switch is Managed, the operating state of the switch will transition to Added with Error. In this case, the Message of the Day (MOTD) banner on the switch will indicate that the switch is currently claimed by another HPE OneView appliance and the message "This switch is being controlled by OneView Domain, Appliance ID: {}" displays. You should remove the logical switch from that HPE OneView appliance, and then perform a refresh on the logical switch from the current HPE OneView appliance to re-initiate the claim operation.
* HPE OneView does not fully automate configuration of FCoE connectivity on the switch specified in the logical switch. For each FCoE network specified in the uplink set, HPE OneView only provisions the VLAN for that network on the switch. Network administrators must provision additional configuration for FCoE connectivity manually on the switch in addition to what HPE OneView provisions.
    * To deploy server profile connections to a FEX interconnect, HPE OneView provisions the virtual Fibre Channel interface (VFC), VFC binding to FEX downlink port, and VSAN interface assignment on the switch.
    * For the deployment of server profile connections for a Virtual Connect interconnect, the Network administrator must configure the virtual Fibre Channel interface (vFC), VFC binding to server port, and VSAN interface assignment binding manually.
* When a Nexus switch expansion module is removed, a warning alert is generated unless the module is powered off.
* HPE OneView can detect configuration changes that occur on the switches specified in the logical switch when it no longer matches the configuration that HPE OneView provisions. Warning alerts are generated. Administrators can correct the configuration manually or reapply the configuration on the associated logical interconnects to recover.

???+ info
    Minimum required privileges: Infrastructure administrator or Network administrator

## Examples

###  Example 1 

```powershell
$LogicalSwitchGroup = Get-OVLogicalSwitchGroup -Name "My Nexus 5500 Switch Group Policy"
$SshPassword = ConvertTo-SecureString -String "MyPassword" -AsPlainText -Force
New-OVLogicalSwitch -Name "My Logical Switch 1" -LogicalSwitchGroup $LogicalSwitchGroup -Monitored -Switch1Address 10.1.1.1 -Switch2Address 10.1.1.2 -SshUserName admin -SshPassword $SshPassword -Snmpv1 -SnmpCommunity MyCommunity
```

Create the "My Logical Switch 1" as a Monitored Logical Switch resource.

###  Example 2 

```powershell
$LogicalSwitchGroup = Get-OVLogicalSwitchGroup -Name "My Nexus 6001 Switch Group Policy"
$Password = ConvertTo-SecureString -String "MyPassword" -AsPlainText -Force
$Results = New-OVLogicalSwitch -Name "My Logical Switch 2" -LogicalSwitchGroup $LogicalSwitchGroup -Managed -Switch1Address 10.1.2.1 -Switch2Address 10.1.2.2 -SshUserName admin-SshPassword $Password -Snmpv3 -SnmpUserName SnmpV3User -SnmpAuthLevel AuthAndPriv -SnmpAuthProtocol SHA -SnmpAuthPassword $Password -SnmpPrivProtocol aes128 -SnmpPrivPassword $Password -Async
```

Create the "My Logical Switch 2" as a Managed Logical Switch resource.

## Parameters

### -Name &lt;String&gt;

Name of the Logical Switch resource.  Supports wildcard * character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LogicalSwitchGroup &lt;Object&gt;

Provide the Logical Switch Group policy object.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Managed &lt;SwitchParameter&gt;

Specify if the Logical Switch will be a Managed resource.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Monitored &lt;SwitchParameter&gt;

Specify if the Logical Switch will be a Monintored resource.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Switch1Address &lt;String&gt;

IP Address or FQDN of first Switch resource.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Switch2Address &lt;String&gt;

IP Address or FQDN of first Switch resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SshUserName &lt;String&gt;

The SSH account name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SshPassword &lt;Object&gt;

Password of the SSH User.  Either `[System.String]` or `[System.Security.SecureString]` values are supported.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpPort &lt;Int&gt;

The UDP port SNMP is configured to listen on the target Switch resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 161 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV1 &lt;SwitchParameter&gt;

Specify if SNMPv1 is available.  Otherwise, use the `-SNMPv3` switch parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpCommunity &lt;String&gt;

Specify the SNMPv1 Community name.  This parameter is not used if needing to configure SNMPv3.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV3 &lt;SwitchParameter&gt;

Specify if SNMPv3 is available.  Otherwise, use the `-SNMPv1` switch parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpUserName &lt;String&gt;

Specify the SNMPv3 Username.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpAuthLevel &lt;String&gt;

Defines the security levels supported by SNMPv3:  * Auth         - Communication with authorization and without privacy. Messages are authenticated but not encrypted. * AuthAndPrive - Communication with authorization as well as privacy. Messages are authenticated as well as encrypted.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpAuthProtocol &lt;String&gt;

The protocol used for Authentication are either MD5 (Message Digest 5) or SHA (Secure Hash Algorithm).

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpAuthPassword &lt;Object&gt;

SNMPv3 Authorization Password.  Either `[System.String]` or `[System.Security.SecureString]` values are supported.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpPrivProtocol &lt;String&gt;

The protocols used to encrypt the messages are Data Encryption Standard (DES56) or Advanced Encryption Standard (AES128).

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpPrivPassword &lt;Object&gt;

SNMPv3 Privacy Password.  Either `[System.String]` or `[System.Security.SecureString]` values are supported.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]"
    Logical Switch Group resource.
    

## Return Values

=== "HPEOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]"
    Single Logical Switch resource.
    

=== "System.Collections.ArrayList <HPEOneView.Networking.LogicalSwitch>"
    Collection of Logical Switch resources.
    

## Related Links

* [Get-OVLogicalSwitch](get-ovlogicalswitch.md)
* [Get-OVLogicalSwitchGroup](get-ovlogicalswitchgroup.md)
* [New-OVLogicalSwitchGroup](new-ovlogicalswitchgroup.md)
* [Remove-OVLogicalSwitch](remove-ovlogicalswitch.md)
* [Remove-OVLogicalSwitchGroup](remove-ovlogicalswitchgroup.md)
* [Update-OVLogicalSwitch](update-ovlogicalswitch.md)
