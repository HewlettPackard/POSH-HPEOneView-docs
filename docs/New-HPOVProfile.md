<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## New-HPOVProfile
<p>
Create or Import a Server Profile

### SYNTAX
<p>
<pre><code>New-HPOVProfile [-name] &lt;name&gt;[ [-server] &lt;server&gt;][ [-description] &lt;description&gt;][ [-connections] &lt;connections&gt;][ [-enclosureGroup] &lt;enclosureGroup&gt;][ [-serverHardwareType] &lt;serverHardwareType&gt;][ [-firmware] &lt;firmware&gt;][ [-baseline] &lt;baseline&gt;][ [-forceInstallFirmware] &lt;forceInstallFirmware&gt;][ [-bios] &lt;bios&gt;][ [-biosSettings] &lt;biosSettings&gt;][ [-BootMode] &lt;BootMode&gt;][ [-pxeBootPolicy] &lt;pxeBootPolicy&gt;][ [-manageBoot] &lt;manageBoot&gt;][ [-bootOrder] &lt;bootOrder&gt;][ [-localstorage] &lt;localstorage&gt;][ [-Initialize] &lt;Initialize&gt;][ [-Bootable] &lt;Bootable&gt;][ [-RaidLevel] &lt;RaidLevel&gt;][ [-Affinity] &lt;Affinity&gt;][ [-macAssignment] &lt;macAssignment&gt;][ [-wwnAssignment] &lt;wwnAssignment&gt;][ [-snAssignment] &lt;snAssignment&gt;][ [-serialnumber] &lt;serialnumber&gt;][ [-uuid] &lt;uuid&gt;][ [-hideUnusedFlexNics] &lt;hideUnusedFlexNics&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfile [-name] &lt;name&gt;[ [-server] &lt;server&gt;][ [-description] &lt;description&gt;][ [-connections] &lt;connections&gt;][ [-enclosureGroup] &lt;enclosureGroup&gt;][ [-serverHardwareType] &lt;serverHardwareType&gt;][ [-firmware] &lt;firmware&gt;][ [-baseline] &lt;baseline&gt;][ [-forceInstallFirmware] &lt;forceInstallFirmware&gt;][ [-bios] &lt;bios&gt;][ [-biosSettings] &lt;biosSettings&gt;][ [-BootMode] &lt;BootMode&gt;][ [-pxeBootPolicy] &lt;pxeBootPolicy&gt;][ [-manageBoot] &lt;manageBoot&gt;][ [-bootOrder] &lt;bootOrder&gt;][ [-localstorage] &lt;localstorage&gt;][ [-Initialize] &lt;Initialize&gt;][ [-Bootable] &lt;Bootable&gt;][ [-RaidLevel] &lt;RaidLevel&gt;] [-SANStorage] &lt;SANStorage&gt; [-HostOStype] &lt;HostOStype&gt; [-StorageVolume] &lt;StorageVolume&gt;[ [-EvenPathDisabled] &lt;EvenPathDisabled&gt;][ [-OddPathDisabled] &lt;OddPathDisabled&gt;][ [-Affinity] &lt;Affinity&gt;][ [-macAssignment] &lt;macAssignment&gt;][ [-wwnAssignment] &lt;wwnAssignment&gt;][ [-snAssignment] &lt;snAssignment&gt;][ [-serialnumber] &lt;serialnumber&gt;][ [-uuid] &lt;uuid&gt;][ [-hideUnusedFlexNics] &lt;hideUnusedFlexNics&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfile [-Import] &lt;Import&gt; [-ProfileObj] &lt;ProfileObj&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to create or import an HP OneView Server Profile.
			
A server profile is the configuration for a server instance. Server profiles capture the entire server configuration in one place, enabling you to consistently replicate new server profiles and to rapidly modify them to reflect changes in your data center.
        
A server profile includes:
        
• Basic server identification information
• Connectivity settings for Ethernet networks, network sets, and Fibre Channel networks
• Firmware versions
• Local storage settings
• SAN storage settings
• BIOS settings
• Boot order
• Physical or virtual UUIDs, MAC addresses, and WWN addresses
        
You can create an unassigned server profile that serves as a template. Typically, you capture best-practice configurations in a server profile template, and then copy and deploy instances as individual server profiles. Similar to virtual machine (VM) templates, profiles enable you to create a provisioning baseline for server hardware types in an enclosure.
        
When you create a server profile, it is designated for a server hardware type and enclosure group (for server blades), whether the profile is assigned or unassigned.

To figure out BIOS Settings to override or set within the Server Profile, you will need to get the Server Hardware Type resource that your are modeling the Server Profile for.  When retrieving the resource:

	$bl460cgen9sht = Get-HPOVServerHardwareType 'BL460c Gen9 1'

The 'biosSettings' Array property will be available (only with supported Server Hardware Types; i.e. BL460c Gen8 or newer).  To locate potential BIOS Settings, you can use the following code as an example:

	$biosSettings = $bl460cgen9sht.biosSettings | ? { $_.name -match "power" }

The code example above will return all matching BIOS Settings where the name contains 'power'.  The found BIOS settings object(s) are then saved into $biosSettings.  Update the 'value' property accordingly, and you can then pass $biosSettings variable to the -biosSettings parameter.


### Parameters

-name &lt;name&gt;<p>
The name of the server profile resource to be created.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -server &lt;server&gt;<p>
The server hardware resource where the new profile is to be applied.  This is normally retrieved with a 'Get-HPOVServer' call, and the Server state property should be "NoProfileApplied".  Can also be the Server Hardware name or URI.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>unassigned</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -description &lt;description&gt;<p>
Optional description for this server profile.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -connections &lt;connections&gt;<p>
The network connections that are to be part of this new server profile.  This an array of profile conneciton objects which may be created with 'New-HPOVProfileConnection'.

Expected Connection Format:
            
[System.Array] @(
    [PsCustomObject]@{
        [System.Int]id                     - Connection ID. Valid 1-64. A 0 value is allowed,
                                             but means Auto Connection ID assignment.
        [System.String]function            - Ethernet or FibreChannel.
        [System.String]networkUri          - URI to the Network resource.
        [System.String]portId              - Auto or the specific Port ID. For FlexLOMs, the valid
                                             portId prefix will be "Flb", and Mezzanine would be "Mezz".
		            			             Ex. FlexNIC 1a interface would be "Flb 1:1a"
		            			             Ex. Mezzanine 2, FlexNIC 2c interface would be "Mezz 2:2c"
        [System.Int32]requestedMpbs        - Requested bandwidth in Mbps.
        [System.Collections.Hashtable]boot - Nested Hashtable
            @{
                [System.String]priority    - Boot priority for this connection. Can be used with Ethernet
                                             or FC connections.  Allowed values:
		            						   NotBootable
		            						   Primary
		            						   Secondary
                [System.Array]targets      - Array of FC boot targets (only 1 entry is allowed)
		            @(
		            	[System.String]arrayWwpn - Target WWPN of storage array.
		            	[System.String]lun       - Boot LUN ID
		            			
		            )
            }
		[System.String]macType - Allowed values:
		            				Physical
		            				UserDefined
		            				Virtual
		[System.String]mac      - UserDefined MAC Address. Required for custom MAC and FCoE WWPN addresses.
		[System.String]wwpnType - Allowed values:
		            				Physical
		            				UserDefined
		            				Virtual
		[System.String]wwpn     - UserDefined WWPN Address
		[System.String]wwnn     - UserDefined WWNN Address
    }
)

Default: No connections

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -enclosureGroup &lt;enclosureGroup&gt;<p>
Aliases [-eg]
The Enclosure Group resource the Server Profile will be bound to.  Only required when Server value is "Unassigned".

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -serverHardwareType &lt;serverHardwareType&gt;<p>
Aliases [-sht]
The Server Hardware Type reource the Server Profile will be bound to.  Required when Server value is "Unassigned" or assigning to an empty device bay in an enclosure which must include the -enclosure and -enclosureBay parameters.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>6</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -firmware &lt;firmware&gt;<p>
Enable Firmware Management.  Cannot be enabled with Server Hardware Type does not support Firmware Management (i.e. BL G7 servers.)

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -baseline &lt;baseline&gt;<p>
Firmware baseline to assign.  Can be either Baseline Name or URI.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -forceInstallFirmware &lt;forceInstallFirmware&gt;<p>
Using this parameter will force the bundled firmware components to install when the Server Profile is applied to a server.  This will downgrade firmware if the component firmware is newer than what the SPP Baseline contains.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -bios &lt;bios&gt;<p>
Enable BIOS Settings Management.  Cannot be enabled with Server Hardware Type does not support BIOS Management (i.e. BL G7 servers.)

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -biosSettings &lt;biosSettings&gt;<p>
BIOS Settings that are to be managed.  You can get the BIOS settings available from Get-HPOVServerHarwareType and the returned biosSettings property.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -BootMode &lt;BootMode&gt;<p>
Specify the Gen9 Boot Envrionment.
        
Sets the boot mode as one of the following:

• UEFI
• UEFIOptimized
• BIOS

If you select UEFI or UEFI optimized for an HP ProLiant DL Gen9 rack mount server, the remaining boot setting available is the PXE boot policy.

For the UEFI or UEFI optimized boot mode options, the boot mode choice should be based on the expected OS and required boot features for the server hardware. UEFI optimized boot mode reduces the time the system spends in POST (Video driver initialization). In order to select the appropriate boot mode, consider the following:

• If a secure boot is required, the boot mode must be set to UEFI or UEFI optimized .
• For operating systems that do not support UEFI (such as DOS, or older versions of Windows and Linux), the boot mode must be set to BIOS.
• When booting in UEFI mode, Windows 7, Server 2008, or 2008 R2 should not be set to UEFIOptimized.

Default: BIOS

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>BIOS</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -pxeBootPolicy &lt;pxeBootPolicy&gt;<p>
Controls the ordering of the network modes available to the Flexible LOM (FLB); for example, IPv4 and IPv6.

Select from the following policies:

• Auto
• IPv4 only
• IPv6 only
• IPv4 then IPv6
• IPv6 then IPv4

Setting the policy to Auto means the order of the existing network boot targets in the UEFI Boot Order list will not be modified, and any new network boot targets will be added to the end of the list using the System ROM's default policy.

Default: Auto

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -manageBoot &lt;manageBoot&gt;<p>
Aliases [-boot]

Enable Boot Order Management.  Also required for Connection boot enablement.  If this is disabled ($False), then PXE or FC BfS settings are disabled within the entire Server Profile.

Default: $True

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -bootOrder &lt;bootOrder&gt;<p>
Boot Order settings to be managed.
  
Defines the order in which boot will be attempted on the available devices. For Gen7 and Gen8 server hardware the possible values are 'CD', 'Floppy', 'USB', 'HardDisk', and 'PXE'. For Gen9 BL server hardware in Legacy BIOS boot mode, the possible values are 'CD', 'USB', 'HardDisk', and 'PXE'. For Gen9 BL server hardware in UEFI or UEFI Optimized boot mode, only one value is allowed and must be either 'HardDisk' or 'PXE'. For Gen9 DL server hardware in Legacy BIOS boot mode, the possible values are 'CD', 'USB', 'HardDisk', and 'PXE'. For Gen9 DL server hardware in UEFI or UEFI Optimized boot mode, boot order configuration is not supported.

Gen7/8 BIOS Default Boot Order: 'CD','Floppy','USB','HardDisk','PXE'
Gen9 Legacy BIOS Boot Order: 'CD','USB','HardDisk','PXE'
Gen9 UEFI Default Boot Order: 'HardDisk'

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -localstorage &lt;localstorage&gt;<p>
Enable local storage settings to be managed on the server.  Will only enable embedded Smart Array controller management.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Initialize &lt;Initialize&gt;<p>
Indicates whether the local storage controller should be reset to factory defaults before applying the local storage settings from the server profile.

*************                                                                                               *************
***WARNING*** Setting this will overwrite an existing logical disk if present, and without further warning. ***WARNING***
*************                                                                                               *************

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Bootable &lt;Bootable&gt;<p>
Indicates if the logical drive is bootable or not.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -RaidLevel &lt;RaidLevel&gt;<p>
RAID level of the logical drive.  Local Smart Array controller must support the required RAID level with the appropriate amount of drives.

Allowed parameter values:

• None
• Raid0
• Raid1

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -SANStorage &lt;SANStorage&gt;<p>
Optional.  Enable SAN Storage Management within the Server Profile.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -HostOStype &lt;HostOStype&gt;<p>
Aliases [-OS]

Optional. Specify the Host OS type, which will set the Host OS value when HP OneView created the Host object on the Storage System.  Accepted values:

• CitrixXen = "Citrix Xen Server 5.x/6.x"
• AIX       = "AIX"
• IBMVIO    = "IBM VIO Server"
• RHEL4     = "RHE Linux (Pre RHEL 5)"
• RHEL3     = "RHE Linux (Pre RHEL 5)"
• RHEL      = "RHE Linux (5.x, 6.x)"
• RHEV      = "RHE Virtualization (5.x, 6.x)"
• VMware    = "ESX 4.x/5.x"
• Win2k3    = "Windows 2003"
• Win2k8    = "Windows 2008/2008 R2"
• Win2k12   = "Windows 2012 / WS2012 R2"
• OpenVMS   = "OpenVMS"
• Egenera   = "Egenera"
• Exanet    = "Exanet"
• Solaris9  = "Solaris 9/10"
• Solaris10 = "Solaris 9/10"
• Solaris11 = "Solaris 11"
• ONTAP     = "NetApp/ONTAP"
• OEL       = "OE Linux UEK (5.x, 6.x)"
• HPUX11iv1 = "HP-UX (11i v1, 11i v2)"
• HPUX11iv2 = "HP-UX (11i v1, 11i v2)"
• HPUX11iv3 = "HP-UX (11i v3)"
• SUSE      = "SuSE (10.x, 11.x)"
• SUSE9     = "SuSE Linux (Pre SLES 10)"
• Inform    = "InForm"

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -StorageVolume &lt;StorageVolume&gt;<p>
Optional. Array of Storage Volume resources to attach.  Can be created by using the New-HPOVProfileAttachVolume cmdlet.  This parameter does not accept a Storage Volume resource from the Get-HPOVStorageVolume cmdlet.

The format of the Storage Volume resource should be a PsCustomObject PowerShell resource with the following keys and values:

[PsCustomObject]@{
    [System.Int]id                        - Valid Host LUN ID 0-254
    [System.String]lunType                - Auto or Manual
    [System.String]volumeUri              - URI to Storage Volume that has been created and not
                                            assigned to another Server Profile if it is a Private Volume.
    [System.String]volumeStoragePoolUri   - URI to HP OneView managed Storage Pool
    [System.String]volumeStorageSystemUri - URI to HP OneView managed Storage System
    [System.Array]storagePaths            - Array specifying the Profile FC Connection ID associated
                                            with the path to the attached volume, and if the path is
                                            enabled or disabled.
        @(
            [System.Int]connectionId      - FC Connection ID.  If using New-HPOVProfileAttachVolume helper
                                            cmdlet, New-HPOVProfile will automatically determine the FC
                                            connection ID.
            [System.Boolean]isEnabled     - Enable or disable the path
        )
}

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -EvenPathDisabled &lt;EvenPathDisabled&gt;<p>
Aliases [-even]

Enable to disable even paths in the attached storage volume(s).

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -OddPathDisabled &lt;OddPathDisabled&gt;<p>
Aliases [-odd]

Enable to disable odd paths in the attached storage volume(s).

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Affinity &lt;Affinity&gt;<p>
In a server profile, the Affinity control sets the remove-and-replace behavior for blade servers. If you apply a server profile to a blade server and the server is subsequently removed from the device bay, the Affinity setting controls whether the server profile is reapplied when you insert a server blade into the empty bay. Server profiles for rack servers do not have affinity.

Accepted values are either 'Bay' or 'BayAndServer'.  Default is 'Bay'.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Bay</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -macAssignment &lt;macAssignment&gt;<p>
Optional setting for MAC address assignment.  May be Virtual or Physical.  Use Virtual if you need to specify a UserDefined value when using the New-HPOVProfileConnection helper CMDLET.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Virtual</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -wwnAssignment &lt;wwnAssignment&gt;<p>
Optional setting for WWN assignment.  May be Virtual or Physical.  Use Virtual if you need to specify a UserDefined value when using the New-HPOVProfileConnection helper CMDLET.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Virtual</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -snAssignment &lt;snAssignment&gt;<p>
Optional setting for serial number and UUID assignment.  May be Virtual, Physical or UserDefined.

Default: Virtual serial number and UUID assignment

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Virtual</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -serialnumber &lt;serialnumber&gt;<p>
When specifying snAssignment parameter to UserDefined, you can provide a user defined Serial Number value.  You must also specify the UUID by using the uuid parameter.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -uuid &lt;uuid&gt;<p>
When specifying snAssignment parameter to UserDefined, you can provide a user defined UUID value.  You must also specify the Serial Number by using the serialnumber parameter.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -hideUnusedFlexNics &lt;hideUnusedFlexNics&gt;<p>
This setting provides the ability to hide unused FlexNICs from the operating system.

If Hide Unused FlexNICs is set to $True (default/enabled), FlexNICs that do not map to any server profile connections are not presented to the operating system. For example, if you have a full complement of eight FlexNICs defined in your server profile but map only four, your operating system will see only the four mapped FlexNICs instead of eight.

If Hide Unused FlexNICs is set to $False (disabled), eight FlexNICs are enumerated in the operating system as network interfaces for each Flex-10 or FlexFabric adapter.

Configuring Fibre Channel connections on a FlexFabric adapter can enumerate two storage interfaces, reducing the number of network interfaces to six.

FlexNICs are hidden in pairs, starting with the fourth pair. For example, if the fourth FlexNIC on either physical port corresponds to a profile connection, all eight physical functions are enumerated. If a profile connection corresponds to the second FlexNIC on either physical port, but no connection corresponds to the third or fourth FlexNIC on either physical port, only the first and second physical functions are enumerated in the operating system.

By default, Hide Unused FlexNICs is enabled. This setting can be changed only when the server is powered off.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Import &lt;Import&gt;<p>
Switch to import Server Profile JSON object or file.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -ProfileObj &lt;ProfileObj&gt;<p>
Aliases [-location, -file]
Source Server Profile JSON object or file.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_
 The full path to the Server Profile JSON export file.
 _**System.Management.Automation.PSCustomObject**_
 Server Profile resource object from Get-Content by reading from a JSON file.


### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_
 
If successful returns a task resource which may be polled to follow the progress of the profile creation.  Otherwise, a request validation error will be returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> $svr = Get-HPOVServer "ServerA"
PS C:\> New-HPOVProfile -name "Profile 1" -server $svr | Wait-HPOVTaskComplete

</pre>
Create a simple profile for 'ServerA', and wait for it to be applied.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:\> $profileName = "HP ProLiant BL460 Gen8 Profile Template"
PS C:\> $net1 = Get-HPOVNetwork "Net-41-A"
PS C:\> $con1 = New-HPOVProfileConnection -network $net1 -connectionType Ethernet -connectionId 1
PS C:\> $net2 = Get-HPOVNetwork "Net-41-B"
PS C:\> $con2 = New-HPOVProfileConnection -network $net2 -connectionType Ethernet -connectionId 2
PS C:\> $conList = @($con1, $con2)
PS C:\> $bl460SHT = Get-HPOVServerHardwareTypes -name "BL460c Gen8 1"
PS C:\> $eg = Get-HPOVEnclosureGroup "Default EG1"
PS C:\> $params = @{
>>    name               = $profileName;
>>    server             = "unassigned";
>>    serverHardwareType = $bl460SHT;
>>    enclosureGroup     = $eg;
>>    connections        = $conList
>>}
>>
PS C:\> New-HPOVProfile @params | Wait-HPOVTaskComplete

</pre>
Create a BL Gen8 Server Profile template, and pipe to Wait-HPOVTaskComplete.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PS C:\> $net41 = Get-HPOVNetwork "Net-41"
PS C:\> $con41 = New-HPOVProfileConnection -network $net41 -connectionType Ethernet -connectionId 1
PS C:\> $net42 = Get-HPOVNetwork "Net-42"
PS C:\> $con42 = New-HPOVProfileConnection -network $net42 -connectionType Ethernet -connectionId 2
PS C:\> $conList = @($con41, $con42)
PS C:\> $task = New-HPOVProfile -name $profileName -server "unassigned" -serverHardwareType "bl460c Gen8 1" -enclosureGroup "Production Encl Grp1" -connections $conList
PS C:\> Wait-HPOVTaskComplete -taskUri $task.uri

</pre>
Create a profile which includes networks 'Net-41' and 'Net-42'.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
PS C:\> $bl460SHT = Get-HPOVServerHardwareTypes -name "BL460c Gen8 1"
PS C:\> $enclosuregroup = Get-HPOVEnclosureGroup "Production EG1"
PS C:\> $net41 = Get-HPOVNetwork "Net-41"
PS C:\> $con41 = New-HPOVProfileConnection -id 1 -type Ethernet -network $net41
PS C:\> $net42 = Get-HPOVNetwork "Net-42"
PS C:\> $con42 = New-HPOVProfileConnection -id 2 -type Ethernet -network $net42
PS C:\> $fcneta = Get-HPOVNetwork "fabric a"
PS C:\> $con3 = New-HPOVProfileConnection -id 3 -type FibreChannel -network $fcneta -bootable -priority Primary -arrayWWPn "21:11:00:02:AC:00:72:03" -LUN 0
PS C:\> $fcnetb = Get-HPOVNetwork "fabric b"
PS C:\> $con4 = New-HPOVProfileConnection -id 4 -type FibreChannel -network $fcnetb -bootable -priority Secondary -arrayWWPn "22:12:00:02:AC:00:72:03" -LUN 0
PS C:\> $conList = @($con41, $con42, $fcneta, $fcnetb)
PS C:\> $task = New-HPOVProfile -name $profileName -server 'unassigned' -connections $conList -sht $bl460SHT -eg $enclosuregroup

</pre>
Create an unassigned server profile which includes networks 'Net-41' and 'Net-42', adds FC Connections for BfS.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
PS C:\> $bl460SHT = Get-HPOVServerHardwareType -name "BL460c Gen8 1"
PS C:\> $enclosuregroup = Get-HPOVEnclosureGroup "Production EG1"
PS C:\> $net41 = Get-HPOVNetwork "Net-41"
PS C:\> $con41 = New-HPOVProfileConnection 1 Ethernet $net41
PS C:\> $net42 = Get-HPOVNetwork "Net-42"
PS C:\> $con42 = New-HPOVProfileConnection -connectionID 2 -connectionType Ethernet -network $net42
PS C:\> $conList = @($con41, $con42)
PS C:\> $volume1 = Get-HPOVStorageVolume Volume1 | New-HPOVProfileAttachVolume -volumeid 1
PS C:\> $volume2 = Get-HPOVStorageVolume SharedVolume1 | New-HPOVProfileAttachVolume -volumeid 2
PS C:\> $attachVolumes = @($volume1,$volume2)
PS C:\> $task = New-HPOVProfile -name $profileName -server 'unassigned' -connections $conList -SANStorage -ostype VMware -StorageVolume $attachVolumes -sht $sht -eg $enclosuregroup

</pre>
Create an unassigned server profile which includes networks 'Net-41' and 'Net-42', and attaches two storage volumes.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
PS C:\> $bl460SHT = Get-HPOVServerHardwareTypes -name "BL460c Gen8 1"
PS C:\> $enclosure = Get-HPOVEnclosure "Encl1"
PS C:\> $bay = 12
PS C:\> $net41 = Get-HPOVNetwork "Net-41"
PS C:\> $con41 = New-HPOVProfileConnection -id 1 -type Ethernet -network $net41
PS C:\> $net42 = Get-HPOVNetwork "Net-42"
PS C:\> $con42 = New-HPOVProfileConnection -id 2 -type Ethernet -network $net42
PS C:\> $fcneta = Get-HPOVNetwork "fabric a"
PS C:\> $con3 = New-HPOVProfileConnection -id 3 -type FibreChannel -network $fcneta -bootable -priority Primary -arrayWWPn "21:11:00:02:AC:00:72:03" -LUN 0
PS C:\> $fcnetb = Get-HPOVNetwork "fabric b"
PS C:\> $con4 = New-HPOVProfileConnection -id 4 -type FibreChannel -network $fcnetb -bootable -priority Secondary -arrayWWPn "22:12:00:02:AC:00:72:03" -LUN 0
PS C:\> $conList = @($con41, $con42, $fcneta, $fcnetb)
PS C:\> $task = New-HPOVProfile -name $profileName -connections $conList -sht $bl460SHT -enclosure $enclosure -bay $bay
PS C:\> Wait-HPOVTaskComplete -taskUri $task.uri

</pre>
Create a profile which includes networks 'Net-41' and 'Net-42', adds FC Connections for BfS, and assign to Bay 13 of 'Encl1' which is currently empty.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
PS C:\> $server = Get-HPOVServer "Encl1, Bay 1"
PS C:\> #display the BL460 Gen8 BIOS Settings
PS C:\> $bl460SHT.biosSettings
PS C:\> #Set HP Power Profile (ID 210) to Maximum Performance and HP Power Regulator (ID 140) to HP Static High Performance Mode.
PS C:\> $bl460bios = @(@{id=210;value=3},@{id=140;value=3})
PS C:\> $net41 = Get-HPOVNetwork "Net-41"
PS C:\> $con41 = New-HPOVProfileConnection 1 Ethernet $net41 -bootable -priority Primary
PS C:\> $net42 = Get-HPOVNetwork "Net-42"
PS C:\> $con42 = New-HPOVProfileConnection -connectionID 2 -connectionType Ethernet -network $net42
PS C:\> $conList = @($con41, $con42)
PS C:\> $task = New-HPOVProfile -name $profileName -server $server -connections $conList -manageboot -bootorder @("PXE","HardDisk","CD","Floppy","USB") -bios -biossettings $bl460bios | Wait-HPOVTaskComplete

</pre>
Create a profile which includes networks 'Net-41' and 'Net-42', sets the boot order, and sets the BIOS. Then pipes to Wait-HPOVTaskComplete.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
PS C:\> $profileName = "HP ProLiant BL460 Gen 9 UEFI Profile Template"
PS C:\> $net1 = Get-HPOVNetwork "Net-41-A"
PS C:\> $con1 = New-HPOVProfileConnection -network $net1 -connectionType Ethernet -connectionId 1
PS C:\> $net2 = Get-HPOVNetwork "Net-41-B"
PS C:\> $con2 = New-HPOVProfileConnection -network $net2 -connectionType Ethernet -connectionId 2
PS C:\> $conList = @($con1, $con2)
PS C:\> $bl460SHT = Get-HPOVServerHardwareTypes -name "BL460c Gen9 1"
PS C:\> $eg = Get-HPOVEnclosureGroup "Default EG1"
PS C:\> $params = @{
>>    name               = $profileName;
>>    server             = "unassigned";
>>    serverHardwareType = $bl460SHT;
>>    enclosureGroup     = $eg;
>>    connections        = $conList
>>    manageboot         = $True;
>>    bootMode           = "UEFI";
>>    pxeBootPolicy      = "IPv4ThenIPv6";
>>    bootOrder          = "HardDisk";
>>    HideUnusedFlexnics = $True
>>}
>>
PS C:\> New-HPOVProfile @params | Wait-HPOVTaskComplete

</pre>
Create a BL Gen9 UEFI Server Profile template, and pipe to Wait-HPOVTaskComplete.


 <pre> -------------------------- EXAMPLE 9 --------------------------<p>
PS C:\> New-HPOVProfile -import -file C:\profiles\ServerProfile1.json
</pre>
Basic Server Profile import.


 <pre> -------------------------- EXAMPLE 10 --------------------------<p>
PS C:\> (Get-Content C:\profiles\ServerProfile1.json) -join "`n" | New-HPOVProfile -import
</pre>
Read the contents from ServerProfile1.json, join each line into a single object, and pipe to New-HPOVProfile to import.


 <pre> -------------------------- EXAMPLE 11 --------------------------<p>
PS C:\> $jsonProfiles = Get-ChildItem C:\profiles\*.json
PS C:\> $jsonProfiles | foreach-object { New-HPOVProfile -import -file $_.fullname }

</pre>
Retrieve list of all JSON files in C:\profiles, then pass each file and its full path to New-HPOVProfile.



### Related Links

* [Get-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServer)
* [Copy-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVProfile)
* [New-HPOVProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfileAssign)
* [Remove-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVProfile)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerHardwareType)
* [New-HPOVProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfileConnection)
* [Get-HPOVProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVProfileConnectionList)
* [New-HPOVProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfileAttachVolume)
* [Wait-HPOVTaskComplete](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVTaskComplete)


***
<div align=right><a href="#Top">Top</a></div>
