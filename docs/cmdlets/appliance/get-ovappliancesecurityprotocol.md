---
description: Get appliance supported security protocols and ciphers.
---

# Get-OVApplianceSecurityProtocol

## Syntax

```powershell
Get-OVApplianceSecurityProtocol
    [-TlsVersion <String[]>]
    [-SecurityMode <String[]>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Get the appliance available security protocols, and their active state. By default the appliance current security mode will return the available security protocols and their configuration state. Use the `-SecurityMode` parameter to specify one or more modes. Use the `-TlsVersion` to specify one or more security protocols to return.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVApplianceSecurityProtocol
```

Get the appliance FIPS security mode and associated security protocols.

###  Example 2 

```powershell
Get-OVApplianceSecurityProtocol -SecurityMode FIPS, CNSA -TlsVersion TLSv1.1, TLSv1.2
```

Get the appliance FIPS security mode and TLSv1.1 and TLSv1.2 security protocols.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -SecurityMode &lt;String[]&gt;

Specify the Security Mode to return supported security protocols and encryption ciphers. By default, will return the current appliance security mode. Allowed values:

* Legacy
* FIPS
    *CNSA

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TlsVersion &lt;String[]&gt;

Filter for specific TLS version(s). By default, will return all TLS Versions. Allowed values:

* TLSv1
     TLSv1.1
    TLSv1.2

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

=== "HPEOneView.Appliance.SecurityProtocol"
    Available appliance security protocol, mode enabled and associated encryption ciphers.n
    

## Related Links

* [Set-OVApplianceSecurityProtocol](set-ovappliancesecurityprotocol.md)
