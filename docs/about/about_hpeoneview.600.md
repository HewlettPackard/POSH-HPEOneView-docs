﻿TOPIC

    about_HPEOneView.600

COPYRIGHT

    (C) Copyright 2013-2021 Hewlett Packard Enterprise Development LP

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

    PowerShell library for HPE OneView 6.00

WHAT'S NEW

   Release 6.00.2719.1668

      -- Initial HPE OneView 6.00 library release.
      -- Added support for custom sender address for email filters.
      -- Added support for setting server and interconnect time syncronization Cmdlets:
         Get-OVServerNtpConfiguration, Set-OVServerNtpConfiguration, Get-OVInterconnectNtpConfiguration,
         Set-OVInterconnectNtpConfiguration.
      -- Updated New-OVUplinkSet to ensure ImageStreamer type always sets LacpLoadBalancingMode
         to "None".
      -- Relaxed Show-OVFirmwareReport to allow supported Monitored server hardware resources in
         report collection.
      -- Fixed issue with Show-OVFirmwareReport not handling SDFlex compute partitions when attempting
         to display firmware.
      -- Enhanced Show-OVFirmwareReport to handle baselines that are associated with supported resources and are
         no longer present on the appliance.
      -- [#554] Fixed Synergy fabric module typo in New-OVLogicalInterconnectGroup for HPE Synergy
         32Gb FC module.
      -- [#556] Updated Server.format.ps1xml to display connection address when is User Assigned from using
         Show-OVServerProfileConnection.
      -- [#557] Fixed New-OVLdapGroup and Set-OVLdapGroup requiring -Credential parameter when the
         authentication directory is assigned a service account.
      -- [$558] Fixed ConvertTo-OVPowerShellScript not handling multiple logical interconnect group mappings,
         and IPv6 Address pools.
      -- [#561] Fixed ConvertTo-OVPowerShellScript not providing server profile connection network name variable
         in generated script code.
      -- Fixed an issue within Set-OVUplinkSet where a provided Uplink Set resource (from Get-OVUplinkSet)
         reports an incorrect category type, causing validation logic to fail.
      -- Added -Name parameter to Get-OVAddressPoolRange to assist with filtering for specific pool ranges.
      -- Added -Append parameter to Set-OVLdapGroup and Set-OVUser Cmdlets to change the behavior of changing
         the roles or scope permissions.

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
    Update-Help HPEOneView.600
    Get-Help about_Appliance_Connections
    Get-Help about_Appliance_Connection_Permissions
    Get-Help about_Two_Factor_Authentication
    Get-Help Connect-OVmgmt
    Get-Help Send-OVRequest
    [install_dir]\Samples
