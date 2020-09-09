﻿# about\_HPEOneView.530

TOPIC

```text
about_HPEOneView.530
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
PowerShell library for HPE OneView 5.30
```

WHAT'S NEW

```text
   Release 5.30.2472.1534

 -- Initial 5.30 release.
 -- Renamed all Cmdlets with the new library vendor noun prefix.  Old prefix was HPOV,
new prefix is OV.  A Cmdlet, Update-OVUserScript, and Sample script, Update-UserScript.ps1,
as available to help update user ceated, non-digitally signed scripts with the
updated Cmdlet and C# Class namespace.
```

LONG DESCRIPTION

```text
This library provides HP OneView management capabilities for Windows PowerShell.
The library can be used as either a CLI or using the core cmdlets to call from
wrapper scripts.  The core cmdlets are:

  -- Connect-OVMgmt
  -- Send-OVRequest
  -- New-OVResource
  -- Set-OVResource
  -- Remove-OVResource

A set of sample scripts are also provided, that show how to fully configure an
HP OneView appliance from the ground up.

For information regarding this project, to request features or report
issues, please see: https://github.com/HewlettPackard/POSH-HPEOneView/issues
```

SEE ALSO

```text
https://github.com/HewlettPackard/POSH-HPEOneView
https://hpe-docs.gitbook.io/posh-hponeview
http://hpe.com/info/oneviewcommunity
Update-Help HPEOneView.530
Get-Help about_Appliance_Connections
Get-Help about_Appliance_Connection_Permissions
Get-Help about_Two_Factor_Authentication
Get-Help Connect-OVmgmt
Get-Help Send-OVRequest
[install_dir]\Samples
```