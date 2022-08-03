---
description: Disable strict use of strong GCM (Galois/Counter Mode) ciphers for an appliance.
---

# Disable-OVApplianceStrictSecurityCipherSuite

## Syntax

```powershell
Disable-OVApplianceStrictSecurityCipherSuite
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A cipher suite is a set of algorithms that help secure a network connection that uses TLS for communication. The set of algorithms that cipher suites usually contain include: a key exchange algorithm, a bulk encryption algorithm, and a Message Authentication Code (MAC) algorithm.  See the "Algorithms, cipher suites, and protocols for securing the appliance" topic in the Online Help for details on the appliance cipher suites. 

When using this Cmdlet, strong GCM cipher suites are no longer enforced for client connections to the appliance and revert back to default appliance cipher suites.  For more information on what available cipher suites would be in use, please see the "Algorithms, cipher suites, and protocols for securing the appliance" topic in the Online Help for further details.

IMPORTANT: Changing this setting will cause the appliance to reboot. Further, OneView will NOT be able to manage servers or enclosures with the setting enabled if they are not at a minimum version of iLO or Onboard Administrator firmware. Refer to the following advisory for required minimum firmware versions and configuration settings before enabling this security setting: https://support.hpe.com/hpsc/doc/public/display?docId=emr_na-a00117772en_us

## Examples

###  Example 1 

```powershell
Disable-OVApplianceStrictSecurityCipherSuite

```

Disable strict use of GCM ciphers.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
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

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task resource to monitor.

## Related Links

* [Enable-OVApplianceStrictSecurityCipherSuite](enable-ovappliancestrictsecurityciphersuite.md)
* [Wait-OVTaskComplete](wait-ovtaskcomplete.md)
