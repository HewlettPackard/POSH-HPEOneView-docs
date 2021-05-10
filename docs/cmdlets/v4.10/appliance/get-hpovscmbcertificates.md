---
description: Get State Change Message Bus certificates.
---

# Get-HPOVScmbCertificates

## Syntax

```text
Get-HPOVScmbCertificates
    [-Location] <String>
    [-InstallApplianceRootCA]
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

```text
Get-HPOVScmbCertificates
    [-Password] <SecureString>
    [-Location] <String>
    [-ConvertToPFx]
    [-InstallApplianceRootCA]
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

Retrieve and store the certificates necessary to register with the State Change Message Bus.  The SCMB only supports a single read-only "account".

## Examples

###  Example 1 

```text
Get-HPOVScmbCertificates

```

Get the HPE OneView appliance SCMB SSL certificates, and save them in the current directory.

###  Example 2 

```text
read-host "Password" -AsSecureString | Get-HPOVScmbCertificates -Location C:\scmbcerts -ExportToPfx

```

Prompt for secure password input and pipe the value to Get-HPOVScmbCertificates to convert the `[cert.pem]` to PFX format with the pipeline secure password.

## Parameters

### -Location &lt;String&gt;

Aliases [-Save]
Directory to store the SSL certificates.  If the directory doesn"t exist, it will be created.

| Aliases | save |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | ($pwd).path |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ConvertToPFx &lt;SwitchParameter&gt;

Aliases [-pfx]		
Convert rabbitmq_readonly client certificate to PFX format for .Net consumption.

| Aliases | pfx |
| :--- | :--- |
| Required? | False |
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

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**SecureString**_

Password for PFX file


## Return Values

_**3 files will be created:**_


 * {ApplianceConnection_Name}_ca.cer - Appliance internal Root Certificate Authority
 * {ApplianceConnection_Name}_cert.cer - Appliance managed rabbitmq_readonly user Public Key
 * {ApplianceConnection_Name}_privateKey.key - Appliance managed rabbitmq_readonly user Client Certificate


_**Pkcs12/PFX certificate file**_

If ConvertToPfX is used, the Pkcs12/PFX compliant certificate file is created, {ApplianceConnection_Name}_privateKey.pfx

## Related Links

