﻿TOPIC

    about_HPEOneView.700

COPYRIGHT

    (C) Copyright 2013-2024 Hewlett Packard Enterprise Development LP

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

    PowerShell library for HPE OneView 7.00

WHAT'S NEW

   Release 7.00.3307.2893

      -- Initial HPE OneView 7.00 library release.
      -- All HPE BladeSystem c-Class features have been removed from the library. This aligns
         with the removed features in HPE OneView 7.00 for c-Class resources.
      -- Added back BNA support after mistakenly removing.
      -- Fixed Get-OVNetwork returning all index resources when -Type FC parameter was provided.
      -- Added password property redaction method to hide passwords when using -Verbose output.
      -- Fixed PowerShell platform detection when attempting to identify .Net client installed.
      -- [#614] Addressed issue with iLO self-signed certificate handling within PowerShell Core.
      -- Changes to New-OVServerProfileLogicalDiskController and the -ControllerID parameter now
         has a new enum list that doesn't allow spaces in the parameter value. Prior, "Mezz 1" was
         an allowed value, it must now be "Mezz1".
      -- Updated New-OVServerProfileLogicalDiskController by adding spare drive policy parameter
         to manage spare drive policy with HPE Synergy D3940 and Gen10 or newer controllers.
      -- Updated New-OVServerProfileLogicalDisk by adding add spare drive parameter to manage spare
         drive policy with HPE Synergy D3940 and Gen10 or newer controllers.
      -- Removed StoreVirtual support due to the removal of support from HPE OneView 7.0.
      -- Added Cmdlets to help manage appliance static routes.  Only supported with virtual machine
         appliance, and not HPE Synergy Composer.

LONG DESCRIPTION

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


SEE ALSO

    https://github.com/HewlettPackard/POSH-HPEOneView
    https://hpe-docs.gitbook.io/posh-hpeoneview
    http://hpe.com/info/oneviewcommunity
    Update-Help HPEOneView.700
    Get-Help about_Appliance_Connections
    Get-Help about_Appliance_Connection_Permissions
    Get-Help about_Two_Factor_Authentication
    Get-Help Connect-OVmgmt
    Get-Help Send-OVRequest
    [install_dir]\Samples
