---
description: Add a supported SAN Manager
---

# Add-OVSanManager

## Syntax

```powershell
Add-OVSanManager
    [-Type] <String>
    [-Hostname] <String>
    [-Port <Int32>]
    [-Username] <String>
    [-Password] <Object>
    [-Credential <PSCredential>]
    [-UseSsl]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
Add-OVSanManager
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

SAN managers are a resource in HPE OneView that represent a connection to an external entity through which SANs are discovered and managed. The external entity can be vendor-specific management software or a physical switch.

SANs are created outside of HPE OneView in the SAN manager vendor?s management interface. Once created, SANs can be discovered and managed in HPE OneView using the SAN Manager resource.

When managing SAN managers, HPE OneView does not permit a SAN to be managed through more than one SAN manager. When associating an HPE OneView network to the SAN, the choice of which SAN to associate determines which SAN manager will be used to manage the SAN. Any subsequent change to a new SAN manager application requires to go through a phased migration process.

HPE OneView supports SAN managers from different vendors.  Supported SAN Managers are:

* Brocade SAN Network Advisor
* Brocade FOS capable switches. Not all Brocade FC switches support FOS REST API.  Please refer to Brocade/Brocade FC switch documentation for more information.
* HPE Networking 5900CP  (FC or FCoE)
* HPE Networking 5900AF (FC-only)
* Cisco Nexus (FC or FCoE)
* Cisco MDS (FC-only)

???+ info
    Minimum required privileges: Infrastructure administrator or Storage administrator.

## Examples

###  Example 1 

```powershell
$task = Add-OVSanManager -type BNA -hostname BNA.contoso.com -Credential (Get-Credential) -usessl
Wait-OVTaskComplete -InputObject $task
```

Add a new Brocade Network Advisor SAN Manager.

###  Example 2 

```powershell
# Define the SNMPv3 auth protocol and levels
$CiscoSanManagerSnmpUserName = "ssh-user-SHA-AES128"
$CiscoSanManagerSnmpAuthLevel = "AuthAndPriv"
$CiscoSanManagerSnmpAuthProtocol = "SHA"
$CiscoSanManagerSnmpPrivProtocol = "aes-128"
$CiscoSanManagerSnmpAuthPassword = ConvertTo-SecureString -String "MyPassword" -AsPlainText -Force
$CiscoSanManagerSnmpPrivPassword = ConvertTo-SecureString -String "MyPassword" -AsPlainText -Force

# Define the parameters for the two SAN fabric switches to add
$Params = @(@{

    Hostname         = "172.18.20.1";
    Type             = "Cisco";
    SnmpUsername     = $CiscoSanManagerSnmpUserName;
    SnmpAuthLevel    = $CiscoSanManagerSnmpAuthLevel;
    SnmpAuthProtocol = $CiscoSanManagerSnmpAuthProtocol;
    SnmpAuthPassword = $CiscoSanManagerSnmpAuthPassword;
    SnmpPrivProtocol = $CiscoSanManagerSnmpPrivProtocol; 
    SnmpPrivPassword = $CiscoSanManagerSnmpPrivPassword

}, @{

    Hostname         = "172.18.20.2";
    Type             = "Cisco";
    SnmpUsername     = $CiscoSanManagerSnmpUserName;
    SnmpAuthLevel    = $CiscoSanManagerSnmpAuthLevel;
    SnmpAuthProtocol = $CiscoSanManagerSnmpAuthProtocol;
    SnmpAuthPassword = $CiscoSanManagerSnmpAuthPassword;
    SnmpPrivProtocol = $CiscoSanManagerSnmpPrivProtocol; 
    SnmpPrivPassword = $CiscoSanManagerSnmpPrivPassword

})    

# Add the SAN fabric switches as SAN managers
$Params | % { Add-OVSanManager @_ | Wait-OVTaskComplete }
```

Add two Cisco FC SAN switches as SAN Managers.

## Parameters

### -Type &lt;String&gt;

SAN Manager type to add.  Accepted values are:

* BrocadeFOS
* FOS
* HP
* HPE
* Cisco

    The following parameter values are no longer supported and have been removed:

* Brocade
* BNA
* Brocade Network Advisor

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

SNMPv3 UserName Password.  Can be either `[System.String]` or `[System.Security.SecureString]` type.

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

Use to enable SSL communication with the SAN Manager (specifically for the Brocade Network Advisor or BrocadeFOS SAN Manager type

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

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object.

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
    Asynchronous task resource to monitor.
    

## Related Links

* [Get-OVSanManager](get-ovsanmanager.md)
* [Remove-OVSanManager](remove-ovsanmanager.md)
* [Set-OVSanManager](set-ovsanmanager.md)
* [Update-OVSanManager](update-ovsanmanager.md)
