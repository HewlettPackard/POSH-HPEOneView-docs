---
description: Get a Switch resource.
---

# Get-OVSwitch

## Syntax

```powershell
Get-OVSwitch
    [-Name <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Get-OVSwitch
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Retrieve a Switch that is managed by HPE OneView.  Currently, HPE OneView can Manage or Monitor Cisco Nexus-family of switches. This Cmdlet will retrieve the specified or all Logical Switch Group resources. 

## Examples

###  Example 1 

```powershell
Get-OVSwitch
```

Get all logical switch group resources found on the default appliance connection.

###  Example 2 

```powershell
Get-OVSwitch -Name "10.1.1.1"
```

Get the "10.1.1.1" switch resource.

## Parameters

### -Name &lt;String&gt;

The Switch resource Name.  Supports the * wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

* AllResources
* AllResourcesInScope
* `[HPEOneView.Appliance.ScopeCollection]`
* `[HPEOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task resource after a Logical Switch Group has been created.

## Return Values

_**HPEOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]**_

The async task resource object to monitor (if `-Async` was used) or results.

_**System.Collections.ArrayList <HPEOneView.Networking.LogicalSwitchGroup>**_

Collection of Logical Switch Group resources.

## Related Links

* [Get-OVSwitchType](get-ovswitchtype.md)
