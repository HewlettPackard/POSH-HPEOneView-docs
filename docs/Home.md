<a name="top"></a>
# Introduction 
HPE OneView makes it simple to deploy and manage today’s complex hybrid cloud infrastructure. HPE OneView can help you transform your data center to software-defined, and it supports HPE’s broad portfolio of servers, storage, and networking solutions, ensuring the simple and automated management of your hybrid infrastructure.  Software-defined intelligence enables a template-driven approach for deploying, provisioning, updating, and integrating compute, storage, and networking infrastructure. 

This library enables PowerShell developers, IT automation engineers, or devops teams the ability to utilize HPE OneView's open REST API to automate infrastructure policies and operations.  Starting with the HPE OneView 5.00 PowerShell library, PowerShell Core is now supported.

This PowerShell module requires the following minimum versions:

**Table 1. Requirements**

Library | Components | Version
--------|---------------------|-----
HPE OneView 4.10 |Windows Management Framework (WMF) |     4.0
HPE OneView 4.10 |.Net Client Framework |     4.6**
HPE OneView 4.10 |HPE OneView/HPE Synergy | 4.10 or newer
HPE OneView 4.20 |Windows Management Framework (WMF) |     4.0
HPE OneView 4.20 |.Net Client Framework |     4.6**
HPE OneView 4.20 |HPE OneView/HPE Synergy | 4.20 or newer
HPE OneView 5.00 |.NetStandard | 2.0****
HPE OneView 5.00 |PowerShell | 5.1 or 6.0
HPE OneView 5.00 |PowerShellCore | 6.2 or newer
HPE OneView 5.00| HPE OneView/HPE Synergy | 5.00 or newer
All|[FormatPX](https://github.com/KirkMunro/FormatPx/releases) |v1.1.2.12 or greater***
All|[SnippetPX](https://github.com/KirkMunro/SnippetPX/releases) |v1.0.2.13 or greater***

> __**NOTE:__ Windows Server 2008 R2 SP1 will be required to install the 4.6 .Net Client Framework.

> __***NOTE:__ Already included within the Signed Installer.

> __****NOTE:__ .NetStandard 2.0 supports both the [.NetFramework 4.7.2 Windows][DotNetFW472] and [DotNetCore 2.0][DotNetCore2] clients.

[DotNetFW472]: https://devblogs.microsoft.com/dotnet/announcing-the-net-framework-4-7-2/
[DotNetCore2]: https://devblogs.microsoft.com/dotnet/announcing-net-core-2-0/

**Table 2. Deprecated releases**

Library | Components | Version
--------|---------------------|-----
HPE OneView 1.20|Windows Management Framework (WMF) |     3.0
HPE OneView 1.20|.Net Client Framework |     4.0
HPE OneView 1.20| HPE OneView |     1.20 or newer
HPE OneView 2.00|Windows Management Framework (WMF) |     4.0
HPE OneView 2.00|.Net Client Framework |     4.6**
HPE OneView 2.00| HPE OneView |     2.00 or newer
HPE OneView 3.00|Windows Management Framework (WMF) |     4.0
HPE OneView 3.00|.Net Client Framework |     4.6**
HPE OneView 3.00|HPE OneView/HPE Synergy | 3.00 or newer
HPE OneView 4.00|Windows Management Framework (WMF) |     4.0
HPE OneView 4.00|.Net Client Framework |     4.6**
HPE OneView 4.00|HPE OneView/HPE Synergy | 3.00 or newer
HPE OneView 4.10*|Windows Management Framework (WMF) |     4.0
HPE OneView 4.10*|.Net Client Framework |     4.6**
HPE OneView 4.10*|HPE OneView/HPE Synergy | 3.00 or newer

> __*NOTE:__ These libraries are now in maintenance mode, and only critical fixes will be released.

# Installer changes starting with HPE OneView 5.00 PowerShell library and newer
Starting with the HPE OneView 5.00 PowerShell library, the provided EXE installer is no longer available.  The library has been published to the Microsoft PowerShell Gallery since the release of the 3.10 library.  To install the library on another system that might not have Internet access, please review the [`Save-Module`](https://go.microsoft.com/fwlink/?LinkId=531351) PowerShellGet Cmdlet.

## How to obtain and install the 4.20 or older library
The library can be installed in one of two ways:

* Go to the Code then <a href="https://github.com/HewlettPackard/POSH-HPOneView/releases" target="_blank">Releases</a> tab in this repository, and download the current release for the version you wish to download.
* Starting with the HPE OneView 3.10 library release, it is now published on the PowerShellGallery.  `Install-Module HPOneView.{VERSION}` or `Save-Module HPOneView.{VERSION}` can be used for those using PowerShell 5.0 (with the <a href="https://github.com/powerShell/powershellget" target="_blank">PowerShellGet module</a>) or newer.

## Importing the library into your PowerShell console
The library module name to import is always `HPOneView.{VERSION}`, where `{VERSION}` is the `Major` and `Minor` version concatenated together.  For example, to load the HPE OneView 5.00 library, issue the following command within your PowerShell console:

```Powershell
Import-Module HPOneView.500
```

## How to start using the library

There are 5 primary CMDLETs to interact with the HPE OneView appliance:

* <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/Connect-HPOVMgmt" target="_blank">Connect-HPOVMgmt</a>
* <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/Send-HPOVRequest" target="_blank">Send-HPOVRequest</a>
* <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVResource" target="_blank">New-HPOVResource</a>
* <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVResource" target="_blank">Set-HPOVResource</a>
* <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResource" target="_blank">Remove-HPOVResource</a>

New in the HPE OneView 2.00 library is the ability to connect to multiple appliances, which allows the user to execute various CMDLETs without requiring to disconnect and reconnect to other appliances within your PowerShell session.  The `Connect-HPOVMgmt` CMDLET will authenticate you to the requested appliance. From there, a session object (Type `[HPOneView.Appliance.Connection]`) is created and added to a global variable `$ConnectedSessions` (Type `[System.Collections.ArrayList]`) in your PowerShell runtime environment that other CMDLETs will use.  Within the `[HPOneView.Appliance.Connection]` object contains a number of properties, of which the connected appliance `hostname` value provided by `Connect-HPOVMgmt` is stored, along with the `SessionID` of your user session.

> **NOTE:** For more information about multiple appliance connection support, please review `get-help about_Appliance_Connections` from your PowerShell console, or read the online wiki page for <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/about_Appliance_Connections" target="_blank">about_Appliance_Connections</a>.

The `New-HPOVResource`, `Set-HPOVRequest` and `Remove-HPOVResource` Cmdlets are mainly for callers to perform Create, Update and Delete operations where a native Cmdlet hasn't been developed.  The following diagram is an example of flow, where `Send-HPOVRequest` is the main Cmdlet that directly communicates with the HPE OneView REST API.

<a href="https://raw.githubusercontent.com/wiki/HewlettPackard/POSH-HPOneView/images/library_interaction_diagram.png" target="_blank">
<img src="https://raw.githubusercontent.com/wiki/HewlettPackard/POSH-HPOneView/images/library_interaction_diagram.png" alt="" width="615" height="470" /></a>

Once completed, you can either close out of your PowerShell console, or issue the `Disconnect-HPOVMgmt` CMDLET to terminate your session, and return you back to your PowerShell consoles prior state.

***
<div align=right><a href="#Top">Top</a></div>

## Sample Scripts

> **NOTE:** Starting with the HPE OneView 3.00 library, the installation directory (including where Samples are stored) are no longer in either the Windows or Users directory.  Instead, the 3.00 library is now within` $env:ProgramFiles\WindowsPowerShell\Modules\HPOneView.{VERSION}`.

To ease the use of the HPE OneView PowerShell library, we have included a number of sample scripts administrators can use to quickly get familiar with the capabilities of the library.  The sample scripts are part of the Source Code and installer.  Depending on which installation selection you chose (Just You, or For Everyone), there is a Samples directory that contain all of the sample scripts.  By no means are they exhaustive, but will help you get more familiar with the library.

```PowerShell
[PS] ...\Samples> dir               
    Directory: \POSH-HPOneView.500\Samples


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l         1/24/2019   1:12 PM           3911 AddServers_Monitored_Sample.ps1
-a---l         1/24/2019   1:12 PM           5103 AddStorageSystem_Sample.ps1
-a---l         1/24/2019   1:12 PM           3787 Alerts_Sample.ps1
-a---l         1/24/2019   1:12 PM          18727 ApplianceConfig_Sample.ps1
-a---l         1/24/2019   1:12 PM           3005 Appliance_Backup_Sample.ps1
-a---l         1/24/2019   1:12 PM          13593 ComposerApplianceConfig_Sample.ps1
-a---l         1/24/2019   1:12 PM           8827 ConfigureRemoteSupport_Sample.ps1
-a---l         1/24/2019   1:12 PM          10146 Configure_IIS_WebDav_ExternalRepo_Sample.ps1
-a---l         1/24/2019   1:12 PM           3674 CreateEnclosureGroup_Sample.ps1
-a---l         1/24/2019   1:12 PM           3565 DefineLogicalInterconnectGroup_AA_VC_Sample.ps1
-a---l         1/24/2019   1:12 PM           3456 DefineLogicalInterconnectGroup_Sample.ps1
-a---l         1/24/2019   1:12 PM           4037 DefineNetworks_AA_VC_Sample.ps1
-a---l         1/24/2019   1:12 PM           3701 DefineNetworks_Sample.ps1
-a---l         1/24/2019   1:12 PM           2531 ImportEnclosure_Sample.ps1
-a---l         1/24/2019   1:12 PM           7303 Server_Multiconnection_AA_VC_Sample.ps1
-a---l         1/24/2019   1:12 PM           7437 Server_Multiconnection_Sample.ps1
-a---l         1/24/2019   1:12 PM           7873 Server_Multiconnection_SAN_Storage_Sample.ps1
-a---l         1/24/2019   1:12 PM           5714 Server_Profile_Template_Multiconnection_Sample.ps1
-a---l         1/24/2019   1:12 PM           8299 Wipe_Appliance.ps1
```

## Generating sample code
Introduced in the HPE OneView 4.10 library, the [`ConvertTo-HPOVPowerShellScript`](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convertto-HPOVPowerShellScript) Cmdlet will take supported resources that were created either with the UI or other REST API client or HPE OneView SDK's, and generate PowrShell script code.

Here is an example of generating PowerShell script code from an HPE Synergy server profile created in the UI:

<a href="https://raw.githubusercontent.com/wiki/HewlettPackard/POSH-HPOneView/images/{8392C5DD-5303-4C61-82F3-F788C40DAB26}.png" target="_blank">
<img src="https://raw.githubusercontent.com/wiki/HewlettPackard/POSH-HPOneView/images/{8392C5DD-5303-4C61-82F3-F788C40DAB26}.png" alt="" width="615" height="470" /></a>

```PowerShell
# Get the profile and generate PowerShell script code
Get-HPOVServerProfile -Name prf1 | ConvertTo-HPOVPowerShellScript

# -------------- Attributes for ServerProfile "prf1"
$name                       = "prf1"
$description                = "prf1"
$server                     = Get-HPOVServer -Name "Encl-1, bay 11"
$affinity                   = "Bay"
# -------------- Attributes for connection "1"
$connID                     = 1
$connType                   = "Ethernet"
$netName                    = "Mgmt"
$ThisNetwork                = Get-HPOVNetwork -Type Ethernet -Name $netName
$portID                     = "Mezz 3:1-a"
$requestedMbps              = 2500
$Conn1                      = New-HPOVServerProfileConnection -ConnectionID $connID -ConnectionType $connType -Network $ThisNetwork -PortId $portID -RequestedBW $requestedMbps
# -------------- Attributes for connection "2"
$connID                     = 2
$connType                   = "Ethernet"
$netName                    = "Mgmt"
$ThisNetwork                = Get-HPOVNetwork -Type Ethernet -Name $netName
$portID                     = "Mezz 3:2-a"
$requestedMbps              = 2500
$Conn2                      = New-HPOVServerProfileConnection -ConnectionID $connID -ConnectionType $connType -Network $ThisNetwork -PortId $portID -RequestedBW $requestedMbps
$connections                = $Conn1, $Conn2
# -------------- Attributes for logical disk "Boot(RAID1)"
$ldName                     = "Boot"
$raidLevel                  = "RAID1"
$numPhysDrives              = 2
$driveTech                  = "Auto"
$LogicalDisk1               = New-HPOVServerProfileLogicalDisk -Name $ldName -Raid $raidLevel -NumberofDrives $numPhysDrives -DriveType $driveTech -Bootable $True
# -------------- Attributes for controller "Embedded" (Mixed)
$deviceSlot                 = "Embedded"
$controllerMode             = "Mixed"
$LogicalDisks               = $LogicalDisk1
$writeCache                 = "Enabled"
$controller1                = New-HPOVServerProfileLogicalDiskController -ControllerID $deviceSlot -Mode $controllerMode -WriteCache $writeCache -LogicalDisk $LogicalDisks
$controllers                = $controller1
# -------------- Attributes for BIOS Boot Mode settings
$manageboot                 = $True
$biosBootMode               = "UEFIOptimized"
# -------------- Attributes for BIOS order settings
$bootOrder                  = "HardDisk"
# -------------- Attributes for BIOS settings
$biosSettings               = @(
        @{id = 'WorkloadProfile'; value = 'GeneralThroughputCompute'},
        @{id = 'PowerRegulator'; value = 'StaticHighPerf'},
        @{id = 'EnergyPerfBias'; value = 'MaxPerf'},
        @{id = 'CollabPowerControl'; value = 'Disabled'},
        @{id = 'NumaGroupSizeOpt'; value = 'Clustered'},
        @{id = 'SubNumaClustering'; value = 'Enabled'},
        @{id = 'EnergyEfficientTurbo'; value = 'Disabled'},
        @{id = 'IntelUpiPowerManagement'; value = 'Disabled'}
)
# -------------- Attributes for advanced settings
New-HPOVServerProfile -Name $name -Description $description -AssignmentType Server -Server $server -Affinity $affinity -Connections $connections -LocalStorage -StorageController $controllers -ManageBoot:$manageboot -BootMode $biosBootMode -BootOrder $bootOrder -Bios -BiosSettings $biosSettings -HideUnusedFlexNics $true
```

### HPE OneView automation sample repository
We have created a home for contributors to provide sample scripts or automation toolkits that use various HPE OneView ecosystem providers.  You can find those samples on the [HPE OneView Samples GitHub project repository](https://github.com/hewlettPackard/oneview-samples).

Others have contributed example scripts to further automate management within the infrastructure.  Please use the following links to see other examples not included within the library Samples directory.

* <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/Rename-LANnetworks" target="_blank">Rename-LANNetwork</a>
* <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-BladeSystemInventory" target="_blank">Get-BladeSystemInventory</a>
* <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/Import-Export-OVResources" target="_blank">Import/Export-OVResources</a>
* <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/Automate-Appliance-Backup" target="_blank"> Automate Appliance Backup</a>
* <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/Creator" target="_blank"> Create OV Resources</a>
* <a href="https://github.com/HewlettPackard/POSH-HPOneView/wiki/Creator-iLO" target="_blank"> Configure iLO settings from OneView</a>
* <a href="https://github.com/HewlettPackard/POSH-HPOneView/releases/tag/HPSIMtoOV" target="_blank"> HPSIM to HPE OneView Tool</a>

***
<div align=right><a href="#Top">Top</a></div>

## Additional Resources

#### HPE OneView Python Library
* <a href="https://github.com/HewlettPackard/python-hpOneView" target="_blank">HPE OneView Python library source code, updates and issues tracker</a>

#### HPE OneView Documentation on the HPE Enterprise Information Library
* <a href="http://hpe.com/info/OneView/docs" target="_blank">HPE OneView Release Notes</a>
* <a href="http://hpe.com/info/OneView/docs" target="_blank">HPE OneView Support Matrix</a>
* <a href="http://hpe.com/info/OneView/docs" target="_blank">HPE OneView Installation Guide</a> 
* <a href="http://hpe.com/info/OneView/docs" target="_blank">HPE OneView User Guide</a>
* <a href="http://hpe.com/info/OneView/docs" target="_blank">HPE OneView Online Help</a>
* <a href="http://hpe.com/info/OneView/docs" target="_blank">HPE OneView REST API Reference</a>
* <a href="http://hpe.com/info/OneView/docs" target="_blank">HPE OneView Firmware Management White Paper</a>
* <a href="http://hpe.com/info/OneView/docs" target="_blank">HPE OneView Deployment and Management White Paper</a>

#### HPE Virtual Connect Documentation
* <a href="http://hpe.com/info/VirtualConnect" target="_blank">Virtual Connect Command Line User Guide</a>
* <a href="http://hpe.com/info/VirtualConnect" target="_blank">Virtual Connect Enterprise Manager User Guide</a>
* <a href="http://hpe.com/info/VirtualConnect" target="_blank">Virtual Connect Enterprise Manager Command Line User Guide</a>

#### HPE OneView Community
* <a href="http://hpe.com/info/oneviewcommunity" target="_blank">HPE OneView Community Forums</a>

Learn more about HPE OneView at <a href="http://hpe.com/info/oneview" target="_blank">hpe.com/info/oneview</a>
***
<div align=right><a href="#Top">Top</a></div>