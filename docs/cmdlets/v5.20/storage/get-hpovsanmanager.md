---
description: Retrieve SAN Manager resource(s).
---

# Get-HPOVSanManager

## Syntax

```text
Get-HPOVSanManager
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

{% hint style="info" %}
Minimum required privileges: Read-
{% endhint %}
only
## Examples

###  Example 1 

```text
Get-HPOVSanManager

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

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

Single SAN Manager resource

_**System.Collections.ArrayList <HPOneView.Storage.SanManager>**_

Multiple SAN Manager resources

## Related Links

* [Add-HPOVSanManager](add-hpovsanmanager.md)
* [Remove-HPOVSanManager](remove-hpovsanmanager.md)
* [Set-HPOVSanManager](set-hpovsanmanager.md)
* [Update-HPOVSanManager](update-hpovsanmanager.md)
