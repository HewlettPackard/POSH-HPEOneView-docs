---
description: Retrieve Storage System resource(s).
---

# Get-OVStorageSystem

## Syntax

```powershell
Get-OVStorageSystem
    [-Name <String>]
    [-Hostname <String>]
    [-Family <String>]
    [-ApplianceConnection <Array>]
    [-List]
    [<CommonParameters>]
```

```powershell
Get-OVStorageSystem
    [-SerialNumber <String>]
    [-Family <String>]
    [-ApplianceConnection <Array>]
    [-List]
    [<CommonParameters>]
```

## Description

This Cmdlet will display all or a specific storage system configured on the HPE OneView appliance.  A specific Storage System can be searched for by using the System Name (not FQDN) or Serial Number.  Use the List switch to display a report of the requested storage system(s).

## Examples

###  Example 1 

```powershell
Get-OVStorageSystem
```

Get all storage system resource objects managed by the appliance.

###  Example 2 

```powershell
Get-OVStorageSystem HP3Par_1
Status   Name     Serial Number Model        Storage Domain WWN                     Firmware
------   ----     ------------- -----        -------------- ---                     --------
Ok       HP3Par_1 TXQ1020307    HP_3PAR 7200 NoDomain       28:11:00:02:AC:00:08:7D 3.1.3
```

Get "HP3Par_1" storage system resource object managed by the appliance.

###  Example 3 

```powershell
Get-OVStorageSystem HP3Par_1 -report
Status   Name     Serial Number Model        Storage Domain WWN                     Firmware
------   ----     ------------- -----        -------------- ---                     --------
Ok       HP3Par_1 TXQ1020307    HP_3PAR 7200 NoDomain       28:11:00:02:AC:00:08:7D 3.1.3



[Credentials] Username Address
------------- -------- -------
              3paradm  172.18.11.13



[Capacity] Status   Total    Allocated   Free
---------- ------   -------- ----------- -------
           Ok       90.00TB  0.01TB      90.00TB



[Storage Pools] Status Name     Drive Type RAID  Total          Allocated   Free
--------------- ------ -------  ---------- ----  --------       ----------- -------
                OK     FC_NO_DN FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB



[Host Ports] Status  Port    WWPN                    Expected Network Actual Network Port Group Name
------------ ------  ------- ----------------------- ---------------- -------------- ---------------
             Ok      0:1:1   01:00:4A:2B:21:E1:00:11 Fabric A (DA)    Fabric A (DA)  Auto
             Ok      0:2:2   01:02:4A:2B:21:E1:00:12 Fabric A (DA)    Fabric A (DA)  Auto        
```

Show a report of the managed storage system(s).

## Parameters

### -Name &lt;String&gt;

Display the specific Storage System by its system name.

| Aliases | SystemName |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

Display the specific Storage System by its hostname (IP Address or FQDN).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SerialNumber &lt;String&gt;

Search for the Storage System based on the resource serial number instead of the name.

| Aliases | SN |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Family &lt;String&gt;

Specify the type of Storage System to add: Nimble, StorageVirtual, StoreServ or Primera.

| Aliases | None |
| :--- | :--- |
| Required? | False |
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

### -List &lt;SwitchParameter&gt;

Generate a report of the specific or all storage systems.

| Aliases | Report |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Storage.System [System.Management.Automation.PSCustomObject]"
    Single Storage System
    

=== "System.Collections.ArrayList <HPEOneView.Storage.System>"
    Multiple Storage Systems
    

## Related Links

* [Add-OVStorageSystem](add-ovstoragesystem.md)
* [Remove-OVStorageSystem](remove-ovstoragesystem.md)
* [Show-OVStorageSystemPerformancePolicy](show-ovstoragesystemperformancepolicy.md)
* [Update-OVStorageSystem](update-ovstoragesystem.md)
