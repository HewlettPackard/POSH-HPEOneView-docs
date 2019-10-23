```
TOPIC

    about_HPOneView.400

COPYRIGHT

    (C) Copyright 2013-2018 Hewlett Packard Enterprise Development LP 

LICENSE

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.

SHORT DESCRIPTION

    PowerShell library for HP OneView 4.00
	
WHAT'S NEW

    Release 4.00.1554.2229

     -- First release of HPE OneView 4.00 PowerShell library.
     -- Added SmartCard/CAC support to Connect-HPOVMgmt.
     -- Refactored SSL/TLS certificate validation to support SmartCard/CAC authentication.
     -- Deprecated SslChecked property in HPOneView.Appliance.Connection object.
     -- Added ActivePermissions (List<HPOneView.Appliance.ConnectionPermission>) property 
        to HPOneView.Appliance.Connection objects, which contains the SBAC permission(s) of
        the logged in user.
     -- Updated New-HPOVLdapServer to support trusting the leaf certificate by adding a new
        parameter called -TrustLeafCertificate.  This parameter would be required if the
        issuing certificate authority certificate has not been added to the appliance.
     -- Changed Class Object type for $PSLibraryVersion.'ApplianceNode' to HPOneView.Appliance.NodeInfo.
     -- Added SNMPv1 and SNMPv3 appliance trap destination support.
     -- Added SNMPv3 User appliance support.
     -- Added the ability to get the appliance proxy settings.
     -- Added support for Active Diretory SRV record support to New-HPOVLdapServer.
     -- Updated New-HPOVServerProfile and New-HPOVServerProfileAssign to support confirmation
        when hardware health state is not OK.  Use -Confirm switch parameter to override.

LONG DESCRIPTION

    This library provides HP OneView management capabilities for Windows PowerShell.
    The library can be used as either a CLI or using the core cmdlets to call from
    wrapper scripts.  The core cmdlets are:

        • Connect-HPOVmgmt
        • Send-HPOVRequest
        • New-HPOVResource
        • Set-HPOVResource
        • Remove-HPOVResource

    A set of sample scripts are also provided, that show how to fully configure an
    HP OneView appliance from the ground up.
                                        
    For information regarding this project, to request features or report 
    issues, please see: https://github.com/HewlettPackard/POSH-HPOneView/issues


SEE ALSO

    https://github.com/HewlettPackard/POSH-HPOneView
    http://hpe.com/info/oneviewcommunity
    Update-Help HPOneview.400
    Get-Help about_Appliance_Connections
    Get-Help about_Appliance_Connection_Permissions
    Get-Help about_Two_Factor_Authentication
    Get-Help Connect-HPOVmgmt
    Get-Help Send-HPOVRequest
    [install_dir]\Samples

```