TOPIC

    about_HPEOneView.860

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

    PowerShell library for HPE OneView 8.60

WHAT'S NEW

   Release 8.60.3997.3057

      -- Initial HPE OneView 8.60 library release.
      -- Support for PowerShell 5 and 6 is now deprecated and is no longer supported.
      -- [#647] Fixed ConvertTo-OVPowerShellScript mishandling BIOS consistency policy
         when parsing a server profile template.
      -- [#642] Fixed incorrect use of internal variable within Update-OVServerFirmware.
      -- [#654] Fixed ConvertTo-OVPowerShellScript mishandling Tunnel uplink set resources.
      -- [#656] Fixed parameter evaluation bug with Update-OVServerProfile and the -Stage
         parameter.
      -- Added Cmdlets to manage HPE GreenLake for Compute Ops Managment - OneView Edition
         service configuration and status from the appliance.
      -- Added workaround to supporting Gen10 Plus V2 platforms and supporting
         firmware management.
      -- Added Update-OVRemoteSupportEntitlement Cmdlet to refresh remote support
         entitlement data with the backend.
      -- Updated Get-OVRemoteSupportSetting and Get-OVRemoteSupportEntitlementStatus to
         support interconnect resources.
      -- Added HPE GreenLake for Compute Ops Management - OneView Edition Cmdlets;
         Get-OVComputeOpsManagement, Set-OVComputeOpsManagement, Connect-OVComputeOpsManagement,
         Enable-OVComputeOpsManagement, Disable-OVComputeOpsManagement
      -- Added Alletra 9000 FC-NVMe support to Add-OVStorageSystem.
      -- Added MegaRAID support to New-OVServerProfileLogicalDiskController.
      -- Added Get-OVServerHardwareAvailableController to return discovered disk drive
         controllers for volume servers (DL, ML, Apollo) and drives.  New classes added
         HPEOneView.Servers.StorageController and HPEOneView.Servers.PhysicalDrive.
      -- Added the ability to specify controller returned from Get-OVServerHardwareAvailableController.
      -- Added the ability to specify specific drives in New-OVServerProfileLogicalDisk
         after invoking Get-OVServerHardwareAvailableController to get list of controllers
         and available drives that are part of the HPEOneView.Servers.StorageController.Drives
         property.
      -- Updated core library to handle web proxy in a more efficient method.
      -- Updated core library to use TLS1.2 only.
      -- [#659] Enhanced Show-OVFirmwareReport to provide available baseline version.
      -- [#662] Resolved issue with Update-OVServerProfile not handling -Stage parameter
         correctly.
      -- Enhanced New-OVBackup to require passphrase to create backup file.
      -- Enhanced Send-OVRequest to handle appliance certificate validation errors correctly.
      -- Changed Get-OVApplianceUpdateSchedule to Get-OVFirmwareBundleUpdateSchedule.  Alias
         to original Cmdlet is available for backwards compatibility.  Please update your scripts.
      -- Changed Set-OVApplianceUpdateSchedule to Set-OVFirmwareBundleUpdateSchedule.  Alias
         to original Cmdlet is available for backwards compatibility.  Please update your scripts.
      -- Changed Get-OVApplianceUpdate to Get-OVFirmwareBundleUpdate.  Alias to original Cmdlet
         is available for backwards compatibility.  Please update your scripts.
      -- Changed HPEOneView.Appliance.ApplianceUpdate class to HPEOneView.Appliance.FirmwareBundleUpdate.
      -- Changed HPEOneView.Appliance.ApplianceUpdateSchedule class to
         HPEOneView.Appliance.FirmwareBundleUpdateSchedule.
      -- Removed -PreviewOnly switch parameter from Update-OVServerFirmware, as the API doesn't provide
         a compliance feature.
      -- Fixed an issue with Set-OVFirmwareBundleUpdateSchedule where the value for -Time was not properly
         handled when converting to UTC time.

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
    Update-Help HPEOneView.860
    Get-Help about_Appliance_Connections
    Get-Help about_Appliance_Connection_Permissions
    Get-Help about_Two_Factor_Authentication
    Get-Help Connect-OVmgmt
    Get-Help Send-OVRequest
    [install_dir]\Samples






