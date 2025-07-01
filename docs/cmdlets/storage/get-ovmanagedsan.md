---
description: Retrieve Managed SAN resource(s).
---

# Get-OVManagedSan

## Syntax

```powershell
Get-OVManagedSan
    [-Name <String>]
    [-Label <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

SANs are Fibre Channel (FC) or Fibre Channel over Ethernet (FCoE) storage area networks that connect servers to storage systems. The possible states for SANs are:

* Discovered - A SAN that is not associated with a network. SANs are automatically discovered when a SAN manager is added to HPE OneView.
* Managed - A SAN that is associated with one or more networks in HPE OneView. Only managed SANs can be configured to be automatically zoned by HPE OneView.

Direct attach SANs

HPE OneView creates a direct attach SAN (flat SAN) automatically when you configure an enclosure with a logical interconnect that contains a direct attach uplink set. HPE OneView names the direct attach SAN using the format <interconnect><uplink set>. The created SAN is a Fibre Channel (FC) direct attach SAN that is not zoned, and cannot be edited.

???+ info
    HPE OneView creates a SAN for each interconnect module that is connected to a direct attach Fibre Channel network.


Zoning policy

A SAN zone enables communication between devices connected to the SAN. SAN zoning policies determine how zoning should be configured on a SAN. SAN zoning policies define whether or not zoning is automated as well as the naming format of zones and aliases. In HPE OneView, you can specify the name format of the zones and aliases that will be created when you associate a storage volume to a server profile via a volume attachment. By specifying zone name and alias formats using text strings and server profile objects, you can create names that are meaningful and conform with your naming conventions.

???+ info
    HPE OneView performs zoning only when you add a connection to a server profile and attach a SAN storage volume to it. When you do this, HPE OneView will determine if the current zoning allows connectivity. If current zoning does not allow connectivity, HPE OneView will create the necessary zoning based on the specified zoning policy.


Automate zoning

Automated zoning enables HPE OneView to automatically create, edit, and delete zones on a zoned SAN when you attach storage volumes to servers through a volume attachment in a server profile.

* Yes/True - Zoning is automated. HPE OneView takes full control of the zone naming and contents based on the zoning policy for the SAN. Use automated zoning when you want HPE OneView to configure new zones for volume attachments to server profiles. Existing zones are not modified unless the SAN storage attributes defined in a server profile change.
* No/False - Zoning is not modified by HPE OneView. You must manually manage zoning.

This Cmdlet is used to display or list the discovered and available Managed SAN resources in the appliance once a supported SAN manager has been added to the appliance.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVManagedSan

Name     State Status Network              Zoned Automated Zoning
----     ----- ------ -------              ----- ----------------
Fabric A Ready OK     BNA Managed Fabric A Zoned             True
```

Return all managed SAN resources.

###  Example 2 

```powershell
Get-OVManagedSan -Name "Fabric A"
```

Show the "Fabric A" Managed SAN resource object.

## Parameters

### -Name &lt;String&gt;

Managed SAN Name to retrieve.

| Aliases | Fabric |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]"
    Single Resource
    

=== "System.Collections.ArrayList"
    Multiple Resources
    

## Related Links

* [Get-OVSanZone](get-ovsanzone.md)
* [Set-OVManagedSan](set-ovmanagedsan.md)
