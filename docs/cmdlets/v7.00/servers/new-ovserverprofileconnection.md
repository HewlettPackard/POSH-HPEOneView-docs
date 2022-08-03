---
description: Create network connection for a server profile.
---

# New-OVServerProfileConnection

## Syntax

```powershell
New-OVServerProfileConnection
    [-ConnectionID] <Int32>
    [-Network] <Object>
    [-ConnectionType <String>]
    [-PortId] <String>
    [-Name <String>]
    [-RequestedBW <Int32>]
    [-UserDefined]
    [-MAC <String>]
    [-Bootable]
    [-LagName <String>]
    [-BootVolumeSource] <String>
    [-Priority <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVServerProfileConnection
    [-ConnectionID] <Int32>
    [-Network] <Object>
    [-ConnectionType <String>]
    [-PortId] <String>
    [-Name <String>]
    [-RequestedBW <Int32>]
    [-UserDefined]
    [-MAC <String>]
    [-Bootable]
    [-LagName <String>]
    [-BootVolumeSource] <String>
    [-Priority <String>]
    [-LUN <Int32>]
    [-IscsiIPv4AddressSource <String>]
    [-ISCSIInitatorName <String>]
    [-IscsiIPv4Address <IPAddress>]
    [-IscsiIPv4SubnetMask <String>]
    [-IscsiIPv4Gateway <IPAddress>]
    [-IscsiBootTargetIqn <String>]
    [-IscsiPrimaryBootTargetAddress] <IPAddress>
    [-IscsiPrimaryBootTargetPort <Int32>]
    [-IscsiSecondaryBootTargetAddress <IPAddress>]
    [-IscsiSecondaryBootTargetPort <Int32>]
    [-IscsiAuthenticationProtocol <String>]
    [-ChapName <String>]
    [-ChapSecret <System.Security.SecureString>]
    [-MutualChapName <String>]
    [-MutualChapSecret <System.Security.SecureString>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVServerProfileConnection
    [-ConnectionID] <Int32>
    [-Network] <Object>
    [-ConnectionType <String>]
    [-PortId] <String>
    [-Name <String>]
    [-RequestedBW <Int32>]
    [-UserDefined]
    [-MAC <String>]
    [-WWNN <String>]
    [-WWPN <String>]
    [-Bootable]
    [-LagName <String>]
    [-BootVolumeSource] <String>
    [-Priority <String>]
    [-TargetWwpn <String>]
    [-LUN <Int32>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVServerProfileConnection
    [-ConnectionID] <Int32>
    [-Network] <Object>
    [-ConnectionType <String>]
    [-PortId] <String>
    [-Name <String>]
    [-RequestedBW <Int32>]
    [-UserDefined]
    [-MAC <String>]
    [-Virtualfunctions <Int32>]
    [-Bootable]
    [-LagName <String>]
    [-Priority <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A helper function to assist with connections when creating (New-OVServerProfile) or editing (Set-OVProfile) a server profile.

## Examples

###  Example 1 

```powershell
$net41 = Get-OVNetwork -Name "Net-41" -ErrorAction Stop
$con41 = New-OVServerProfileConnection -ConnectionID 1 -ConnectionType Ethernet -Network $net41
```

Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.

###  Example 2 

```powershell
$con41 = Get-OVNetwork -Name "Net-41" -ErrorAction Stop | New-OVServerProfileConnection -ConnectionID 1
```

Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment.

###  Example 3 

```powershell
$con41 = Get-OVNetwork -Name "FCoE Fabric A" -ErrorAction Stop | New-OVServerProfileConnection -ConnectionID 1 -ConnectionType FibreChannel
```

Create a Network Connection ID 1, that is assigned to the FCoE network "FCoE Fabric A", with Auto Port assignment.

###  Example 4 

```powershell
$net42 = Get-OVNetwork -Name "Net-42" -ErrorAction Stop
$con42 = New-OVServerProfileConnection -ConnectionID 2 -ConnectionType Ethernet -network $net42 -bootable -priority Primary
```

Create a Server Profile Connection ID 2, assigned to Net42 that is PXE Primary bootable.

###  Example 5 

```powershell
$conFabricA = Get-OVNetwork -Name "Fabric A" -ErrorAction Stop | New-OVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -bootable -priority Primary -Bootable
```

Create a Server Profile Connection ID 3, assigned to Fabric A that is FC BfS Primary bootable.

###  Example 6 

```powershell
$con41 =  Get-OVNetwork -Name "Net-41" -ErrorAction Stop | New-OVServerProfileConnection -ConnectionID 1 -ConnectionType Ethernet -userdefined -mac 11:22:33:44:55:66 -name "VLAN41 Prod Net"
```

Create a Network Connection ID 1, that is assigned to Net41 network, with Auto Port assignment and custom MAC Address.

###  Example 7 

```powershell
$con41 =  Get-OVNetwork -Name "Fabric A" | New-OVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -userdefined -mac 11:22:33:44:55:66 -wwpn 10:00:00:00:a1:55:1b:8f -wwnn 20:00:00:00:a1:55:1b:8f -name "VC FF Fabric A Connection"
```

Create a Network Connection ID 3, that is assigned to a FibreChannel network, with Auto Port assignment and user defined hardware address values.

###  Example 8 

```powershell
$con41 =  Get-OVNetwork -Name "Fabric A" -ErrorAction Stop | New-OVServerProfileConnection -ConnectionID 3 -ConnectionType FibreChannel -userdefined -mac 11:22:33:44:55:66 -wwpn 10:00:00:00:a1:55:1b:8f -wwnn 20:00:00:00:a1:55:1b:8f -name "VC FF Fabric A Connection"
```

Create a Network Connection ID 3, that is assigned to a FibreChannel network, with Auto Port assignment and user defined hardware address values.

###  Example 9 

```powershell
$ISCSINetwork = Get-OVNetwork -Name "ImageStreamer Boot Network" -ErrorAction Stop
$IscsiParams = @{
    ConnectionID                  = 1;
    Name                          = "ImageStreamer Connection 1";
    ConnectionType                = "Ethernet";
    Network                       = $ISCSINetwork;
    Bootable                      = $true;
    Priority                      = "Primary";
    IscsiIPv4AddressSource    = "SubnetPool"
}
$ImageStreamerBootConnection1 = New-OVServerProfileConnection @IscsiParams
```

Create an HPE Synergy Image Streamer compliant connection.

## Parameters

### -ConnectionID &lt;Int32&gt;

The numeric identifier for this connection.  Connections are normally numbered sequentially from 1 within each profile.

| Aliases | id |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 1 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ConnectionType &lt;String&gt;

Deprecated parameter.  Connection type is now derived from the provided Network resource object.

| Aliases | type |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Ethernet |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Network &lt;Object&gt;

The Network (Ethernet or Fibre Channel) or Network Set resource object to be used with this connection.  Can either be the Name, URI, or object obtained with Get-OVNetwork or Get-OVNetworkSet.

To create an unassigned connection, use the Unassigned keyword as the value.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -LagName &lt;String&gt;

Specify the LAG Name for a Synergy Ethernet connection.  Allowed value is "LAG1" - "LAG24".

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PortId &lt;String&gt;

Identifies the port (FlexNIC) used for this connection. The port can be automatically selected by specifying "Auto" when creating the connection.  "None" is a valid portID for an unconfigured, and unmapped Connection.  If you wish to specify the specific port, the portId format is "[adapter_type_prefix] [adapter_id]:[subport_id]".

G7 only:  For LOM ports, the valid portId prefix will be "Lom"
Gen8 only:  For FlexLOMs, the valid portId prefix will be "Flb"
Mezzanine adapter prefix is "Mezz"

An example of a FlexLOM 1, FlexNIC 1a interface would be "Flb 1:1a".  An example Mezzanine 2, FlexNIC 2c interface would be "Mezz 2:2c"

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | Auto |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

A string used to identify the respective connection. The connection name is case insensitive, limited to 63 characters and must be unique within the profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RequestedBW &lt;Int32&gt;

Requested bandwidth (in Mbps) to be used for this connection.
            
Default: 2500

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 2500 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UserDefined &lt;SwitchParameter&gt;

Use to specify user defined address values

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MAC &lt;String&gt;

Requested MAC address of the connection.  Must be specified if setting WWPN and WWNN, and the connection is mapped to a FlexHBA.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WWNN &lt;String&gt;

Requested WWNN address of the connection.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WWPN &lt;String&gt;

Requested WWPN address of the connection.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Virtualfunctions &lt;Int32&gt;

Specify the number of Virtual Functions to enable on an Ethernet Connection.  Must be in increments of 16.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Bootable &lt;SwitchParameter&gt;

Specify to configure bootable settings.  If omitted, then the connection is not bootable, and `-priority` is set to NotBootable.

    Default: False

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BootVolumeSource &lt;String&gt;

Specify how the Boot Volume Source will be set.  Allowed values are:

* AdapterBIOS   - Boot from adapter BIOS volume parameters. 
* ManagedVolume - Boot from a managed volume defined in SAN Storage section. 
* UserDefined   - Boot from user defined volume parameters.

Default: AdapterBIOS

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | AdapterBIOS |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Priority &lt;String&gt;

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

### -TargetWwpn &lt;String&gt;

Target FC array WWPN.

| Aliases | ArrayWwpn |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LUN &lt;Int32&gt;

Target LUN ID, if BootVolumeSource is set to UserDefined.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ISCSIInitatorName &lt;String&gt;

Value to provide for the iSCSI Initiator.  All iSCSI Connections will share this value.  If no value is provided, the connection will default to using the Server Profile Name.

If configuring a Connection for a Server Profile Template, the value will be ignored

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiIPv4AddressSource &lt;String&gt;

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

### -IscsiIPv4Address &lt;IPAddress&gt;

The IPv4 Address to allocate for the initiator.  This parameter value is ignored when assiging the Connection to a Server Profile Template.  It will be enforced when creating a Server Profile from a Server Profile Template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiIPv4SubnetMask &lt;String&gt;

The IPv4 Subnet Mask in full or CIDR bit value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiIPv4Gateway &lt;IPAddress&gt;

The IPv4 Gateway.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiBootTargetIqn &lt;String&gt;

The IQN of the target iSCSI host.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiPrimaryBootTargetAddress &lt;IPAddress&gt;

The Primary Boot Target IPv4 Address.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiPrimaryBootTargetPort &lt;Int32&gt;

The Primary Boot Target TCP Port.  Default is 3260 if not otherwise specified.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 3260 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiSecondaryBootTargetAddress &lt;IPAddress&gt;

The Secondary Boot Target IPv4 Address.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiSecondaryBootTargetPort &lt;Int32&gt;

The Secondary Boot Target TCP Port.  Default is 3260 if not otherwise specified.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 3260 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiAuthenticationProtocol &lt;String&gt;

Specify the Authentication protocol to use.  Allowed values are None, CHAP, MutualCHAP.  When creating a Server Profile Connection for a Server Profile Template, the CHAP and Mutual CHAP credential parameters are ignored.  They will be enforced when creating a Server Profile from a Server Profile Template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ChapName &lt;String&gt;

The CHAP challange name.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ChapSecret &lt;System.Security.SecureString&gt;

The CHAP challange secret.  Accepts ASCII or HEX values.  If providing an ASCII secret value, the length must be bewteen 12 and 16 characters.  If HEX, it must start with 0x and with 24-32 characters.  Value is ignored when creating a Connection for a Server Profile Template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MutualChapName &lt;String&gt;

The Mutual CHAP challange.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MutualChapSecret &lt;System.Security.SecureString&gt;

The Mutual CHAP challange secret.  Accepts ASCII or HEX values.  If providing an ASCII secret value, the length must be bewteen 12 and 16 characters.  If HEX, it must start with 0x and with 24-32 characters.  Value is ignored when creating a Connection for a Server Profile Template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | false |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

Returns a connection object which may be used during profile creation with the New-OVServerProfile Cmdlet

## Related Links

* [Get-OVServerProfileConnectionList](get-ovserverprofileconnectionlist.md)
