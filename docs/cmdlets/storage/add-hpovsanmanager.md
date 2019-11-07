---
description: Add a supported SAN Manager
---

# Add-HPOVSanManager

## HPE OneView 5.00 Library

### Syntax

```text
Add-HPOVSanManager [-Type] <String> [-Hostname] <String> [[-Port] <Int32>] [-Username] <String> [-Password] <Object> [[-Credential] <PSCredential>] [[-UseSsl] <SwitchParameter>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Add-HPOVSanManager [-Type] <String> [-Hostname] <String> [-SnmpUserName] <String> [[-Port] <Int32>] [-SnmpAuthLevel] <String> [-SnmpAuthProtocol] <String> [-SnmpAuthPassword] <Object> [-SnmpPrivProtocol] <String> [-SnmpPrivPassword] <Object> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Add a new SAN Manager to the appliance. SAN Managers are hardware or software systems that manage SANs. The SAN Managers resource enables you to bring SAN management systems and the SANs they manage under management of the appliance. You can associate the managed SANs to Fibre Channel networks on the appliance when creating a \(New-HPOVNetwork\) or updating an existing \(Set-HPOVNetwork\) Fibre Channel Network Resource. This enables the appliance to automate zoning to make the SANs visible to server profiles. Zoning defines connections between Fibre Channel endpoints. Zones are a group of endpoints that can communicate with each other. Open SANs allow communication between all endpoints.

Supported SAN Managers are:

* Brocade SAN Network Advisor
* HPE Networking 5900CP  \(FC or FCoE\)
* HPE Networking 5900AF \(FC-only\)
* Cisco Nexus \(FC or FCoE\)
* Cisco MDS \(FC-only\)

Please see the HPE OneView Support Matrix for supported versions.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Storage administrator.
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

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

#### Use this parameter if you want to provide a PSCredential object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

FQDN or IP Address of the SAN Manager

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt; 

{% hint style="warning" %}
This parameter is deprecated.  Please transition to using the `-Credential` parameter.
{% endhint %}

Password used to authenticate and manage the SAN Manager. This is only applicable for BNA SAN Manager. Can be either String or System.Security.SecureString type.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Port &lt;Int32&gt; 

TCP Port of the SAN Manager. The default port for Brocade Network Advisor is "5989". The default port for HPN 5900CP is "161".

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpAuthLevel &lt;String&gt; 

The SNMPv3 Authentication Level. Allowed values are:

* None - No Security is required, only the SNMPv3 UserName is provided.
* AuthOnly - SNMPv3 Authentication Encryption Security Level only. Must also provide -SnmpAuthProtocol and -SnmpAuthPassword parameters.
* AuthAndPriv - SNMPv3 Authentication Encryption Security and Privacy Levels. Must also provide -SnmpAuthProtocol, -SnmpAuthPassword, -SnmpPrivProtocol and -SnmpPrivPassword parameters.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | None |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpAuthPassword &lt;Object&gt; 

SNMPv3 UserName Password. Can be either String or System.Security.SecureString type.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpAuthProtocol &lt;String&gt; 

SNMPv3 Password Encryption Protocol. Allowed values are:

* SHA
* MD5

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpPrivPassword &lt;Object&gt; 

SNMPv3 Privacy Encryption Password. Can be either String or System.Security.SecureString type.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpPrivProtocol &lt;String&gt; 

SNMPv3 Privacy Protocol. Allowed values are:

* AES
* DES

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpUserName &lt;String&gt; 

The SNMPv3 Community User Name.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Type &lt;String&gt; 

SAN Manager type to add. Accepted values are:

* Brocade
* BNA
* Brocade Network Advisor
* BrocadeFOS
* FOS
* HP
* HPE
* Cisco

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -UseSsl &lt;SwitchParameter&gt; 

Use to enable SSL communication with the SAN Manager \(specifically for the Brocade Network Advisor or BrocadeFOS SAN Manager type.\)

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

{% hint style="warning" %}
This parameter is deprecated.  Please transition to using the `-Credential` parameter.
{% endhint %}

Username used to authenticate and manage the SAN Manager. This is only applicable for BNA SAN Manager.

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

Asynchronous task resource to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$task = Add-HPOVSanManager -type BNA -hostname BNA.contoso.com -Credential (Get-Credential) -usessl
Wait-HPOVTaskComplete -InputObject $task

```

 Add a new Brocade Network Advisor SAN Manager. 

```text
-------------------------- EXAMPLE 2 --------------------------
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
$Params | % { Add-HPOVSanManager @_ | Wait-HPOVTaskComplete }
```

 Add a new Brocade Network Advisor SAN Manager. 

### Related Links

* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager) 
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager) 
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager) 
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager) 

## HPE OneView 4.20 Library

### Syntax

```text
Add-HPOVSanManager [-Type] <String> [-Hostname] <String> [[-Port] <Int32>] [-Username] <String> [-Password] <Object> [[-Credential] <PSCredential>] [[-UseSsl] <SwitchParameter>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Add-HPOVSanManager [-Type] <String> [-Hostname] <String> [-SnmpUserName] <String> [[-Port] <Int32>] [-SnmpAuthLevel] <String> [-SnmpAuthProtocol] <String> [-SnmpAuthPassword] <Object> [-SnmpPrivProtocol] <String> [-SnmpPrivPassword] <Object> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Add a new SAN Manager to the appliance. SAN Managers are hardware or software systems that manage SANs. The SAN Managers resource enables you to bring SAN management systems and the SANs they manage under management of the appliance. You can associate the managed SANs to Fibre Channel networks on the appliance when creating a \(New-HPOVNetwork\) or updating an existing \(Set-HPOVNetwork\) Fibre Channel Network Resource. This enables the appliance to automate zoning to make the SANs visible to server profiles. Zoning defines connections between Fibre Channel endpoints. Zones are a group of endpoints that can communicate with each other. Open SANs allow communication between all endpoints.

Supported SAN Managers are:

* Brocade SAN Network Advisor
* HPE Networking 5900CP  \(FC or FCoE\)
* HPE Networking 5900AF \(FC-only\)
* Cisco Nexus \(FC or FCoE\)
* Cisco MDS \(FC-only\)

Please see the HPE OneView Support Matrix for supported versions.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Storage administrator.
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

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

#### Use this parameter if you want to provide a PSCredential object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

FQDN or IP Address of the SAN Manager

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt; 

{% hint style="warning" %}
This parameter will be deprecated in a future release.  Please transition to using the `-Credential` parameter.
{% endhint %}

Password used to authenticate and manage the SAN Manager. This is only applicable for BNA SAN Manager. Can be either String or System.Security.SecureString type.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Port &lt;Int32&gt; 

TCP Port of the SAN Manager. The default port for Brocade Network Advisor is "5989". The default port for HPN 5900CP is "161".

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpAuthLevel &lt;String&gt; 

The SNMPv3 Authentication Level. Allowed values are:

* None - No Security is required, only the SNMPv3 UserName is provided.
* AuthOnly - SNMPv3 Authentication Encryption Security Level only. Must also provide -SnmpAuthProtocol and -SnmpAuthPassword parameters.
* AuthAndPriv - SNMPv3 Authentication Encryption Security and Privacy Levels. Must also provide -SnmpAuthProtocol, -SnmpAuthPassword, -SnmpPrivProtocol and -SnmpPrivPassword parameters.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | None |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpAuthPassword &lt;Object&gt; 

SNMPv3 UserName Password. Can be either String or System.Security.SecureString type.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpAuthProtocol &lt;String&gt; 

SNMPv3 Password Encryption Protocol. Allowed values are:

* SHA
* MD5

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpPrivPassword &lt;Object&gt; 

SNMPv3 Privacy Encryption Password. Can be either String or System.Security.SecureString type.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpPrivProtocol &lt;String&gt; 

SNMPv3 Privacy Protocol. Allowed values are:

* AES
* DES

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpUserName &lt;String&gt; 

The SNMPv3 Community User Name.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Type &lt;String&gt; 

SAN Manager type to add. Accepted values are:

* BNA or Brocade Network Advisor
* HP \(HPN 5900CP or HPN 5900AF\)
* Cisco

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -UseSsl &lt;SwitchParameter&gt; 

Use to enable SSL communication with the SAN Manager \(specifically for the Brocade Network Advisor or BrocadeFOS SAN Manager type.\)

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

{% hint style="warning" %}
This parameter will be deprecated in a future release.  Please transition to using the `-Credential` parameter.
{% endhint %}

Username used to authenticate and manage the SAN Manager. This is only applicable for BNA SAN Manager.

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

Asynchronous task resource to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$task = Add-HPOVSanManager -type BNA -hostname BNA.contoso.com -Credential (Get-Credential) -usessl
Wait-HPOVTaskComplete -InputObject $task

```

 Add a new Brocade Network Advisor SAN Manager. 

```text
-------------------------- EXAMPLE 2 --------------------------
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
$Params | % { Add-HPOVSanManager @_ | Wait-HPOVTaskComplete }
```

 Add a new Brocade Network Advisor SAN Manager. 

### Related Links

* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager) 
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager) 
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager) 
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager) 

## HPE OneView 4.10 Library

### Syntax

```text
Add-HPOVSanManager [-Type] <String> [-Hostname] <String> [[-Port] <Int32>] [-Username] <String> [-Password] <Object> [[-Credential] <PSCredential>] [[-UseSsl] <SwitchParameter>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Add-HPOVSanManager [-Type] <String> [-Hostname] <String> [-SnmpUserName] <String> [[-Port] <Int32>] [-SnmpAuthLevel] <String> [-SnmpAuthProtocol] <String> [-SnmpAuthPassword] <Object> [-SnmpPrivProtocol] <String> [-SnmpPrivPassword] <Object> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Add a new SAN Manager to the appliance. SAN Managers are hardware or software systems that manage SANs. The SAN Managers resource enables you to bring SAN management systems and the SANs they manage under management of the appliance. You can associate the managed SANs to Fibre Channel networks on the appliance when creating a \(New-HPOVNetwork\) or updating an existing \(Set-HPOVNetwork\) Fibre Channel Network Resource. This enables the appliance to automate zoning to make the SANs visible to server profiles. Zoning defines connections between Fibre Channel endpoints. Zones are a group of endpoints that can communicate with each other. Open SANs allow communication between all endpoints.

Supported SAN Managers are:

* Brocade SAN Network Advisor
* HPE Networking 5900CP  \(FC or FCoE\)
* HPE Networking 5900AF \(FC-only\)
* Cisco Nexus \(FC or FCoE\)
* Cisco MDS \(FC-only\)

Please see the HPE OneView Support Matrix for supported versions.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Storage administrator.
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

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

#### Use this parameter if you want to provide a PSCredential object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

FQDN or IP Address of the SAN Manager

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt; 

{% hint style="warning" %}
This parameter will be deprecated in a future release.  Please transition to using the `-Credential` parameter.
{% endhint %}

Password used to authenticate and manage the SAN Manager. This is only applicable for BNA SAN Manager. Can be either String or System.Security.SecureString type.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Port &lt;Int32&gt; 

TCP Port of the SAN Manager. The default port for Brocade Network Advisor is "5989". The default port for HPN 5900CP is "161".

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpAuthLevel &lt;String&gt; 

The SNMPv3 Authentication Level. Allowed values are:

* None - No Security is required, only the SNMPv3 UserName is provided.
* AuthOnly - SNMPv3 Authentication Encryption Security Level only. Must also provide -SnmpAuthProtocol and -SnmpAuthPassword parameters.
* AuthAndPriv - SNMPv3 Authentication Encryption Security and Privacy Levels. Must also provide -SnmpAuthProtocol, -SnmpAuthPassword, -SnmpPrivProtocol and -SnmpPrivPassword parameters.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | None |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpAuthPassword &lt;Object&gt; 

SNMPv3 UserName Password. Can be either String or System.Security.SecureString type.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpAuthProtocol &lt;String&gt; 

SNMPv3 Password Encryption Protocol. Allowed values are:

* SHA
* MD5

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpPrivPassword &lt;Object&gt; 

SNMPv3 Privacy Encryption Password. Can be either String or System.Security.SecureString type.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpPrivProtocol &lt;String&gt; 

SNMPv3 Privacy Protocol. Allowed values are:

* AES
* DES

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -SnmpUserName &lt;String&gt; 

The SNMPv3 Community User Name.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Type &lt;String&gt; 

SAN Manager type to add. Accepted values are:

* BNA or Brocade Network Advisor
* HP \(HPN 5900CP or HPN 5900AF\)
* Cisco

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -UseSsl &lt;SwitchParameter&gt; 

Use to enable SSL communication with the SAN Manager \(specifically for the Brocade Network Advisor or BrocadeFOS SAN Manager type.\)

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

{% hint style="warning" %}
This parameter will be deprecated in a future release.  Please transition to using the `-Credential` parameter.
{% endhint %}

Username used to authenticate and manage the SAN Manager. This is only applicable for BNA SAN Manager.

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

Asynchronous task resource to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$task = Add-HPOVSanManager -type BNA -hostname BNA.contoso.com -Credential (Get-Credential) -usessl
Wait-HPOVTaskComplete -InputObject $task

```

 Add a new Brocade Network Advisor SAN Manager. 

```text
-------------------------- EXAMPLE 2 --------------------------
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
$Params | % { Add-HPOVSanManager @_ | Wait-HPOVTaskComplete }
```

 Add a new Brocade Network Advisor SAN Manager. 

### Related Links

* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager) 
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager) 
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager) 
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager) 



