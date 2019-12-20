---
description: Get State Change Message Bus certificates.
---

# Get-HPOVScmbCertificates

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVScmbCertificates [[-Location] <String>] [[-InstallApplianceRootCA] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVScmbCertificates [-Password] <SecureString> [[-Location] <String>] [-ConvertToPFx] <SwitchParameter> [[-InstallApplianceRootCA] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView uses a state change message bus \(SCMB\) for internal components to notify each other of resource state changes.  External users can connect and consume these same messages for monitoring purposes.  The HPE OneView SCMB is built upon the RabbitMQ provider.  

In order to connect to  connect to the HPE OneView SCMB, a proper message queue client is needed, in which it must support certificate authentication.  The HPE OneView SCMB does not support standard username and password authentication.

This Cmdlet will retrieve and store the certificates necessary to register with the State Change Message Bus.  If the SCMB certificate has not been created, a new one will be generated.  The generated certificate is mapped to a private, internal user account with Read-Only permissions.  In order to write changes, a REST API bind-back is necessary.

The generated and/or downloaded SCMB certificate can also be exported to PFX format for secure storage, using the `-ConvertToPFx` parameter.

{% hint style="info" %}
Minimum Privileges: Infrastructure Administrator
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

#### -ConvertToPFx &lt;SwitchParameter&gt; 

Convert rabbitmq\_readonly client certificate to PFX format for .Net consumption.

| Aliases | pfx |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InstallApplianceRootCA &lt;SwitchParameter&gt; 

Choose to install the appliance root certificate to the current users Trusted Root Authorities store.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Location &lt;String&gt; 

Directory to store the SSL certificates. If the directory doesn"t exist, it will be created.

| Aliases | save |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \($pwd\).path |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;SecureString&gt; 

Password that will be used to encrypt the PFX client certificate.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**SecureString**_

Password for PFX file

### Return Values

_**3 files will be created:**_

* {ApplianceConnection\_Name}\_ca.cer - Appliance internal Root Certificate Authority

  * {ApplianceConnection\_Name}\_cert.cer - Appliance managed rabbitmq\_readonly user Public Key
  * {ApplianceConnection\_Name}\_privateKey.key - Appliance managed rabbitmq\_readonly user Client Certificate

  _**Pkcs12/PFX certificate file**_

If ConvertToPfX is used, the Pkcs12/PFX compliant certificate file is created, {ApplianceConnection\_Name}\_privateKey.pfx

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVScmbCertificates
```

Get the HPE OneView appliance SCMB SSL certificates, and save them in the current directory.

```text
 -------------------------- EXAMPLE 2 --------------------------
Read-Host "Password" -AsSecureString | Get-HPOVScmbCertificates -Location C:\scmbcerts -ConvertToPFx
```

Prompt for secure password input and pipe the value to convert the cert.pem to PFX format. 

### Related Links 

* None

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVScmbCertificates [[-Location] <String>] [[-InstallApplianceRootCA] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVScmbCertificates [-Password] <SecureString> [[-Location] <String>] [-ConvertToPFx] <SwitchParameter> [[-InstallApplianceRootCA] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView uses a state change message bus \(SCMB\) for internal components to notify each other of resource state changes.  External users can connect and consume these same messages for monitoring purposes.  The HPE OneView SCMB is built upon the RabbitMQ provider.  

In order to connect to  connect to the HPE OneView SCMB, a proper message queue client is needed, in which it must support certificate authentication.  The HPE OneView SCMB does not support standard username and password authentication.

This Cmdlet will retrieve and store the certificates necessary to register with the State Change Message Bus.  If the SCMB certificate has not been created, a new one will be generated.  The generated certificate is mapped to a private, internal user account with Read-Only permissions.  In order to write changes, a REST API bind-back is necessary.

The generated and/or downloaded SCMB certificate can also be exported to PFX format for secure storage, using the `-ConvertToPFx` parameter.

{% hint style="info" %}
Minimum Privileges: Infrastructure Administrator
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

#### -ConvertToPFx &lt;SwitchParameter&gt; 

Convert rabbitmq\_readonly client certificate to PFX format for .Net consumption.

| Aliases | pfx |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InstallApplianceRootCA &lt;SwitchParameter&gt; 

Choose to install the appliance root certificate to the current users Trusted Root Authorities store.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Location &lt;String&gt; 

Directory to store the SSL certificates. If the directory doesn"t exist, it will be created.

| Aliases | save |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \($pwd\).path |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;SecureString&gt; 

Password that will be used to encrypt the PFX client certificate.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**SecureString**_

Password for PFX file

### Return Values

_**3 files will be created:**_

* {ApplianceConnection\_Name}\_ca.cer - Appliance internal Root Certificate Authority

  * {ApplianceConnection\_Name}\_cert.cer - Appliance managed rabbitmq\_readonly user Public Key
  * {ApplianceConnection\_Name}\_privateKey.key - Appliance managed rabbitmq\_readonly user Client Certificate

  _**Pkcs12/PFX certificate file**_

If ConvertToPfX is used, the Pkcs12/PFX compliant certificate file is created, {ApplianceConnection\_Name}\_privateKey.pfx

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVScmbCertificates
```

Get the HPE OneView appliance SCMB SSL certificates, and save them in the current directory.

```text
 -------------------------- EXAMPLE 2 --------------------------
Read-Host "Password" -AsSecureString | Get-HPOVScmbCertificates -Location C:\scmbcerts -ConvertToPFx
```

Prompt for secure password input and pipe the value to convert the cert.pem to PFX format. 

### Related Links 

* None

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVScmbCertificates [[-Location] <String>] [[-InstallApplianceRootCA] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

```text
Get-HPOVScmbCertificates [-Password] <SecureString> [[-Location] <String>] [-ConvertToPFx] <SwitchParameter> [[-InstallApplianceRootCA] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView uses a state change message bus \(SCMB\) for internal components to notify each other of resource state changes.  External users can connect and consume these same messages for monitoring purposes.  The HPE OneView SCMB is built upon the RabbitMQ provider.  

In order to connect to  connect to the HPE OneView SCMB, a proper message queue client is needed, in which it must support certificate authentication.  The HPE OneView SCMB does not support standard username and password authentication.

This Cmdlet will retrieve and store the certificates necessary to register with the State Change Message Bus.  If the SCMB certificate has not been created, a new one will be generated.  The generated certificate is mapped to a private, internal user account with Read-Only permissions.  In order to write changes, a REST API bind-back is necessary.

The generated and/or downloaded SCMB certificate can also be exported to PFX format for secure storage, using the `-ConvertToPFx` parameter.

{% hint style="info" %}
Minimum Privileges: Infrastructure Administrator
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

#### -ConvertToPFx &lt;SwitchParameter&gt; 

Convert rabbitmq\_readonly client certificate to PFX format for .Net consumption.

| Aliases | pfx |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InstallApplianceRootCA &lt;SwitchParameter&gt; 

Choose to install the appliance root certificate to the current users Trusted Root Authorities store.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Location &lt;String&gt; 

Directory to store the SSL certificates. If the directory doesn"t exist, it will be created.

| Aliases | save |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \($pwd\).path |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;SecureString&gt; 

Password that will be used to encrypt the PFX client certificate.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**SecureString**_

Password for PFX file

### Return Values

_**3 files will be created:**_

* {ApplianceConnection\_Name}\_ca.cer - Appliance internal Root Certificate Authority

  * {ApplianceConnection\_Name}\_cert.cer - Appliance managed rabbitmq\_readonly user Public Key
  * {ApplianceConnection\_Name}\_privateKey.key - Appliance managed rabbitmq\_readonly user Client Certificate

  _**Pkcs12/PFX certificate file**_

If ConvertToPfX is used, the Pkcs12/PFX compliant certificate file is created, {ApplianceConnection\_Name}\_privateKey.pfx

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVScmbCertificates
```

Get the HPE OneView appliance SCMB SSL certificates, and save them in the current directory.

```text
 -------------------------- EXAMPLE 2 --------------------------
Read-Host "Password" -AsSecureString | Get-HPOVScmbCertificates -Location C:\scmbcerts -ConvertToPFx
```

Prompt for secure password input and pipe the value to convert the cert.pem to PFX format. 

### Related Links 

* None



