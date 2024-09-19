---
description: Get the appliance status.
---

# Get-OVApplianceStatus

## Syntax

```powershell
Get-OVApplianceStatus
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet returns appliance resource status information.  Specifically:

	* Installed memory.
	* CPU frequency
	* NIC link speed
	* Appliance uptime
	* Appliance last startup date
	* Error status messages for these resources.

If the appliance is part of an HPE Synergy Composer cluster pair, the the standby appliance uptime and startup date are added as additional note properties to the returned object.  By default, only the active appliance values are returned.

## Examples

###  Example 1 

```powershell
Get-OVApplianceStatus

```

Default example

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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPEOneView.Appliance.ApplianceStatus**_

Appliance status object, contining appliance memory, CPU, network link details, including any resource error status messages.


## Related Links

