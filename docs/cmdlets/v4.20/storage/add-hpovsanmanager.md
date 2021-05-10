---
description: Add a supported SAN Manager
---

# Add-HPOVSanManager

## Syntax

```text
Add-HPOVSanManager
    [-Type] <String>
    [-Hostname] <String>
    [-Username] <String>
    [-Password] <Object>
    [-Port <Int32>]
    [-UseSsl]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```text
Add-HPOVSanManager
    [-Type] <String>
    [-Hostname] <String>
    [-SnmpUserName] <String>
    [-Port <Int32>]
    [-SnmpAuthLevel] <String>
    [-SnmpAuthProtocol] <String>
    [-SnmpAuthPassword] <Object>
    [-SnmpPrivProtocol] <String>
    [-SnmpPrivPassword] <Object>
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Add a new SAN Manager to the appliance.  SAN Managers are hardware or software systems that manage SANs. The SAN Managers resource enables you to bring SAN management systems and the SANs they manage under management of the appliance. You can associate the managed SANs to Fibre Channel networks on the appliance when creating a (New-HPOVNetwork) or updating an existing (Set-HPOVNetwork) Fibre Channel Network Resource. This enables the appliance to automate zoning to make the SANs visible to server profiles. Zoning defines connections between Fibre Channel endpoints. Zones are a group of endpoints that can communicate with each other. Open SANs allow communication between all endpoints.

Supported SAN Managers are:

    * Brocade SAN Network Advisor
    * HPE Networking 5900CP  (FC or FCoE)
    * HPE Networking 5900AF (FC-only)
    * Cisco Nexus (FC or FCoE)
    * Cisco MDS (FC-only)
    
Please see the HPE OneView Support Matrix for supported versions.

## Examples

###  Example 1 

```text
$task = Add-HPOVSanManager -type BNA -hostname BNA.contoso.com -username Administrator -password password -usessl
Wait-HPOVTaskComplete $task
                        

```

Add a new Brocade Network Advisor SAN Manager.

## Parameters

### -Type &lt;String&gt;

SAN Manager type to add.  Accepted values are:

    * bna or Brocade Network Advisor
    * HP (HPN 5900CP or HPN 5900AF)
    * Cisco

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

FQDN or IP Address of the SAN Manager

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Port &lt;Int32&gt;

TCP Port of the SAN Manager.  The default port for Brocade Network Advisor is "5989".  The default port for HPN 5900CP is "161".

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Username used to authenticate and manage the SAN Manager.  This is only applicable for BNA SAN Manager.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

Password used to authenticate and manage the SAN Manager.  This is only applicable for BNA SAN Manager.  Can be either String or `[System.Security.SecureString]` type.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpUserName &lt;String&gt;

The SNMPv3 Community User Name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpAuthLevel &lt;String&gt;

The SNMPv3 Authentication Level.  Allowed values are:

    * None - No Security is required, only the SNMPv3 UserName is provided.
    * AuthOnly - SNMPv3 Authentication Encryption Security Level only. Must also provide `-SnmpAuthProtocol` and `-SnmpAuthPassword` parameters.
    * AuthAndPriv - SNMPv3 Authentication Encryption Security and Privacy Levels. Must also provide `-SnmpAuthProtocol`, `-SnmpAuthPassword`, `-SnmpPrivProtocol` and `-SnmpPrivPassword` parameters.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | None |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpAuthProtocol &lt;String&gt;

SNMPv3 Password Encryption Protocol. Allowed values are:

    * SHA
    * MD5

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpAuthPassword &lt;Object&gt;

SNMPv3 UserName Password.  Can be either String or `[System.Security.SecureString]` type.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpPrivProtocol &lt;String&gt;

SNMPv3 Privacy Protocol.  Allowed values are:

    * AES
    * DES

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpPrivPassword &lt;Object&gt;

SNMPv3 Privacy Encryption Password.  Can be either String or `[System.Security.SecureString]` type.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UseSsl &lt;SwitchParameter&gt;

Use to enable SSL communication with the SAN Manager (specifically for the BNA SAN Manager type.)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task.

## Related Links

* [Get-HPOVSanManager](get-hpovsanmanager.md)
* [Remove-HPOVSanManager](remove-hpovsanmanager.md)
* [Set-HPOVSanManager](set-hpovsanmanager.md)
* [Update-HPOVSanManager](update-hpovsanmanager.md)
