---
description: Unassign or Reassign an existing Server Profile.
---

# New-HPOVServerProfileAssign

## Syntax

```text
New-HPOVServerProfileAssign
    [-ServerProfile] <Object>
    [-Server] <Object>
    [-Force]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
New-HPOVServerProfileAssign
    [-ServerProfile] <Object>
    [-Unassigned]
    [-Force]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This cmdlet is used to unassign or reassign an existing HPE OneView Server Profile.  The destination Server and its Server Hardware Type does not need to match the original Server Hardware Type defined in the Server Profile.  The Server Profile will be updated accordingly.

## Examples

###  Example 1 

```text
Get-HPOVServerProfile "Profile 1" | New-HPOVServerProfileAssign -Server "Encl1, Bay 10" | Wait-HPOVTaskComplete

```

Get "Profile 1" Server Profile and assign it to "Encl1, Bay 10", then wait for the async task to complete.

###  Example 2 

```text
Get-HPOVServerProfile "Profile 1" | New-HPOVServerProfileAssign -unassign | Wait-HPOVTaskComplete

```

Get "Profile 1" Server Profile and unassign it, then wait for the async task to complete.

## Parameters

### -ServerProfile &lt;Object&gt;

The name or object of the server profile resource to modify assignment.

| Aliases | Profile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Server &lt;Object&gt;

The server hardware resource where the new profile is to be applied.  This is normally retrieved with a "Get-HPOVServer" call, and the Server state property should be "NoProfileApplied".  Can also be the Server Hardware `[name.s]`

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Unassigned &lt;SwitchParameter&gt;

Siwtch parameter to unassign a Server Profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
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

### -Force &lt;SwitchParameter&gt;

Use to force add the Server Profile if there are any async task validation failures, like server hardware is in a Warning or Failed state, or SAN attach volume only have a single path configured.

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

_**System.Management.Automation.PSCustomObject**_

Server Profile resource object from Get-HPOVServerProfile

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

If successful returns a task resource which may be polled to follow the progress of the profile creation.  Otherwise, a request validation error will be returned

## Related Links

