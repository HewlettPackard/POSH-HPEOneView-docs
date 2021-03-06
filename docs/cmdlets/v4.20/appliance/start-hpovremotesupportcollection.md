﻿---
description: Begin Remote Support collection from endpoints.
---

# Start-HPOVRemoteSupportCollection

## Syntax

```text
Start-HPOVRemoteSupportCollection
    [-InputObject] <Object>
    [-Type] <Object>
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to initiate colleciton of remote support data.  This will help send collection reports back to HPE that are in between the default scheduled task.

## Examples

###  Example 1 

```text
Get-HPOVServer -Name Prod-Sql-01 | Start-HPOVRemoteSupportCollection -Type AHS
```

Start the collection of AHS logs immediately for the specified server.

###  Example 2 

```text
Get-HPOVEnclosure | Start-HPOVRemoteSupportCollection -Type Basic
```

Start the collection of basic server configuration immediately.

## Parameters

### -InputObject &lt;Object&gt;

A supported Gen8 or newer compute, HPE BladeSystem enclosure, or HPE Synergy frame.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Type &lt;Object&gt;

Used to specify the type of remote support collection to start.  Allowed values are:

    * AHS - Active Health Service collection
    * Basic - Basic server configuration collection


| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asyncronous task resource to monitor

## Related Links

