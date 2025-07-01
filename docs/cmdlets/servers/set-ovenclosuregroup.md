---
description: Modify an existing enclosure group policy.
---

# Set-OVEnclosureGroup

## Syntax

```powershell
Set-OVEnclosureGroup
    [-InputObject] <Object>
    [-LogicalInterconnectGroupMapping] <Object>
    [-Name <String>]
    [-PowerRedundantMode <String>]
    [-IPv4AddressType <String>]
    [-IPv4AddressRange <Object>]
    [-IPv6AddressType <String>]
    [-IPv6AddressRange <Object>]
    [-DeploymentNetworkType <String>]
    [-DeploymentNetwork <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

An enclosure group is a logical resource that defines a standard configuration for member logical enclosures. Use this Cmdlet to update the configuration policy for a specific enclosure group resource.

???+ info
    Minimum required privileges: Server administrator or Infrastructure administrator

## Examples

###  Example 1 

```powershell
$EnclosureGroup = Get-OVEnclosureGroup -Name ProdEG1 -ErrorAction Stop Set-OVEnclosureGroup -InputObject $EnclosureGroup -Name VirtProdEG1
```

Change the name of the provided enclosure group resource.

###  Example 2 

```powershell
$UpdatedConfigScript = 'REMOVE USER "admin"
ADD USER "ops" "*********"
SET USER CONTACT "ops" "MySecretPassword"
SET USER FULLNAME "ops" ""
SET USER ACCESS "ops" OPERATOR
ASSIGN SERVER 1-16 "ops"
ENABLE USER "ops"
hponcfg all >> end_marker
<RIBCL VERSION="2.0">
<LOGIN USER_LOGIN="ops" PASSWORD="passthrough">
    <USER_INFO MODE="write">
        <ADD_USER
        USER_NAME="ops"
        USER_LOGIN="ops"
        PASSWORD="Supersecretpassword">
            <ADMIN_PRIV value ="N"/>
            <REMOTE_CONS_PRIV value ="Y"/>
            <RESET_SERVER_PRIV value ="N"/>
            <VIRTUAL_MEDIA_PRIV value ="N"/>    
            <CONFIG_ILO_PRIV value="Yes"/>
        </ADD_USER>
    </USER_INFO>
</LOGIN>
</RIBCL>
end_marker' Get-OVEnclosureGroup -Name EG1 -ErrorAction Stop | Set-OVEnclosureGroup -ConfigurationScript $UpdatedConfigScript
```

Update the configuration script of the provided enclosure group.

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

### -ConfigurationScript &lt;String&gt;

An Onboard Administrator CLI Script. Only applicable for HPE BladeSystem C-Class.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

An enclosure group resource from Get-OVEnclosureGroup.

| Aliases | EnclosureGroup |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Specify a new resource name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PowerRedundantMode &lt;String&gt;

The Power Redundancy Mode to set when an Enclosure is added to the appliance.

Allowed Values:

* RedundantPowerFeed - Provides N+N Power Redundancy Configuration
* RedundantPowerSupply - Provided N+1 Power Redundancy Configuration

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DeploymentNetworkType &lt;String&gt;

Specify the Synergy Image Stream deployment network type.  Allowed values:

* Internal - Deployment network is an internal, managed by the Frame links, which Logical Intercoonect Group must have an ImageStreamer Uplink Set.
* External - Deployment network is connected to an External management switch.
* None - No deployment network will be configured.

Default: None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | None |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DeploymentNetwork &lt;Object&gt;

The Ethernet Network with the purpose property set to Management.  Must also include DeploymentNetworkType parameter, value must be "External", with the Ethernet Network associated with a non-ImageStreamer Uplink Set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4AddressRange &lt;Object&gt;

The IPv4 address pool object from Get-OVAddressPoolRange.

| Aliases | AddressPool |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4AddressType &lt;String&gt;

Use to specify how the IPv4 Addresses will be assigned to Synergy resources management interface(s).  Allowed values:

* External -  The IPv4 address is managed externally, static assignment. 
* DHCP -  The IPv4 address is assigned using DHCP. 
* AddressPool - The IPv4 address is assigned from a pool of IP addresses specified by the AddressPool parameter, similar to HPE BladeSystem C-Class "Enclosure Bay IP Addressing" (aka EBIPA). 

Default: DHCP

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | DHCP |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6AddressRange &lt;Object&gt;

The IPv6 address pool object from Get-OVAddressPoolRange.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv6AddressType &lt;String&gt;

Use to specify how the IPv6 Addresses will be assigned to Synergy resources management interface(s).  Allowed values:

* External -  The IPv4 address is managed externally, static assignment. 
* DHCP -  The IPv4 address is assigned using DHCP. 
* AddressPool - The IPv4 address is assigned from a pool of IP addresses specified by the AddressPool parameter, similar to HPE BladeSystem C-Class "Enclosure Bay IP Addressing" (aka EBIPA). 

Default: None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LogicalInterconnectGroupMapping &lt;Object&gt;

An Enclosure Group can reference multiple Logical Interconnect Groups, once per Interconnect Bay.  If a Single Logical Interconnect Group object is provided (either via parameter variable or via Pipeline), the Logical Interconnect Group objects Logical Interconnect Bay configuration will be used.

To specify a specific C-Class Logical Interconnect Group(s) for one or more Interconnect Bays, use a Hashtable, with the Bay ID as the Key, and Logical Interconnect Group Name, URI or Object as the Value.  Example:

$LogicalInterConnectGroupMapping = @{ 1 = "MyLIg1"; 2 = "MyLig1"; 5 = "OtherLIG"; 6 = "OtherLIG"}

$MyLig1 = Get-OVLogicalInterconnectGroup `-Name` MyLig1
$OtherLIG = Get-OVLogicalInterconnectGroup OtherLIG
$LogicalInterConnectGroupMapping = @{ 1 = $MyLig1; 2 = $MyLig1; 5 = $OtherLIG; 6 = $OtherLIG"

When attempting to define a Syenrgy-based Enclosure Group, either an Array or Hashtable is allowed.  If an Array of Logical Interconnect Groups are provided, the Cmdlet will determine the Interconnect placement automatically. Example:

$MySynergyLig1 = Get-OVLogicalInterconnectGroup `-Name` MySynergyLig1
$LogicalInterConnectGroupMapping = $MySynergyLig1
#or
$MySynergyLig1 = Get-OVLogicalInterconnectGroup `-Name` MySynergyLig1
$MySynergyLig2 = Get-OVLogicalInterconnectGroup `-Name` MySynergyLig2
$LogicalInterConnectGroupMapping = $MySynergyLig1,$MySynergyLig2


Do know that SAS and VC FC LIGs are bound to a single frame, and will not reference other Frames if FrameCount is greater than 1.

Use a Hashtable to bind specific LIGs to specific Frames.  The Interconnect placement will be determined automatically based on either the Hashtable Key name "Frame#" (where # is the numerical value of the Frame) or Enclosure Index value (depending if a SAS or Synergy VC FC LIG).  Example:

$3FrameVCLIG = Get-OVLogicalInterconnectGroup `-Name` "My MultiFrame Synergy LIG 1"
$SasLIG = Get-OVLogicalInterconnectGroup `-Name` "My Synergy Sas LIG 1"
$LogicalInterconnectGroupMapping = @{Frame1 = $3FrameVCLIG,$SasLIG; Frame2 = $3FrameVCLIG,$SasLIG; Frame3 = $3FrameVCLIG }

| Aliases | logicalInterconnectGroupUri, logicalInterconnectGroup |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Servers.EnclosureGroup [System.Management.Automation.PSCustomObject]"
    Enclosure group resource from Get-OVEnclosureGroup.
    

## Return Values

=== "HPEOneView.Servers.EnclosureGroup [System.Management.Automation.PSCustomObject]"
    The updated enclosure group resource.
    

## Related Links

* [Get-OVEnclosureGroup](get-ovenclosuregroup.md)
* [New-OVEnclosureGroup](new-ovenclosuregroup.md)
* [Remove-OVEnclosureGroup](remove-ovenclosuregroup.md)
