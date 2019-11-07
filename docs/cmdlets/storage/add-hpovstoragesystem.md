---
description: Import a supported Storage System
---

# Add-HPOVStorageSystem

## HPE OneView 5.00 Library

### Syntax

```
Add-HPOVStorageSystem [-Hostname] <String> [-Credential] <PSCredential PSCredential> [[-Family] <String>] [[-Domain] <String>] [[-Ports] <Object>] [[-PortGroups] <Hashtable>] [[-ShowSystemDetails] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```
Add-HPOVStorageSystem [-Hostname] <String> [-VIPS] <Hashtable> [-Credential] <PSCredential PSCredential> [[-Family] <String>] [[-ShowSystemDetails] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

A storage system is a storage device from which logical disks \(volumes\) can be provisioned and presented to servers through Fibre Channel ports or iSCSI IP addresses. Bringing SAN storage systems under management of the appliance enables you to add and create volumes. You can then attach volumes to server profiles through volume attachments. This enables the server hardware assigned to the server profiles to access the SAN storage system. StorveServe, StoreVirtual, and Nimble are the supported storage system types.

This cmdlet will assist with importing a supported Storage System. In order for the Storage Ports to be mapped to Expected Networks, either a Supported SAN Manager will need to be configured, or Fibre Channel Direct Attach networks will have to exist.

When adding supported HP 3PAR storage systems, please make sure "startwsapi" has been executed from the HP 3PAR CLI, which enables the HP 3PAR REST API that is required by HPE OneView.

{% hint style="info" %}
Privileges: Infrastructure administrator or Storage administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential PSCredential&gt; 

Provide the credentials to authenticate to the storage system.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Domain &lt;String&gt; 

Specify the HP 3PAR Virtual Domain name. Default is "NO DOMAIN". The value provided is CAsesEnSItive.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | NO DOMAIN |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Family &lt;String&gt; 

Specify the type of Storage System to add: Nimble, StorageVirtual or StoreServ.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | StoreServ |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

IP Address of FQDN of the storage systems.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt; 

{% hint style="warning" %}
This parameter will be deprecated in a future release. Please update to the -Credential parameter.
{% endhint %}

Password of administrator account password. Can either be String or System.Security.SecureString.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -PortGroups &lt;Hashtable&gt; 

Specify the Host Ports to group together.

Example: `@{"1:1:1" = "PG1"; "2:2:2" = "PG2"}`

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Ports &lt;Object&gt; 

Specify the Host Ports and Expected Network in an Array of PSCustomObject entries.

Example: `@{"1:1:1"="Fabric A";"2:2:2"="Fabric B"}`

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ShowSystemDetails &lt;SwitchParameter&gt; 

By default, the Cmdlet will no longer display the details about the Storage System. Use this parameter to display information about the storage system when adding to the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

{% hint style="warning" %}
This parameter will be deprecated in a future release. Please update to the -Credential parameter.
{% endhint %}

Administrator account of the target storage system.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -VIPS &lt;Hashtable&gt; 

Specify the Nimble and StoreVirtual VIP\(s\) and associated Ethernet Network.

Example:

```
@{"10.158.11.42" = $EthernetNetwork}
```

or

```
@{"10.158.11.42" = $EthernetNetwork1; "10.158.12.42" = $EthernetNetwork2;}
```

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Add Storage System Async Task.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
$task = Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -Credential (Get-Credential) -Async
Wait-HPOVTaskComplete -InputObject $task

```

Add the Storage System using default settings, and let the appliance detect the connected Storage System Ports. \(A supported SAN Manager must first be added, and Managed SANs mapped to the specific FC Network resources.\)

```
 -------------------------- EXAMPLE 2 --------------------------
$StorageSystemPorts = @{"1:1:1" = "Fabric A"; "2:1:1" = "Fabric A"; "1:1:2" = "Fabric B"; "2:1:2" = "Fabric B"}
$StoragePortGroups = @{"1:1:1"= "PG1";  "2:1:1" = "PG1"; "1:1:2" = "PG2"; "2:1:2" = "PG2"}
Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -Credential (Get-Credential) -Domain VirtaulDomain1 -Ports $StorageSystemPorts -PortGroups $StoragePortGroups | Wait-HPOVTaskComplete
```

Add the Storage System using default settings, and specify the Storage System Ports that will be assigned to the Expected Networks.

```csharp
 -------------------------- EXAMPLE 3 --------------------------
$IscsiNetwork = Get-HPOVNetwork -Name "IscsiNetwork" -ErrorAction Stop
$NimbleAddress = "nimble.domain.com"
$StorageSystemPSCredential = Get-Credential -Username administrator
Add-HPOVStorageSystem -Family Nimble -Hostname $NimbleAddress -Credential $StorageSystemPSCredential -VIPS @{ "192.168.191.22" = $IscsiNetwork }
```

Add a Nimble iSCSI storage system with PSCredential object.

### Related Links 

* [Get-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageSystem) 
* Get-HPOVStoragePool
* Set-HPOVStoragePool
* Get-HPOVStorageVolumeSet
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem) 
* [Show-HPOVStorageSystemPerformancePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVStorageSystemPerformancePolicy) 
* [Update-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStorageSystem) 

## HPE OneView 4.20 Library

### Syntax

```
Add-HPOVStorageSystem [-Hostname] <String> [-Credential] <PSCredential PSCredential> [[-Family] <String>] [[-Domain] <String>] [[-Ports] <Object>] [[-PortGroups] <Hashtable>] [[-ShowSystemDetails] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```
Add-HPOVStorageSystem [-Hostname] <String> [-VIPS] <Hashtable> [-Credential] <PSCredential PSCredential> [[-Family] <String>] [[-ShowSystemDetails] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

A storage system is a storage device from which logical disks \(volumes\) can be provisioned and presented to servers through Fibre Channel ports or iSCSI IP addresses. Bringing SAN storage systems under management of the appliance enables you to add and create volumes. You can then attach volumes to server profiles through volume attachments. This enables the server hardware assigned to the server profiles to access the SAN storage system. StorveServe, StoreVirtual, and Nimble are the supported storage system types.

This cmdlet will assist with importing a supported Storage System. In order for the Storage Ports to be mapped to Expected Networks, either a Supported SAN Manager will need to be configured, or Fibre Channel Direct Attach networks will have to exist.

When adding supported HP 3PAR storage systems, please make sure "startwsapi" has been executed from the HP 3PAR CLI, which enables the HP 3PAR REST API that is required by HPE OneView.

{% hint style="info" %}
Privileges: Infrastructure administrator or Storage administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential PSCredential&gt; 

Provide the credentials to authenticate to the storage system.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Domain &lt;String&gt; 

Specify the HP 3PAR Virtual Domain name. Default is "NO DOMAIN". The value provided is CAsesEnSItive.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | NO DOMAIN |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Family &lt;String&gt; 

Specify the type of Storage System to add: Nimble, StorageVirtual or StoreServ.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | StoreServ |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

IP Address of FQDN of the storage systems.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt; 

{% hint style="warning" %}
This parameter is now deprecated. Please update to the -Credential parameter.
{% endhint %}

Password of administrator account password. Can either be String or System.Security.SecureString.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -PortGroups &lt;Hashtable&gt; 

Specify the Host Ports to group together.

Example: `@{"1:1:1" = "PG1"; "2:2:2" = "PG2"}`

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Ports &lt;Object&gt; 

Specify the Host Ports and Expected Network in an Array of PSCustomObject entries.

Example: `@{"1:1:1"="Fabric A";"2:2:2"="Fabric B"}`

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ShowSystemDetails &lt;SwitchParameter&gt; 

By default, the Cmdlet will no longer display the details about the Storage System. Use this parameter to display information about the storage system when adding to the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

{% hint style="warning" %}
This parameter is now deprecated. Please update to the -Credential parameter.
{% endhint %}

Administrator account of the target storage system.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -VIPS &lt;Hashtable&gt; 

Specify the Nimble or StoreVirtual VIP\(s\) and associated Ethernet Network.

Example:

```
@{"10.158.11.42" = $EthernetNetwork}
```

or

```
@{"10.158.11.42" = $EthernetNetwork1; "10.158.12.42" = $EthernetNetwork2;}
```

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Add Storage System Async Task.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
$task = Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -Credential (Get-Credential) -Async
Wait-HPOVTaskComplete -InputObject $task

```

Add the Storage System using default settings, and let the appliance detect the connected Storage System Ports. \(A supported SAN Manager must first be added, and Managed SANs mapped to the specific FC Network resources.\)

```
 -------------------------- EXAMPLE 2 --------------------------
$StorageSystemPorts = @{"1:1:1" = "Fabric A"; "2:1:1" = "Fabric A"; "1:1:2" = "Fabric B"; "2:1:2" = "Fabric B"}
$StoragePortGroups = @{"1:1:1"= "PG1";  "2:1:1" = "PG1"; "1:1:2" = "PG2"; "2:1:2" = "PG2"}
Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -Credential (Get-Credential) -Domain VirtaulDomain1 -Ports $StorageSystemPorts -PortGroups $StoragePortGroups | Wait-HPOVTaskComplete
```

Add the Storage System using default settings, and specify the Storage System Ports that will be assigned to the Expected Networks.

```csharp
 -------------------------- EXAMPLE 3 --------------------------
$IscsiNetwork = Get-HPOVNetwork -Name "IscsiNetwork" -ErrorAction Stop
$NimbleAddress = "nimble.domain.com"
$StorageSystemPSCredential = Get-Credential -Username administrator
Add-HPOVStorageSystem -Family Nimble -Hostname $NimbleAddress -Credential $StorageSystemPSCredential -VIPS @{ "192.168.191.22" = $IscsiNetwork }
```

Add a Nimble iSCSI storage system with PSCredential object.

### Related Links 

* [Get-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageSystem) 
* Get-HPOVStoragePool
* Set-HPOVStoragePool
* Get-HPOVStorageVolumeSet
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem) 
* [Show-HPOVStorageSystemPerformancePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVStorageSystemPerformancePolicy) 
* [Update-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStorageSystem) 

## HPE OneView 4.10 Library

### Syntax

```
Add-HPOVStorageSystem [-Hostname] <String> [-Credential] <PSCredential PSCredential> [[-Family] <String>] [[-Domain] <String>] [[-Ports] <Object>] [[-PortGroups] <Hashtable>] [[-ShowSystemDetails] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```
Add-HPOVStorageSystem [-Hostname] <String> [-VIPS] <Hashtable> [-Credential] <PSCredential PSCredential> [[-Family] <String>] [[-ShowSystemDetails] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

A storage system is a storage device from which logical disks \(volumes\) can be provisioned and presented to servers through Fibre Channel ports or iSCSI IP addresses. Bringing SAN storage systems under management of the appliance enables you to add and create volumes. You can then attach volumes to server profiles through volume attachments. This enables the server hardware assigned to the server profiles to access the SAN storage system. StorveServe and StoreVirtual are the supported storage system types.

This cmdlet will assist with importing a supported Storage System. In order for the Storage Ports to be mapped to Expected Networks, either a Supported SAN Manager will need to be configured, or Fibre Channel Direct Attach networks will have to exist.

When adding supported HP 3PAR storage systems, please make sure "startwsapi" has been executed from the HP 3PAR CLI, which enables the HP 3PAR REST API that is required by HPE OneView.

{% hint style="info" %}
Privileges: Infrastructure administrator or Storage administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential PSCredential&gt; 

Provide the credentials to authenticate to the storage system.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Domain &lt;String&gt; 

Specify the HP 3PAR Virtual Domain name. Default is "NO DOMAIN". The value provided is CAsesEnSItive.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | NO DOMAIN |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Family &lt;String&gt; 

Specify the type of Storage System to add: StorageVirtual or StoreServ.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | StoreServ |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

IP Address of FQDN of the storage systems.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt; 

{% hint style="warning" %}
This parameter will be deprecated in a future release. Please update to the `-Credential` parameter.
{% endhint %}

Password of administrator account password. Can either be String or System.Security.SecureString.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -PortGroups &lt;Hashtable&gt; 

Specify the Host Ports to group together.

Example: `@{"1:1:1" = "PG1"; "2:2:2" = "PG2"}`

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Ports &lt;Object&gt; 

Specify the Host Ports and Expected Network in an Array of PSCustomObject entries.

Example: `@{"1:1:1"="Fabric A";"2:2:2"="Fabric B"}`

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ShowSystemDetails &lt;SwitchParameter&gt; 

By default, the Cmdlet will no longer display the details about the Storage System. Use this parameter to display information about the storage system when adding to the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

{% hint style="warning" %}
This parameter will be deprecated in a future release. Please update to the `-Credential` parameter.
{% endhint %}

Administrator account of the target storage system.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -VIPS &lt;Hashtable&gt; 

Specify the StoreVirtual VIP\(s\) and associated Ethernet Network.

Example:

```
@{"10.158.11.42" = $EthernetNetwork}
```

or

```
@{"10.158.11.42" = $EthernetNetwork1; "10.158.12.42" = $EthernetNetwork2;}
```

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Add Storage System Async Task.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
$task = Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -Credential (Get-Credential) -Async
Wait-HPOVTaskComplete -InputObject $task

```

Add the Storage System using default settings, and let the appliance detect the connected Storage System Ports. \(A supported SAN Manager must first be added, and Managed SANs mapped to the specific FC Network resources.\)

```
 -------------------------- EXAMPLE 2 --------------------------
$StorageSystemPorts = @{"1:1:1" = "Fabric A"; "2:1:1" = "Fabric A"; "1:1:2" = "Fabric B"; "2:1:2" = "Fabric B"}
$StoragePortGroups = @{"1:1:1"= "PG1";  "2:1:1" = "PG1"; "1:1:2" = "PG2"; "2:1:2" = "PG2"}
Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -Credential (Get-Credential) -Domain VirtaulDomain1 -Ports $StorageSystemPorts -PortGroups $StoragePortGroups | Wait-HPOVTaskComplete
```

Add the Storage System using default settings, and specify the Storage System Ports that will be assigned to the Expected Networks.

```csharp
 -------------------------- EXAMPLE 3 --------------------------
$IscsiNetwork = Get-HPOVNetwork -Name "IscsiNetwork" -ErrorAction Stop
$StoreVirtualAddress = "sv1.domain.com"
$StorageSystemPSCredential = Get-Credential -Username administrator
Add-HPOVStorageSystem -Family StoreVirtual-Hostname $StoreVirtualAddress -Credential $StorageSystemPSCredential -VIPS @{ "192.168.191.22" = $IscsiNetwork }
```

Add a StoreVirtual iSCSI storage system with PSCredential object.

### Related Links 

* [Get-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageSystem) 
* Get-HPOVStoragePool
* Set-HPOVStoragePool
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem) 
* [Update-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStorageSystem) 



