---
description: Retrieves the configuration of the primary NIC of the appliance
---

# Get-HPOVApplianceNetworkConfig

## Syntax

```text
Get-HPOVApplianceNetworkConfig
    [-Location <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Retrieves the configuration parameters of the primary network interface on the appliance, which can be captured into a customer object for further operation, or captured to a text file in json format.

## Examples

###  Example 1 

```text
Get-HPOVApplianceNetworkConfig
Hostname         IPv4Type IPv4Address    IPv4DNS                      IPv6Type    IPv6Address IPv6DNS
--------         -------- -----------    -------                      --------    ----------- -------
hpov1.domain.com STATIC   172.20.51.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}
hpov2.domain.com STATIC   172.20.52.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}
```

Outputs the configuration of the primary network interface to standard output.

###  Example 2 

```text
Get-HPOVApplianceNetworkConfig -Appliance hpov1.domain.com | fl
Hostname    : hpov1.domain.com 
IPv4Type    : STATIC
IPv4Address : 172.20.51.4
IPv4Mask    : 255.255.255.0
IPv4Gateway : 172.20.51.1
IPv4DNS     : {172.20.10.41, 172.20.10.42}
IPv6Type    : UNCONFIGURE
IPv6Address :
IPv6Mask    :
IPv6Gateway :
IPv6DNS     : {}
```

Outputs the configuration of the primary network interface and pipe to Format-List for more information about the network configuration.

###  Example 3 

```text
$myAppNetConfig = Get-HPOVApplianceNetworkConfig -Appliance hpov1.domain.com

```

Outputs the configuration of the primary network interface of the appliance to the object variable $myAppNetConfig

###  Example 4 

```text
Get-HPOVApplianceNetworkConfig -Location .

```

Outputs the configuration of the primary network interface of the appliance to the current directory.

## Parameters

### -Location &lt;String&gt;

Aliases [-ExportFile]
Directory to where the applinace network configuration will be exported to.
Exported file name will be "{$ApplianceConnection.Name}_ApplianceNetConf.json".

| Aliases | x, export, exportFile |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.ApplianceServerConfiguration [System.Management.Automation.PSCustomObject]**_

A collection object containing the properties and values of the primary network interface of the appliance.

_**HPOneView.Appliance.ApplianceServerConfiguration.ApplianceNetworks [System.Management.Automation.PSCustomObject]**_

The applianceNetworks property will display the appliance Networking in either a Format-Table (default) or Format-List view.

_**System.IO.FileSystemInfo**_

If exporting the appliance network configuration, the file object created will be returned.

## Related Links

* [Set-HPOVApplianceNetworkConfig](set-hpovappliancenetworkconfig.md)
