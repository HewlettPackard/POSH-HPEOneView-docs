---
description: Change appliance connection active permissions.
---

# Push-OVAppliancePermission

## Syntax

```powershell
Push-OVAppliancePermission
    [-SetActivePermissions] <Object>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Upon successful login, the caller can change their active permissions, and operate in a less priviledge mode at anytime.  The Push-OVAppliancePermission Cmdlet will accept a single or collection of [HPEOneView.Appliance.ConnectionPermission] objects.  A new SessionID token will be stored within the ApplianceConnection, and the ConnectionPermissions within the ActivePermissions property that were not provided will have their State set to "false".

## Examples

###  Example 1 

```powershell
$ConnectedSessions[0].ActivePermissions

RoleName              ScopeName     Active
--------              ---------     ------
Network administrator Site A Admins True
Server administrator  AllResources  True

$NewPermissions = $ConnectedSessions[0].ActivePermissions | ? RoleName -match "Network"
Push-OVAppliancePermission -SetActivePermissions $NewPermissions
```

Change active permissions by filtering for a specific Role.

###  Example 2 

```powershell
$ConnectedSessions[0].ActivePermissions

RoleName              ScopeName     Active
--------              ---------     ------
Network administrator Site A Admins True
Server administrator  AllResources  True
Server administrator  AllResources  True

$NewPermissions = $ConnectedSessions[0].ActivePermissions | ? ScopeName -match "Site A Admins"
Push-OVAppliancePermission -SetActivePermissions $NewPermissions
```

Change active permissions by filtering for a specific Scope.

## Parameters

### -SetActivePermissions &lt;Object&gt;

One or more `[HPEOneView.Appliance.ConnectionPermission]` objects from an `[HPEOneView.Appliance.Connection]` ActivePermissions property.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.ConnectionPermission"
    One or more appliance connection permissions and their active state.
    

## Related Links

* [Pop-OVAppliancePermission](pop-ovappliancepermission.md)
* [about_Appliance_Connection_Permissions](../../about/about_appliance_connection_permissions.md)
* [[${Global:ConnectedSessions}]](../../about/about_appliance_connections.md)
