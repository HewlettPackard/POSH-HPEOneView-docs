---
description: Get appliance supported security protocols and cyphers.
---

# Get-HPOVApplianceSecurityProtocol

## Syntax

```text
Get-HPOVApplianceSecurityProtocol
    [-TlsVersion <String[]>]
    [-SecurityMode <String[]>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Get the appliance available security protocols, and their active state. By default the appliance current security mode will return the available security protocols and their configuration state. Use the -SecurityMode parameter to specify one or more modes. Use the -TlsVersion to specifify one or more security protocols to return.

## Examples

###  Example 1 

```text
Get-HPOVApplianceSecurityProtocol
```

Get the appliance FIPS security mode and associated security protocols.

###  Example 2 

```text
Get-HPOVApplianceSecurityProtocol -SecurityMode FIPS, CNSA -TlsVersion TLSv1.1, TLSv1.2
```

Get the appliance FIPS security mode and TLSv1.1 and TLSv1.2 security protocols.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -SecurityMode &lt;String[]&gt;

Specify the Security Mode to return supported security protocols and encryption cyphers. By default, will return the current appliance security mode. Allowed values:

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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.SecurityProtocol**_

Available appliance security protocol, mode enabled and associated encryption cyphers.n

## Related Links

* [Set-HPOVApplianceSecurityProtocol](set-hpovappliancesecurityprotocol.md)
