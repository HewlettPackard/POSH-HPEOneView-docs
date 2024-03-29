# about\_Appliance\_Connection\_Permissions



```text
TOPIC

    about_Appliance_Connection_Permissions

SHORT DESCRIPTION

    Explains how HPE OneView 4.00 and newer session permissions can be changed.

LONG DESCRIPTION

    Permissions are used to control a user's access to the appliance and the resources
    managed by the appliance. Permissions consist of a role and an optional scope. The
    permission role grants the user access to resource categories. For example, the "Server
    administrator" role grants read, create, delete, update and use rights to the "server
    hardware" category. Specifying a permission scope further restricts the rights granted
    by the role to a subset of instances within a resource category. For example, a scope
    called "Test" can be created by the Infrastructure Administrator or Scope Administrator,
    and be used to restrict the server hardware rights granted by the "Server administrator"
    role to only the servers in the Test scope.

    A user or group may be assigned multiple permissions. Use the Set-HPOVUser or
    Set-HPOVLdapGroupRole to manage the roles and permissions assigned to a user or group.

    You create a login session when you log in to the appliance using Connect-HPOVMgmt. Upon
    successful login, the session grants the user all permissions assigned by the
    Infrastructure Administrator or Scope Administrator. These permissions are called
    [HPOneView.Appliance.ConnectionPermission].  Each permission provided by the appliance are
    stored within the [HPOneView.Appliance.Connection] AcivePermissions property.  The Active
    property indicates if the permission is active.

    A user granted multiple permissions can disable certain permissions. When operating with
    reduced permissions, the user is only allowed to perform actions authorized for the selected
    permission.

    Allowing a user to operate in a least privilege mode is a security best practice. It
    allows the user to reduce the risk of making an unintended change.

CHANGING ACTIVE PERMISSIONS

    Upon successful login, the caller can change their active permissions, and operate in
    a less priviledge mode at anytime.  The Push-HPOVAppliancePermission Cmdlet will accept a
    single or collection of [HPOneView.Appliance.ConnectionPermission] objects.  A new SessionID
    token will be stored within the ApplianceConnection, and the ConnectionPermissions within
    the ActivePermissions property that were not provided will have the Active property set to
    "false".

    For example, to change the active permissions to the assigned "Network administrator" role:

    PS C:\> # Show current SessionID
    PS C:\> $ConnectedSessions[0].SessionID
    MzA3MzkzNDY4Mjc3tG-DBtvzHwq51sBGY1zk-7Uw1eT17BbJ
    PS C:\> Connect-HPOVMgmt hpov1.domain.com administrator MyPassw0rd
    PS C:\> $ConnectedSessions[0].ActivePermissions

    RoleName              ScopeName     Active
    --------              ---------     ------
    Network administrator Site A Admins True
    Server administrator  AllResources  True

    PS C:\> $NewPermissions = $ConnectedSessions[0].ActivePermissions | ? RoleName -match 'Network'
    PS C:\> Push-HPOVAppliancePermission -SetActivePermissions $NewPermissions

    RoleName              ScopeName     Active
    --------              ---------     ------
    Network administrator Site A Admins True
    Server administrator  AllResources  False

    PS C:\> # Show updated SessionID
    PS C:\> $ConnectedSessions[0].SessionID
    OTA0Mjg2Nzc5Nzk1FVcdSabKJ5wqD-ScZKYOHsJk8WqWDRYX
    ...

    For example, to change the active permissions to the assigned "Site A Admins" scope:

    PS C:\> # Show current SessionID
    PS C:\> $ConnectedSessions[0].SessionID
    NzI2MTMxNzEzMjQztb0Rj0hqWwiLa3qFWgKvo13Qn5vs4k1r
    PS C:\> $ConnectedSessions[0].ActivePermissions

    RoleName              ScopeName     Active
    --------              ---------     ------
    Network administrator Site A Admins True
    Server administrator  AllResources  True
    Server administrator  AllResources  True

    PS C:\> $NewPermissions = $ConnectedSessions[0].ActivePermissions | ? ScopeName -match 'Site A Admins'
    PS C:\> Push-HPOVAppliancePermission -SetActivePermissions $NewPermissions

    RoleName              ScopeName     Active
    --------              ---------     ------
    Network administrator Site A Admins True
    Server administrator  AllResources  False
    Server administrator  AllResources  False

    PS C:\> # Show updated SessionID
    PS C:\> $ConnectedSessions[0].SessionID
    ATh0MjQ5MjM1ODE0fFqfxUPWWGo4Y-QsPWRpZDsYxmy8Xejb
    ...

    If the caller would like to reset their active permissions back to the original state, use
    the Pop-HPOVAppliancePermission Cmdlet.


SEE ALSO

    https://github.com/HewlettPackard/POSH-HPOneView
    http://hp.com/go/oneviewcommunity
    Get-Help about_Appliance_Connections
    Get-Help Push-HPOVAppliancePermission
    Get-Help Pop-HPOVAppliancePermission
```

