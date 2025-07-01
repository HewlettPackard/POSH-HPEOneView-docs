---
description: Set HPE Synergy Virtual Connect SE module hostname.
---

# Set-OVInterconnectName

## Syntax

```powershell
Set-OVInterconnectName
    [-InputObject] <Object>
    [-Name] <string>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVInterconnectName
    [-InputObject] <Object>
    [-ResetNameToFactoryDefault]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will help change the host name of an interconnect. You can change the default host name for the following interconnect modules:

*  HPE Virtual Connect SE 16Gb FC Module for HPE Synergy
*  HPE Virtual Connect SE 32Gb FC Module for HPE Synergy
*  HPE Virtual Connect SE 40Gb F8 Module for HPE Synergy
*  HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy

The name format must adhere to the following rules:

* Must be no more than 30 characters.
* Must start with a letter or number.
* Must contain a letter or dash.
* Must not contain characters besides letters, numbers, or a dash.

Changing the host name of an interconnect has several impacts on the Domain Name System (DNS) server.

*  For HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy interconnect, if the host name is changed, the Dynamic DNS (DDNS) in the logical interconnect must be enabled to update the DNS server.
*  An interconnect reboot does not change the host name on the DNS server.

To reset the host name to factory default, use the `-ResetNameToFactoryDefault` parameter. If an interconnect is removed from the bay location, the custom host name resets to factory set host name.

???+ info
    Minimum required privileges:  Infrastructure administrator, Network administrator

## Examples

###  Example 1 

```powershell
Get-OVInterconnect -Name "Enclosure1, interconnect 3" | Set-OVInterconnectName -Name enc1-fm3-dc1

```

Set interconnect module hostname to the specific value.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Interconnect from Get-OVInterconnect object to change the fabric module hostname.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;string&gt;

The new name for the provided fabric module.  The name format must adhere to the following rules:

* Must be no more than 30 characters.
* Must start with a letter or number.
* Must contain a letter or dash.
* Must not contain characters besides letters, numbers, or a dash.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ResetNameToFactoryDefault &lt;SwitchParameter&gt;

Use parameter to reset fabric module back to factory default name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
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

=== "HPEOneView.Networking.Interconnect [System.Management.Automation.PSCustomObject]"
    HPE Synergy FlexFabric Ethernet module from Get-OVInterconnect.
    

## Return Values

=== "HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

* [Get-OVInterconnect](get-ovinterconnect.md)
