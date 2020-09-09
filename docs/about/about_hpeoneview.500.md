# about\_HPEOneView.500

TOPIC

```text
about_HPOneView.500
```

COPYRIGHT

```text
(C) Copyright 2013-2020 Hewlett Packard Enterprise Development LP
```

LICENSE

```text
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
```

SHORT DESCRIPTION

```text
PowerShell library for HP OneView 5.00
```

WHAT'S NEW

```text
Release 5.00.2150.3666

 -- Initial 5.00 release.
 -- Transitioned library to .NetStandard 2.0 codebase, in order to support PowerShell 5.x,
    PowerShell 6, and PowerShellCore with DotNet 4.8 Framework and DotNetCore for Linux and
    Mac.
 -- Deprecated EXE installer.  Library is a published PowerShell Catelog resource.  In order to
    install the library on another system without Internet access, use Save-Module from another
    PC, and then manually copy the module contents to the isolated system.
 -- All -Username and -Password parameters are now obsolete and deprecated. Plase update your
    scripts to use the -Credential parameter instead.
 -- Added Brocade FOS support to Add-HPOVSanManager
 -- Added Consistency Checking parameters to New-HPOVLogicalInterconnectGroup and New-HPOVUplinkSet.
 -- Added Network Set support to New-HPOVUplinkSet to either track network set resources,
    or to copy networks from the provided Network Set(s) with the -CopyNetworksFromNetworkSet
    parameter.
 -- Added unmanaged fibre channel connection to New-HPOVServerProfile and
    New-HPOVServerProfileConnection for supported servers.
 -- Added Get-HPOVServerOneTimeBoot and Set-HPOVServerOneTimeBoot to support server One
    Time Boot settings.
 -- Added IPv6 address pool support to New-HPOVAddressPoolSubnet and New-HPOVAddressPoolRange.
 -- Added Gen10 ComSig firmware hotfix file support to Add-HPOVBaseline.
 -- Added ID assignment override to New-HPOVServerProfile when specifying a server profile template.
```

LONG DESCRIPTION

```text
This library provides HP OneView management capabilities for Windows PowerShell.
The library can be used as either a CLI or using the core cmdlets to call from
wrapper scripts.  The core cmdlets are:

  -- Connect-HPOVmgmt
  -- Send-HPOVRequest
  -- New-HPOVResource
  -- Set-HPOVResource
  -- Remove-HPOVResource

A set of sample scripts are also provided, that show how to fully configure an
HP OneView appliance from the ground up.

For information regarding this project, to request features or report
issues, please see: https://github.com/HewlettPackard/POSH-HPOneView/issues
```

SEE ALSO

```text
https://github.com/HewlettPackard/POSH-HPOneView
http://hpe.com/info/oneviewcommunity
Update-Help HPOneView.500
Get-Help about_Appliance_Connections
Get-Help about_Appliance_Connection_Permissions
Get-Help about_Two_Factor_Authentication
Get-Help Connect-HPOVmgmt
Get-Help Send-HPOVRequest
[install_dir]\Samples
```

