---
description: Retrieves the configuration of the primary NIC of the appliance.
---

# Get-HPOVApplianceNetworkConfig

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVApplianceNetworkConfig [[-Location] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This Cmdlet will return the appliance network settings configuration parameters of the primary network interface on the appliance, which can be captured into a customer object for further operation, or captured to a text file in JSON format.

{% hint style="warning" %}
Any time the IP address or hostname of the appliance changes, any CA-signed appliance certificate associated with the appliance is erased, and a new self-signed appliance certificate is generated. In this case, you must generate a new Certificate Signing Request \(CSR\), have it signed by a CA, and import it into the appliance.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Location &lt;String&gt; 

Directory to where the appliance network configuration will be exported to. Exported file name will be `{$ApplianceConnection.Name}_ApplianceNetConf.json`.

| Aliases | x, export, exportFile |
| :--- | :--- |
| Required? | false |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.ApplianceServerConfiguration \[System.Management.Automation.PSCustomObject\]**_

A collection object containing the properties and values of the primary network interface of the appliance.

_**HPOneView.Appliance.ApplianceServerConfiguration.ApplianceNetworks \[System.Management.Automation.PSCustomObject\]**_

The applianceNetworks property will display the appliance Networking in either a Format-Table \(default\) or Format-List view.

_**System.IO.FileSystemInfo**_

If exporting the appliance network configuration, the file object created will be returned.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceNetworkConfig
Hostname         IPv4Type IPv4Address    IPv4DNS                      IPv6Type    IPv6Address IPv6DNS
--------         -------- -----------    -------                      --------    ----------- -------
hpov1.domain.com STATIC   172.20.51.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}
hpov2.domain.com STATIC   172.20.52.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}

```

Outputs the configuration of the primary network interface to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
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

```text
 -------------------------- EXAMPLE 3 --------------------------
$myAppNetConfig = Get-HPOVApplianceNetworkConfig -Appliance hpov1.domain.com
```

Outputs the configuration of the primary network interface of the appliance to the object variable `$myAppNetConfig`.

```text
 -------------------------- EXAMPLE 4 --------------------------
Get-HPOVApplianceNetworkConfig -Location .
```

Outputs the configuration of the primary network interface of the appliance to the current directory. 

### Related Links 

* [Set-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceNetworkConfig)

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVApplianceNetworkConfig [[-Location] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This Cmdlet will return the appliance network settings configuration parameters of the primary network interface on the appliance, which can be captured into a customer object for further operation, or captured to a text file in JSON format.

{% hint style="warning" %}
Any time the IP address or hostname of the appliance changes, any CA-signed appliance certificate associated with the appliance is erased, and a new self-signed appliance certificate is generated. In this case, you must generate a new Certificate Signing Request \(CSR\), have it signed by a CA, and import it into the appliance.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Location &lt;String&gt; 

Directory to where the appliance network configuration will be exported to. Exported file name will be `{$ApplianceConnection.Name}_ApplianceNetConf.json`.

| Aliases | x, export, exportFile |
| :--- | :--- |
| Required? | false |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.ApplianceServerConfiguration \[System.Management.Automation.PSCustomObject\]**_

A collection object containing the properties and values of the primary network interface of the appliance.

_**HPOneView.Appliance.ApplianceServerConfiguration.ApplianceNetworks \[System.Management.Automation.PSCustomObject\]**_

The applianceNetworks property will display the appliance Networking in either a Format-Table \(default\) or Format-List view.

_**System.IO.FileSystemInfo**_

If exporting the appliance network configuration, the file object created will be returned.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceNetworkConfig
Hostname         IPv4Type IPv4Address    IPv4DNS                      IPv6Type    IPv6Address IPv6DNS
--------         -------- -----------    -------                      --------    ----------- -------
hpov1.domain.com STATIC   172.20.51.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}
hpov2.domain.com STATIC   172.20.52.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}

```

Outputs the configuration of the primary network interface to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
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

```text
 -------------------------- EXAMPLE 3 --------------------------
$myAppNetConfig = Get-HPOVApplianceNetworkConfig -Appliance hpov1.domain.com
```

Outputs the configuration of the primary network interface of the appliance to the object variable `$myAppNetConfig`.

```text
 -------------------------- EXAMPLE 4 --------------------------
Get-HPOVApplianceNetworkConfig -Location .
```

Outputs the configuration of the primary network interface of the appliance to the current directory. 

### Related Links 

* [Set-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceNetworkConfig)

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVApplianceNetworkConfig [[-Location] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This Cmdlet will return the appliance network settings configuration parameters of the primary network interface on the appliance, which can be captured into a customer object for further operation, or captured to a text file in JSON format.

{% hint style="warning" %}
Any time the IP address or hostname of the appliance changes, any CA-signed appliance certificate associated with the appliance is erased, and a new self-signed appliance certificate is generated. In this case, you must generate a new Certificate Signing Request \(CSR\), have it signed by a CA, and import it into the appliance.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Location &lt;String&gt; 

Directory to where the appliance network configuration will be exported to. Exported file name will be `{$ApplianceConnection.Name}_ApplianceNetConf.json`.

| Aliases | x, export, exportFile |
| :--- | :--- |
| Required? | false |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.ApplianceServerConfiguration \[System.Management.Automation.PSCustomObject\]**_

A collection object containing the properties and values of the primary network interface of the appliance.

_**HPOneView.Appliance.ApplianceServerConfiguration.ApplianceNetworks \[System.Management.Automation.PSCustomObject\]**_

The applianceNetworks property will display the appliance Networking in either a Format-Table \(default\) or Format-List view.

_**System.IO.FileSystemInfo**_

If exporting the appliance network configuration, the file object created will be returned.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceNetworkConfig
Hostname         IPv4Type IPv4Address    IPv4DNS                      IPv6Type    IPv6Address IPv6DNS
--------         -------- -----------    -------                      --------    ----------- -------
hpov1.domain.com STATIC   172.20.51.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}
hpov2.domain.com STATIC   172.20.52.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}

```

Outputs the configuration of the primary network interface to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
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

```text
 -------------------------- EXAMPLE 3 --------------------------
$myAppNetConfig = Get-HPOVApplianceNetworkConfig -Appliance hpov1.domain.com
```

Outputs the configuration of the primary network interface of the appliance to the object variable `$myAppNetConfig`.

```text
 -------------------------- EXAMPLE 4 --------------------------
Get-HPOVApplianceNetworkConfig -Location .
```

Outputs the configuration of the primary network interface of the appliance to the current directory. 

### Related Links 

* [Set-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceNetworkConfig)

