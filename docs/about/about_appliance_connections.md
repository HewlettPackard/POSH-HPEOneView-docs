# about\_Appliance\_Connections

```text
TOPIC

    about_Appliance_Connections

SHORT DESCRIPTION

    Explains how Multiple Appliance Connections are handled with the
    HPE OneView 2.00 and newer PowerShell Library.

LONG DESCRIPTION

    In the HPE OneView 2.0 or newer PowerShell library is the ability to
    initiate multiple appliance connections to script or automate operations.
    To support this capability, the library utilizes three features:

    -- When using Connect-HPOVMgmt, an [HPOneView.Appliance.Connection] object
       is returned to the caller.

    -- The [HPOneView.Appliance.Connection] object is stored in a global variable
       accessible by any caller: $ConnectedSessions

    -- Within the [HPOneView.Appliance.Connection] object is a property called
       Default.  This boolean value is what controls which appliance
       to execute against if the caller does not specify which appliance
       connection to use.

GLBOAL CONNECTION TRACKING OBJECT

    Contained in the $ConnectedSessions Global varilable, will be each
    successful appliance connection object, HPOneView.Appliance.Connection.
    The object contains the following properties:

    -- ConnectID - Unique per PowerShell library session
    -- Name - Hostname of the appliance connection, specified by the
       'Hostname' parameter in Connect-HPOVMgmt.
    -- SessionID - Appliance API Auth session ID
    -- UserName - Username that was authenticated with to the appliance
    -- AuthLoginDomain - Authentication Directory resource name used to
       authenticate user.
    -- Default - Boolean value that tracks which connection is the default.
       Use the Set-HPOVApplianceDefaultConnection Cmdlet to control the value
    -- SSLChecked - library specific property to handle SSL certificate
       verification. (DEPRECATED and no longer valid)
    -- ApplianceType - Indicates connected appliance type.  Used for cetain
       Cmdlet validation.
    -- AuthType - Credential or Certificate/Two-Factor authentication.
    -- ActivePermissions - A collection of HPOnewView.Appliance.ConnectionPermission
       objects that contain the Scope and Role available to the authenticated
       user.
    -- ApplianceSecurityRoles - The allowed roles by the connected appliance.
       Property value is used to validate roles when assigning to Directory
       groups or local user accounts.
    -- Default - used to define which connection is the 'default' for Cmdlet
       processing. Use the Set-HPOVApplianceDefaultConnection Cmdlet to modify
       this value.

    After successfully authenticating to an appliance, the
    HPOneView.Appliance.Connection object is added to the global session
    tracker, $ConnectedSessions.

HOW TO USE CONNECTION IN CMDLETS

    The PowerShell user can store the returned HPOneView.Appliance.Connection
    object in their own local, script-runspace variable, and pass it as the
    ApplianceConnection parameter value in supported CMDLETs.

    Some CMDLETs will default to using all connections within $ConnectedSessions,
    and can be overridden by referencing the specific connection Name or
    object.

    For instance, Get-HPOVNetwork will default to processing all appliance
    connections, as the -ApplianceConnection parameter default value is
    $ConnectedSessions.  To override its default value, you can either specify
    the object, or the appliance connection Name property value.


    This example shows how to use the connection 'object':

    PS C:\> $Connection1 = Connect-HPOVMgmt hpov1.domain.com administrator MyPassw0rd
    PS C:\> $Connection2 = Connect-HPOVMgmt hpov2.domain.com administrator MyPassw0rd
    PS C:\> $ConnectedSessions

    ConnectionID Name             UserName      AuthLoginDomain Default
    ------------ ----             --------      --------------- -------
    1            hpov1.domain.com Administrator LOCAL           True
    2            hpov2.domain.com Administrator LOCAL           False

    PS C:\> Get-HPOVNetwork -ApplianceConnection $Connection1
    ...


    This example shows how to use the connection 'name':

    PS C:\> $Connection1 = Connect-HPOVMgmt hpov1.domain.com administrator MyPassw0rd
    PS C:\> $Connection2 = Connect-HPOVMgmt hpov2.domain.com administrator MyPassw0rd
    PS C:\> $ConnectedSessions

    ConnectionID Name             UserName      AuthLoginDomain Default
    ------------ ----             --------      --------------- -------
    1            hpov1.domain.com Administrator LOCAL           True
    2            hpov2.domain.com Administrator LOCAL           False

    PS C:\> Get-HPOVNetwork -ApplianceConnection hpov1.domain.com
    ...

SETTING DEFAULT APPLIANCE CONNECTION

    When authenticating to your first appliance, the 'Default' property is automatically
    set to True.  Additional Appliance Connections are candidates to set as your new
    default appliance connection.  To do this, use the Set-HPOVApplianceDefaultConnection
    Cmdlet.    You will specify either an HPOneView.Appliance.Connection object (either from
    ${Global:ConnectedSessions} or the saved object returned from Connect-HPOVMgmt) or
    connection Name.

    This example shows how to modify your default appliance connection after successfully
    authenticating to them:

    PS C:\> $Connection1 = Connect-HPOVMgmt hpov1.domain.com administrator MyPassw0rd
    PS C:\> $Connection2 = Connect-HPOVMgmt hpov2.domain.com administrator MyPassw0rd
    PS C:\> $ConnectedSessions

    ConnectionID Name             UserName      AuthLoginDomain Default
    ------------ ----             --------      --------------- -------
    1            hpov1.domain.com Administrator LOCAL           True
    2            hpov2.domain.com Administrator LOCAL           False

    PS C:\> $Connection2 | Set-HPOVApplianceDefaultConnection

    ConnectionID Name             UserName      AuthLoginDomain Default
    ------------ ----             --------      --------------- -------
    1            hpov1.domain.com Administrator LOCAL           False
    2            hpov2.domain.com Administrator LOCAL           True

APPLIANCECONNECTION PROPERTY VALUE IN OBJECTS

    When using the various CMDLETs, the returned resource object(s) will contain a
    property called ApplianceConnection [HPOneView.Library.ApplianceConnection]:

    -----------------------
    | ApplianceConnection |
    -----------------------
            |
            |   ----------------------
            |---| [int] ConnectionID |
            |   ----------------------
            |   -----------------
            |---| [string] Name |
            |   -----------------

    The 'ConnectionID' and 'Name' sub-properties reference the Appliance Connection
    contained within ${Global:ConnectedSessions}.  These are used to identify resources
    that originate from the correct appliance, as each object is unique per appliance.
    To use these properties with Send-HPOVRequest, they can be referenced with their dot
    name reference (e.g. $ServerProfile.ApplianceConnection.Name).

SEE ALSO

    https://github.com/HewlettPackard/POSH-HPOneView
    http://hp.com/go/oneviewcommunity

    Get-Help about_Appliance_Connection_Permissions
```

