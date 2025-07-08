---
description: Get State Change Message Bus certificates.
---

# Get-OVScmbCertificates

## Syntax

```powershell
Get-OVScmbCertificates
    [-Location <String>]
    [-InstallApplianceRootCA]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
Get-OVScmbCertificates
    [-Password] <SecureString>
    [-Location <String>]
    [-ConvertToPFx]
    [-InstallApplianceRootCA]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView uses a state change message bus (SCMB) for internal components to notify each other of resource state changes.  External users can connect and consume these same messages for monitoring purposes.  The HPE OneView SCMB is built upon the RabbitMQ provider.  

In order to connect to  connect to the HPE OneView SCMB, a proper message queue client is needed, in which it must support certificate authentication.  The HPE OneView SCMB does not support standard username and password authentication.

This Cmdlet will retrieve and store the certificates necessary to register with the State Change Message Bus.  If the SCMB certificate has not been created, a new one will be generated.  The generated certificate is mapped to a private, internal user account with Read-Only permissions.  In order to write changes, a REST API bind-back is necessary.

The generated and/or downloaded SCMB certificate can also be exported to PFX format for secure storage, using the `-ConvertToPFx` parameter.

???+ info
    Minimum required privileges: Infrastructure Administrator

## Examples

###  Example 1 

```powershell
Get-OVScmbCertificates
```

Get the HPE OneView appliance SCMB SSL certificates, and save them in the current directory.

###  Example 2 

```powershell
Read-hHst "Password" -AsSecureString | Get-OVScmbCertificates -Location C:\scmbcerts -ConvertToPFx
```

Prompt for secure password input and pipe the value to convert the `[cert.pem]` to PFX format. 

## Parameters

### -Location &lt;String&gt;

Directory to store the SSL certificates.  If the directory doesn"t exist, it will be created.

| Aliases | save |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | ($pwd).path |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ConvertToPFx &lt;SwitchParameter&gt;

Aliases [-pfx]        
Convert rabbitmq_readonly client certificate to PFX format for .Net consumption.

| Aliases | pfx |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;SecureString&gt;

Password that will be used to encrypt the PFX client certificate.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -InstallApplianceRootCA &lt;SwitchParameter&gt;

hoose to install the appliance root certificate to the current users Trusted Root Authorities store.

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "System.Security.SecureString"
    Password for PFX file
    

## Return Values

=== "3 files will be created:"
    
    * {ApplianceConnection_Name}_ca.cer - Appliance internal Root Certificate Authority
    * {ApplianceConnection_Name}_cert.cer - Appliance managed rabbitmq_readonly user Public Key
    * {ApplianceConnection_Name}_privateKey.key - Appliance managed rabbitmq_readonly user Client Certificate
    

=== "Pkcs12/PFX certificate file"
    If ConvertToPfX is used, the Pkcs12/PFX compliant certificate file is created, {ApplianceConnection_Name}_privateKey.pfx
    

## Related Links

