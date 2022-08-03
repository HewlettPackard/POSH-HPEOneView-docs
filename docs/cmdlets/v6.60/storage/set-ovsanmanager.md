---
description: Update SAN Manager configuration
---

# Set-OVSanManager

## Syntax

```powershell
Set-OVSanManager
    [-InputObject] <Object>
    [-Username] <String>
    [-Password] <Object>
    [-Hostname <String>]
    [-Port <Int32>]
    [-EnableSsl]
    [-DisableSsl]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Set-OVSanManager
    [-InputObject] <Object>
    [-Username] <String>
    [-Password] <Object>
    [-Hostname <String>]
    [-Port <Int32>]
    [-SnmpUserName <String>]
    [-SnmpAuthLevel <String>]
    [-SnmpAuthProtocol <String>]
    [-SnmpAuthPassword <Object>]
    [-SnmpPrivProtocol <String>]
    [-SnmpPrivPassword <Object>]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Updates an existing SAN Manager configuration.  Can update the hostname/IP Address and credentials.  At least one optional parameter must be provided.

## Examples

###  Example 1 

```powershell
$task = Get-OVSanManager bna.domain.com -ApplianceConnection hpov.domain.com | Set-OVSanManager -hostname bna.newdomain.com | Wait-OVTaskComplete
```

Get the SAN Manager using Get-OVSanManager, and pipling the resource in order to update the hostname value.

###  Example 2 

```powershell
$task = Set-OVSanManager -name BNA.contoso.com -hostname bna.newdomain.com -ApplianceConnection hpov.domain.com | Wait-OVTaskComplete
```

Update the existing Brocade Network Advisor SAN Manager"s hostname with the new value.

###  Example 3 

```powershell
$task = Set-OVSanManager -name BNA.contoso.com -username newadmin -password updatedpassword -ApplianceConnection hpov.domain.com | Wait-OVTaskComplete
```

Update the existing Brocade Network Advisor SAN Manager"s username and password.

## Parameters

### -InputObject &lt;Object&gt;

Resource Object (from Get-OVSanManager) or Name of the SAN Manager to update.  If specifying a resource Name, the ApplianceConnection parameter is required.

| Aliases | name, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

Updated Hostname or IP Address of the SAN Manager.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Port &lt;Int32&gt;

Updated TCP Port of the SAN Manager.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Updated Username used to authenticate and manage the SAN Manager.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

Updated Password used to authenticate and manage the SAN Manager.  Can either be a String or `[System.Security.SecureString]` value.

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
| Required? | False |
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
| Required? | False |
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
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpAuthPassword &lt;Object&gt;

SNMPv3 UserName Password.  Can either be a `[System.String]` or `[System.Security.SecureString]` value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
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
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpPrivPassword &lt;Object&gt;

SNMPv3 Privacy Encryption Password.  Can either be a `[System.String]` or `[System.Security.SecureString]` value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableSsl &lt;SwitchParameter&gt;

Enable Secure WBEM communications to Brocade SAN Network Advisor.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisableSsl &lt;SwitchParameter&gt;

Enable Secure WBEM communications to Brocade SAN Network Advisor.

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

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

SAN Manager resource from Get-OVSanManager

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Update async task

## Related Links

* [Add-OVSanManager](add-ovsanmanager.md)
* [Get-OVSanManager](get-ovsanmanager.md)
* [Remove-OVSanManager](remove-ovsanmanager.md)
* [Update-OVSanManager](update-ovsanmanager.md)
