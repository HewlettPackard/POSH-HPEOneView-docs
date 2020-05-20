---
description: Create network connection for a server profile.
---

# New-HPOVServerProfileConnection

## Syntax

```text
New-HPOVServerProfileConnection
    [-ConnectionID] <>
    [-Network] <>
    [-ConnectionType <>]
    [-PortId] <>
    [-Name <>]
    [-RequestedBW <>]
    [-UserDefined <>]
    [-MAC <>]
    [-Bootable <>]
    [-LagName <>]
    [-BootVolumeSource] <>
    [-Priority <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

```text
New-HPOVServerProfileConnection
    [-ConnectionID] <>
    [-Network] <>
    [-ConnectionType <>]
    [-PortId] <>
    [-Name <>]
    [-RequestedBW <>]
    [-UserDefined <>]
    [-MAC <>]
    [-Bootable <>]
    [-LagName <>]
    [-BootVolumeSource] <>
    [-Priority <>]
    [-LUN <>]
    [-IscsiIPv4AddressSource <>]
    [-ISCSIInitatorName <>]
    [-IscsiIPv4Address <>]
    [-IscsiIPv4SubnetMask <>]
    [-IscsiIPv4Gateway <>]
    [-IscsiBootTargetIqn <>]
    [-IscsiPrimaryBootTargetAddress] <>
    [-IscsiPrimaryBootTargetPort <>]
    [-IscsiSecondaryBootTargetAddress <>]
    [-IscsiSecondaryBootTargetPort <>]
    [-IscsiAuthenticationProtocol <>]
    [-ChapName <>]
    [-ChapSecret <>]
    [-MutualChapName <>]
    [-MutualChapSecret <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

```text
New-HPOVServerProfileConnection
    [-ConnectionID] <>
    [-Network] <>
    [-ConnectionType <>]
    [-PortId] <>
    [-Name <>]
    [-RequestedBW <>]
    [-UserDefined <>]
    [-MAC <>]
    [-WWNN <>]
    [-WWPN <>]
    [-Bootable <>]
    [-LagName <>]
    [-BootVolumeSource] <>
    [-Priority <>]
    [-TargetWwpn <>]
    [-LUN <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

```text
New-HPOVServerProfileConnection
    [-ConnectionID] <>
    [-Network] <>
    [-ConnectionType <>]
    [-PortId] <>
    [-Name <>]
    [-RequestedBW <>]
    [-UserDefined <>]
    [-MAC <>]
    [-Virtualfunctions <>]
    [-Bootable <>]
    [-LagName <>]
    [-Priority <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

## Description

A helper function to assist with connections when creating (New-HPOVServerProfile) or editing (Set-HPOVProfile) a server profile.

## Examples

###  Example 1 

```text
$net41 = Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop
$con41 = New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType Ethernet -Network $net41
```

Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.

###  Example 2 

```text
$con41 = Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1
```

Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.

###  Example 3 

```text
$con41 = Get-HPOVNetwork -Name "FCoE Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType FibreChannel
```

Create a Network Connection ID 1, that is assigned to the FCoE network "FCoE Fabric A", with Auto Port assignment.

###  Example 4 

```text
$net42 = Get-HPOVNetwork -Name "Net-42" -ErrorAction Stop
$con42 = New-HPOVServerProfileConnection -ConnectionID 2 -ConnectionType Ethernet -network $net42 -bootable -priority Primary
```

Create a Server Profile Connection ID 2, assigned to Net42 that is PXE Primary bootable.

###  Example 5 

```text
$conFabricA = Get-HPOVNetwork -Name "Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -bootable -priority Primary -Bootable
```

Create a Server Profile Connection ID 3, assigned to Fabric A that is FC BfS Primary bootable.

###  Example 6 

```text
$con41 =  Get-HPOVNetwork -Name "Net-41" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 1 -ConnectionType Ethernet -userdefined -mac 11:22:33:44:55:66 -name "VLAN41 Prod Net"
```

Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment and custom MAC Address.

###  Example 7 

```text
$con41 =  Get-HPOVNetwork -Name "Fabric A" | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -userdefined -mac 11:22:33:44:55:66 -wwpn 10:00:00:00:a1:55:1b:8f -wwnn 20:00:00:00:a1:55:1b:8f -name "VC FF Fabric A Connection"
```

Create a Network Connection ID 3, that is assigned to a FibreChannel network, with Auto Port assignment and user defined hardware address values.

###  Example 8 

```text
$con41 =  Get-HPOVNetwork -Name "Fabric A" -ErrorAction Stop | New-HPOVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -userdefined -mac 11:22:33:44:55:66 -wwpn 10:00:00:00:a1:55:1b:8f -wwnn 20:00:00:00:a1:55:1b:8f -name "VC FF Fabric A Connection"
```

Create a Network Connection ID 3, that is assigned to a FibreChannel network, with Auto Port assignment and user defined hardware address values.

###  Example 9 

```text
$ISCSINetwork = Get-HPOVNetwork -Name "ImageStreamer Boot Network" -ErrorAction Stop
$IscsiParams = @{
    ConnectionID                  = 1;
    Name                          = "ImageStreamer Connection 1";
    ConnectionType                = "Ethernet";
    Network                       = $ISCSINetwork;
    Bootable                      = $true;
    Priority                      = "Primary";
    IscsiIPv4AddressSource    = "SubnetPool"
}
$ImageStreamerBootConnection1 = New-HPOVServerProfileConnection @IscsiParams
```

Create an HPE Synergy Image Streamer compliant connection.

## Parameters

### -ConnectionID &lt;&gt;

The numeric identifier for this connection.  Connections are normally numbered sequentially from 1 within each profile.

| Aliases | id |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 1 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ConnectionType &lt;&gt;

Deprecated parameter.  Connection type is now derived from the provided Network resource object.

| Aliases | type |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Ethernet |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Network &lt;&gt;

The Network (Ethernet or Fibre Channel) or Network Set resource object to be used with this connection.  Can either be the Name, URI, or object obtained with `Get-HPOVNetwork` or `Get-HPOVNetworkSet`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -LagName &lt;&gt;

Specify the LAG Name for a Synergy Ethernet connection.  Allowed value is "LAG1" - "LAG24".

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PortId &lt;&gt;

Identifies the port (FlexNIC) used for this connection. The port can be automatically selected by specifying "Auto" when creating the connection.  "None" is a valid portID for an unconfigured, and unmapped Connection.  If you wish to specify the specific port, the portId format is "[adapter_type_prefix] [adapter_id]:[subport_id]".

G7 only:  For LOM ports, the valid portId prefix will be "Lom"
Gen8 only:  For FlexLOMs, the valid portId prefix will be "Flb"
Mezzanine adapter prefix is "Mezz"

An example of a FlexLOM 1, FlexNIC 1a interface would be "Flb 1:1a".  An example Mezzanine 2, FlexNIC 2c interface would be "Mezz 2:2c"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Auto |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;&gt;

A string used to identify the respective connection. The connection name is case insensitive, limited to 63 characters and must be unique within the profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RequestedBW &lt;&gt;

Requested bandwidth (in Mbps) to be used for this connection.
            
Default: 2500

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 2500 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UserDefined &lt;&gt;

Use to specify user defined address values

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MAC &lt;&gt;

Requested MAC address of the connection.  Must be specified if setting WWPN and WWNN, and the connection is mapped to a FlexHBA.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WWNN &lt;&gt;

Requested WWNN address of the connection.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WWPN &lt;&gt;

Requested WWPN address of the connection.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Virtualfunctions &lt;&gt;

Specify the number of Virtual Functions to enable on an Ethernet Connection.  Must be in increments of 16.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Bootable &lt;&gt;

Specify to configure bootable settings.  If omitted, then the connection is not bootable, and `-priority` is set to NotBootable.

    Default: False

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BootVolumeSource &lt;&gt;

Specify how the Boot Volume Source will be set.  Allowed values are:

    * AdapterBIOS   - Boot from adapter BIOS volume parameters. 
    * ManagedVolume - Boot from a managed volume defined in SAN Storage section. 
    * UserDefined   - Boot from user defined volume parameters.

Default: AdapterBIOS

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AdapterBIOS |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Priority &lt;&gt;

Optional boot option for this connection, but Required if `-bootable` is specified.  Allowed values:

    * NotBootable
    * UseBIOS

    * Primary
    * Secondary
    * IscsiPrimary
    * IscsiSecondary

When the Connection Type is Ethernet, this affects PXE boot.  If the Connection Type is FibreChannel, this enables BfS settings. 

    Default: NotBootable

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | NotBootable |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TargetWwpn &lt;&gt;

Target FC array WWPN.

| Aliases | ArrayWwpn |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LUN &lt;&gt;

Target LUN ID, if BootVolumeSource is set to UserDefined.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ISCSIInitatorName &lt;&gt;

Value to provide for the iSCSI Initiator.  All iSCSI Connections will share this value.  If no value is provided, the connection will default to using the Server Profile Name.

If configuring a Connection for a Server Profile Template, the value will be ignored

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiIPv4AddressSource &lt;&gt;

Specify the IPv4 Address Source for the connection.  Allowed values are:

    * DHCP
    * UserDefined
    * SubnetPool

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiIPv4Address &lt;&gt;

The IPv4 Address to allocate for the initiator.  This parameter value is ignored when assiging the Connection to a Server Profile Template.  It will be enforced when creating a Server Profile from a Server Profile Template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiIPv4SubnetMask &lt;&gt;

The IPv4 Subnet Mask in full or CIDR bit value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiIPv4Gateway &lt;&gt;

The IPv4 Gateway.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiBootTargetIqn &lt;&gt;

The IQN of the target iSCSI host.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiPrimaryBootTargetAddress &lt;&gt;

The Primary Boot Target IPv4 Address.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiPrimaryBootTargetPort &lt;&gt;

The Primary Boot Target TCP Port.  Default is 3260 if not otherwise specified.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 3260 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiSecondaryBootTargetAddress &lt;&gt;

The Secondary Boot Target IPv4 Address.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiSecondaryBootTargetPort &lt;&gt;

The Secondary Boot Target TCP Port.  Default is 3260 if not otherwise specified.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 3260 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiAuthenticationProtocol &lt;&gt;

Specify the Authentication protocol to use.  Allowed values are None, CHAP, MutualCHAP.  When creating a Server Profile Connection for a Server Profile Template, the CHAP and Mutual CHAP credential parameters are ignored.  They will be enforced when creating a Server Profile from a Server Profile Template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ChapName &lt;&gt;

The CHAP challange name.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ChapSecret &lt;&gt;

The CHAP challange secret.  Accepts ASCII or HEX values.  If providing an ASCII secret value, the length must be bewteen 12 and 16 characters.  If HEX, it must start with 0x and with `24-32` characters.  Value is ignored when creating a Connection for a Server Profile Template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MutualChapName &lt;&gt;

The Mutual CHAP challange.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MutualChapSecret &lt;&gt;

The Mutual CHAP challange secret.  Accepts ASCII or HEX values.  If providing an ASCII secret value, the length must be bewteen 12 and 16 characters.  If HEX, it must start with 0x and with `24-32` characters.  Value is ignored when creating a Connection for a Server Profile Template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | false |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

Returns a connection object which may be used during profile creation with the [`New-HPOVServerProfile`](new-hpovserverprofile.md) Cmdlet

## Related Links

* [Get-HPOVServerProfileConnectionList](get-hpovserverprofileconnectionlist.md)
