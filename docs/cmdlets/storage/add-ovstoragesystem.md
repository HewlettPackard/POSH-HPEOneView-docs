---
description: Import a supported Storage System
---

# Add-OVStorageSystem

## Syntax

```powershell
Add-OVStorageSystem
    [-Hostname] <String>
    [-Credential] <PSCredential>
    [-Username <String>]
    [-Password <Object>]
    [-Family <String>]
    [-Domain <String>]
    [-Ports <Object>]
    [-PortGroups <Hashtable>]
    [-ShowSystemDetails]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
Add-OVStorageSystem
    [-Hostname] <String>
    [-VIPS] <Hashtable>
    [-Credential] <PSCredential>
    [-Username <String>]
    [-Password <Object>]
    [-Family <String>]
    [-ShowSystemDetails]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A storage system is a storage device from which logical disks (volumes) can be provisioned and presented to servers through Fibre Channel ports or iSCSI IP addresses. Bringing SAN storage systems under management of the appliance enables you to add and create volumes. You can then attach volumes to server profiles through volume attachments. This enables the server hardware assigned to the server profiles to access the SAN storage system. StorveServe, StoreVirtual, and Nimble are the supported storage system types.

This Cmdlet will assist with importing a supported Storage System. In order for the Storage Ports to be mapped to Expected Networks, either a Supported SAN Manager will need to be configured, or Fibre Channel Direct Attach networks will have to exist.

When adding supported HPE 3PAR storage systems, please make sure "startwsapi" has been executed from the HPE 3PAR CLI, which enables the HPE 3PAR REST API that is required by HPE OneView.

???+ info
    Minimum required privileges: Infrastructure administrator or Storage administrator.

## Examples

###  Example 1 

```powershell
$task = Add-OVStorageSystem -hostname "3par-array.consoto.com" -Credential (Get-Credential) -Async
Wait-OVTaskComplete -InputObject $task
```

Add the Storage System using default settings, and let the appliance detect the connected Storage System Ports.  (A supported SAN Manager must first be added, and Managed SANs mapped to the specific FC Network resources.)

###  Example 2 

```powershell
$StorageSystemPorts = @{"1:1:1" = "Fabric A"; "2:1:1" = "Fabric A"; "1:1:2" = "Fabric B"; "2:1:2" = "Fabric B"}
$StoragePortGroups = @{"1:1:1"= "PG1";  "2:1:1" = "PG1"; "1:1:2" = "PG2"; "2:1:2" = "PG2"}
Add-OVStorageSystem -hostname "3par-array.consoto.com" -username 3paradm -password 3pardata -Domain VirtaulDomain1 -Ports $StorageSystemPorts -PortGroups $StoragePortGroups | Wait-OVTaskComplete
```

Add the Storage System using default settings, and specify the Storage System Ports that will be assigned to the Expected Networks.

###  Example 3 

```powershell
$IscsiNetwork = Get-OVNetwork -Name "IscsiNetwork" -ErrorAction Stop
$NimbleAddress = "nimble.domain.com"
$StorageSystemPSCredential = Get-Credential -Username administrator
Add-OVStorageSystem -Family Nimble -Hostname $NimbleAddress -Credential $StorageSystemPSCredential -VIPS @{ "192.168.191.22" = $IscsiNetwork }
```

Add a Nimble iSCSI storage system with PSCredential object.

## Parameters

### -Hostname &lt;String&gt;

IP Address or FQDN of the storage systems.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Family &lt;String&gt;

Specify the type of Storage System to add:

	* Alletra6000
	* Alletra9000
	* Nimble
	* StorageVirtual
	* StoreServ
	* Primera

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | StoreServ |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Provide the credentials to authenticate to the storage system.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

???+ info
    This parameter is now deprecated.  Please update to the `-Credential` parameter.


Administrator account of the target storage system.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

???+ info
    This parameter is now deprecated.  Please update to the `-Credential` parameter.


Password of administrator account password.  Can either be String or `[System.Security.SecureString]`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Domain &lt;String&gt;

Specify the HPE 3PAR Virtual Domain name.  Default is "NO DOMAIN". The value provided is CAsesEnSItive.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | NO DOMAIN |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Ports &lt;Object&gt;

Specify the Host Ports and Expected Network in an Array of PSCustomObject entries. 
    
Example: @{"1:1:1"="Fabric A";"2:2:2"="Fabric B"}

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PortGroups &lt;Hashtable&gt;

Specify the Host Ports to group together. 
    
Example: @{"1:1:1" = "PG1"; "2:2:2" = "PG2"}

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VIPS &lt;Hashtable&gt;

Specify the StoreVirtual or Nimble VIP(s) and associated Ethernet Network. 
    
Example:

    @{"10.158.11.42" = $EthernetNetwork}

or

    @{"10.158.11.42" = $EthernetNetwork1; "10.158.12.42" = $EthernetNetwork2;}

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
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

### -ShowSystemDetails &lt;SwitchParameter&gt;

By default, the Cmdlet will no longer display the details about the Storage System.  Use this parameter to display information about the storage system when adding to the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Add Storage System Async Task.
    

## Related Links

* [Get-OVStorageSystem](get-ovstoragesystem.md)
* [Get-OVStoragePool](get-ovstoragepool.md)
* [Set-OVStoragePool](set-ovstoragepool.md)
* [Get-OVStorageVolumeSet](get-ovstoragevolumeset.md)
* [Remove-OVStorageSystem](remove-ovstoragesystem.md)
* [Show-OVStorageSystemPerformancePolicy](show-ovstoragesystemperformancepolicy.md)
* [Update-OVStorageSystem](update-ovstoragesystem.md)
