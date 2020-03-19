---
description: 
---

# Add-HPOVStorageSystem

## Syntax

```text
Add-HPOVStorageSystem
    [-Hostname] <String>
        [-Hostname] <String>

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

```text
Add-HPOVStorageSystem
    [-Hostname] <String>
    [-VIPS] <Hashtable>
        [-VIPS] <Hashtable>

    [-Username <String>]
    [-Password <Object>]
    [-Family <String>]
    [-ShowSystemDetails]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

This cmdlet will assist with importing a supported Storage System. In order for the Storage Ports to be mapped to Expected Networks, either a Supported SAN Manager will need to be configured, or 3PAR Direct Attach networks will have to exist.

When adding supported HP 3PAR storage systems, please make sure "startwsapi" has been executed from the HP 3PAR CLI, which enables the HP 3PAR REST API that is required by HPE OneView.
## Examples

###  Example 1 

```text
$task = Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -username 3paradm -password 3pardata -Async
Wait-HPOVTaskComplete $task


```

Add the Storage System using default settings, and let the appliance detect the connected Storage System Ports.  (A supported SAN Manager must first be added, and Managed SANs mapped to the specific FC Network resources.)

###  Example 2 

```text
$StorageSystemPorts = @{"1:1:1" = "Fabric A"; "2:1:1" = "Fabric A"; "1:1:2" = "Fabric B"; "2:1:2" = "Fabric B"}
$StoragePortGroups = @{"1:1:1"= "PG1";  "2:1:1" = "PG1"; "1:1:2" = "PG2"; "2:1:2" = "PG2"}
Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -username 3paradm -password 3pardata -Domain VirtaulDomain1 -Ports $StorageSystemPorts -PortGroups $StoragePortGroups | Wait-HPOVTaskComplete

```

Add the Storage System using default settings, and specify the Storage System Ports that will be assigned to the Expected Networks.

###  Example 3 

```text
$IscsiNetwork = Get-HPOVNetwork -Name "IscsiNetwork" -ErrorAction Stop
$StoreVirtualAddress = "storevirtual1.domain.com"
$StorageSystemPSCredential = Get-Credential -Username administrator
Add-HPOVStorageSystem -Family StoreVirtual -Hostname $StoreVirtualAddress -Credential $StorageSystemPSCredential -VIPS @{ "192.168.191.22" = $IscsiNetwork }
```

Add a StoreVirtual storage system with PSCredential object.

## Parameters

### -Hostname &lt;String&gt;

IP Address of FQDN of the storage systems.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Family &lt;String&gt;

Aliases [-Type]

Specify the type of Storage System to add: StorageVirtual or StoreServ.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | StoreServ |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Administrator account of the target storage system.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

Password of administrator account password.  Can either be String or `[System.Security.SecureString]`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Domain &lt;String&gt;

Specify the HP 3PAR Virtual Domain name.  Default is "NO DOMAIN". The value provided is CAsesEnSItive.

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

Specify the StoreVirtual VIP(s) and associated Ethernet Network. 
	
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

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
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

_**None.  You cannot pipe objects to this cmdlet.**_



## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Add Storage System Async Task.


## Related Links

* [Get-HPOVStorageSystem](get-hpovstoragesystem.md)
* [Remove-HPOVStorageSystem](remove-hpovstoragesystem.md)
* [Show-HPOVStorageSystemPerformancePolicy](show-hpovstoragesystemperformancepolicy.md)
* [Update-HPOVStorageSystem](update-hpovstoragesystem.md)
