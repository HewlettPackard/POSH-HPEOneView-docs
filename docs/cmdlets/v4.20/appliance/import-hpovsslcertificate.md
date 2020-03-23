---
description: Import an appliance SSL Certificate.
---

# Import-HPOVSslCertificate

## Syntax

```text
Import-HPOVSslCertificate
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

By default, the HPE OneView appliance creates a self-signed SSL Certificate for its WebUI.  There might be a desire to trust the certificate, in case the SHA-1 hash becomes invalid (either due to a certificate change or man-in-the-middle attack) and the caller would like to be notified.  This cmdlet will assist in retrieving and storing the appliance self-generated SSL Certificate into the current users Trusted Root Certification Authorities store.

Please note that the Subject Alternate Name (SAN) must match that of the Appliance hostname you use to connect to your appliance.  If it does not, an SSL conenction failure will ocurr.  When creating a CSR on the appliance, make sure to include the additional FQDN and IP address(es) in the Alternative Name field.

## Examples

###  Example 1 

```text
$Connection = Connect-HPOVMgmt Myappliance.domain.com Administrator MyP@ssword
Import-HPOVSslCertificate
```

Import the SSL certificate from the specific appliance.

###  Example 2 

```text
Connect-HPOVMgmt Myappliance.domain.com Administrator MyP@ssword
Connect-HPOVMgmt Myappliance2.domain.com Administrator MyP@ssword
$ConnectedSessions | Import-HPOVSslCertificate
```

Import the SSL Certificate from all connected sessions.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | ${Global:ConnectedSessions} |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.Connection**_

HPE OneView Appliance Connection object

## Return Values

_**None.**_



## Related Links

