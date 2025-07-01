---
description: Get the default time source policy for HPE Synergy interconnects.
---

# Get-OVInterconnectNTPConfiguration

## Syntax

```powershell
Get-OVInterconnectNTPConfiguration
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

When HPE OneView manages interconnect resources, it will automatically by default set the management processor NTP settings to external NTP servers applied within the logical interconnect group resource.  Using this Cmdlet, you can get the current time synchronize policy of supported interconnects managed by the appliance.  When the global policy is set to sync with external NTP servers, a property is added to the returned object called NTPServers.  The array contains the appliance configured NTP server(s).

???+ info
    Minimum required privileges:
    
    * Read-Only

## Examples

###  Example 1 

```powershell
Get-OVInterconnectNTPConfiguration

```

Get the current intreconnect time source global policy setting.

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Appliance.GlobalSetting"
    Object resource with the global setting value
    

## Related Links

* [Set-OVInterconnectNTPConfiguration](set-ovinterconnectntpconfiguration.md)
