---
description: Import an appliance SSL Certificate.
---

# Import-OVSslCertificate

## Syntax

```powershell
Import-OVSslCertificate
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

By default, the HPE OneView appliance creates a self signed SSL Certificate for its WebUI.  There might be a desire to trust the certificate, in case the SHA-1 hash becomes invalid (either due to a certificate change or man-in-the-middle attack) and the caller would like to be notified.  This Cmdlet will assist in retrieving and storing the appliance self-generated SSL Certificate into the current users Trusted Root Certification Authorities store.

Please note that the Subject Alternate Name (SAN) must match that of the Appliance hostname you use to connect to your appliance.  If it does not, an SSL conenction failure will occur.  When creating a CSR on the appliance, make sure to include the additional FQDN and IP address(es) in the Alternative Name field.

## Examples

###  Example 1 

```powershell
$Connection = Connect-OVMgmt Myappliance.domain.com Administrator MyP@ssword
Import-OVSslCertificate
```

Import the SSL certificate from the specific appliance.

###  Example 2 

```powershell
Connect-OVMgmt Myappliance.domain.com Administrator MyP@ssword
Connect-OVMgmt Myappliance2.domain.com Administrator MyP@ssword
$ConnectedSessions | Import-OVSslCertificate 
```

Import the SSL Certificate from all connected sessions.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

=== "HPEOneView.Appliance.Connection"
    HPE OneView Appliance Connection object
    

## Return Values

=== "None."
    
    

## Related Links

