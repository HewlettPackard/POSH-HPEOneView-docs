# about\_Two\_Factor\_Authentication

```text
TOPIC

    about_Two_Factor_Authentication

SHORT DESCRIPTION

    How to utilize two factor authentication with the HPE Oneview PowerShell
    library.

LONG DESCRIPTION

    Passwords, no matter how complex, provide insufficient security for many
    applications. For additional security, use two-factor authentication. With
    two-factor authentication, two factors are required for HPE OneView authentication.
    The two factors are something the user possesses (a smart card), and something the
    user knows (a personal identification number).

    HPE OneView user/password authentication
    ----------------------------------------

    Users can be configured in HPE OneView as local users, or remotely in an
    enterprise directory.

    The traditional user name and password login sequence is as follows:

    1. The user types their user name and password.
    2. HPE OneView authenticates the user name and password.

        * If the user name is that of a local user configured in HPE OneView, HPE
          OneView validates a manually specified user name and password using the HPE
          OneView database.
        * If your environment is configured to use an enterprise directory, HPE OneView
          immediately forwards the user name and password to a configured directory
          server for authentication.

    3. Once authentication is successful, HPE OneView determines the authorization
       permissions for the user.

        * If it is a local user login, authorization permissions are decided based
        on the roles associated with the user.
        * If it is an enterprise directory login, HPE OneView sends a request to the
        directory server to retrieve the group name associated with the user. It uses
        the group name to determine the authorization permission for the user configured
        in HPE OneView.

    HPE OneView two-factor authentication
    -------------------------------------

    Enabling two-factor authentication allows you to use smart cards — for example,
    Common Access Cards (CAC), or Personal Identity Verification (PIV) cards — to
    authenticate within HPE OneView. The client certificate embedded in the smart
    card is presented to HPE OneView by the library. The client certificate must be
    signed by a root or intermediate Certificate Authority (CA) that has been
    previously imported into HPE OneView. The appliance authenticates the client
    certificate to validate that the user name specified in the certificate is that
    of a valid user recognized by the directory server configuration in HPE OneView.

    When two-factor authentication is enabled, HPE OneView uses a Microsoft Active
    Directory service account set up and owned by the user to access an Active Directory
    entry for the user, rather than using an account associated with the user name
    received during first time login.

    The certificates stored on CAC/PIV cards are X.509 security certificates. They
    contain fields of information used to identify the certificate owner, the
    certificate issuer, and other certificate identification elements. When you
    enable two-factor authentication, you can specify which certificate fields HPE
    OneView must use to validate a user.

    An Infrastructure administrator also has the flexibility to customize the rules
    HPE OneView applies during client certificate authentication. The Infrastructure
    administrator can configure the locations within the certificate from which HPE
    OneView retrieves the user name, domain name and the OIDs that must be present
    for the certificate to be valid.  See Set-HPOVApplianceTwoFactorAuthentication
    help.

AUTHENTICATING USING A SMARTCARD

    The users smart card or digital badge must be present on the PC.  Using PowrShell's
    native Certificate provider, the smart card can be accessed using the following:

        PS C:\> $MyCertificate = gci Cert:\CurrentUser\my | ? { $_.EnhancedKeyUsageList.FriendlyName -match 'Smart Card Logon' }

    Then, the $MyCertificate object can be passed into the Connect-HPOVMgmt
    Cmdlet:

        PS C:\> Connect-HPOVMgmt -Hostname Myappliance.domain.com -Certificate $MyCertificate

GLBOAL CONNECTION TRACKING OBJECT AND 2FA PROPERTIES

    Contained in the $ConnectedSessions Global varilable, will be each
    successful appliance connection object, HPOneView.Appliance.Connection.
    When authenticating with a smart card, the AuthType property of the
    HPOneView.Appliance.Connection object will be set to "Certificate".
    The "Authentication" property will be set to the Active Directory
    authentication directory that authenticated the request.  The
    "ActivePermissions" property will contain the available Scopes and
    Roles.

    To examine which Roles and Scopes are available for the logged in
    account, examine the [HPOneView.Appliance.Connect].ActivePermissions
    property.  This property is a collection of HPOneView.Appliance.ActivePermissions
    objects.  The [String]ScopeName, [String]RoleName, and [Bool]Active
    properties

    The SessionID within HPOneView.Appliance.Connection object contains
    the current users active permission set. To modify the active permission
    set, use either the Pop-HPOVAppliancePermission or Push-HPOVAppliancePermission
    Cmdlets.

HOW TO USE SCOPES IN CMDLETS

    Scopes by default are managed by Infrastructure administrators, unless
    the HPOneView.Appliance.ScopeCollection resource has been scoped to a
    local user or directory user with Scope administrator role.  Once a
    scope has been created, it can be used to filter for supported resource
    objets:

        * Enclosures
        * Server Hardware
        * Networks (Ethernet, FC, and FCoE)
        * Network Sets
        * Interconnects, excluding SAS resources
        * Logical Interconnects, excluding SAS resources
        * Logical Interconnect Groups, excluding SAS resources
        * Switches
        * Logical Switches
        * Logical Switch Groups

    The supporting Cmdlets for the above resources include a -Scope parameter
    that allowed the caller to supply one or more HPOneView.Appliance.ScopeCollection
    resources to filter.  By default, the appliance will return all available
    resources that are part of the users Active Permissions Set.

    For instance, Get-HPOVNetwork -Scope $MyScopeObject will return only the
    network objects that are a member of the scope within the $MyScopeObject
    variable:

    PS C:\> $MyScopeObject = Get-HPOVScope -Name MyScope -ErrorAction Stop
    PS C:\> Get-HPOVNetwork -Scope $MyScopeObject

	    Type: Ethernet


    Name            Status Purpose Type   VlanID IPv4Subnet Smartlink PrivateNetwork PreferredBandwidth MaxBandwidth
    ----            ------ ------- ----   ------ ---------- --------- -------------- ------------------ ------------
    Dev VLAN 101-A  OK     General Tagged 101    None       True      False          2500               20000
    Dev VLAN 101-B  OK     General Tagged 101    None       True      False          2500               20000
    Dev VLAN 102-A  OK     General Tagged 102    None       True      False          2500               20000
    Dev VLAN 102-B  OK     General Tagged 102    None       True      False          2500               20000
    Dev VLAN 103-A  OK     General Tagged 103    None       True      False          2500               20000
    Dev VLAN 103-B  OK     General Tagged 103    None       True      False          2500               20000
    Dev VLAN 104-A  OK     General Tagged 104    None       True      False          2500               20000
    Dev VLAN 104-B  OK     General Tagged 104    None       True      False          2500               20000
    Dev VLAN 105-A  OK     General Tagged 105    None       True      False          2500               20000
    Dev VLAN 105-B  OK     General Tagged 105    None       True      False          2500               20000

        Type: Fibre Channel


    Name     Status Type         TypicalBandwidth MaxBandwidth AutoLoginRedistribution LinkStabilityInterval ManagedSAN
    ----     ------ ----         ---------------- ------------ ----------------------- --------------------- ----------
    Fabric A OK     FabricAttach 4000             20000        True                    30                    SA
    Fabric B OK     FabricAttach 4000             20000        True                    30                    SA

    ...

SEE ALSO

    https://github.com/HewlettPackard/POSH-HPOneView
    http://hp.com/go/oneviewcommunity
```

