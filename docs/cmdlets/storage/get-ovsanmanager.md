---
description: Retrieve SAN Manager resource(s).
---

# Get-OVSanManager

## Syntax

```powershell
Get-OVSanManager
    [-Name <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

SAN managers are a resource in HPE OneView that represent a connection to an external entity through which SANs are discovered and managed. The external entity can be vendor-specific management software or a physical switch.

SANs are created outside of HPE OneView in the SAN manager vendor?s management interface. Once created, SANs can be discovered and managed in HPE OneView using the SAN Manager resource.

When managing SAN managers, HPE OneView does not permit a SAN to be managed through more than one SAN manager. When associating an HPE OneView network to the SAN, the choice of which SAN to associate determines which SAN manager will be used to manage the SAN. Any subsequent change to a new SAN manager application requires to go through a phased migration process.

HPE OneView supports SAN managers from different vendors. See the HPE OneView Support Matrix (http://www.hpe.com/info/oneview/docs) for a list of supported SAN managers.

This Cmdlet will return the configured SAN Manager(s).

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVSanManager

Name            Status State   Type                    Version  Managed SANs
----            ------ -----   ----                    -------  ------------
bna1.domain.com OK     Managed Brocade Network Advisor 12.3.4.5 {Fabric_A, Fabric_B}
bna2.domain.com OK     Managed Brocade Network Advisor 12.3.4.5 {Fabric_C, Fabric_D}
```

Display all SAN Managers.

## Parameters

### -Name &lt;String&gt;

Provide the name of the SAN Manager to display.

| Aliases | SanManager |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? |  |
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

=== "HPEOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]"
    Single SAN Manager resource
    

=== "System.Collections.ArrayList <HPEOneView.Storage.SanManager>"
    Multiple SAN Manager resources
    

## Related Links

* [Add-OVSanManager](add-ovsanmanager.md)
* [Remove-OVSanManager](remove-ovsanmanager.md)
* [Set-OVSanManager](set-ovsanmanager.md)
* [Update-OVSanManager](update-ovsanmanager.md)
