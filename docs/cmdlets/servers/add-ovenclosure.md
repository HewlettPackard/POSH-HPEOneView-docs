---
description: Import a support HPE BladeSystem c-Class enclosure.
---

# Add-OVEnclosure

## Syntax

```powershell
Add-OVEnclosure
    [-Hostname] <String>
    [-EnclosureGroup] <Object>
    [-Username] <String>
    [-Password] <Object>
    [-LicensingIntent] <String>
    [-Baseline <Object>]
    [-ForceInstallFirmware]
    [-Scope <Array>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Add-OVEnclosure
    [-Hostname] <String>
    [-EnclosureGroup] <Object>
    [-Credential <PSCredential>]
    [-LicensingIntent] <String>
    [-Baseline <Object>]
    [-ForceInstallFirmware]
    [-Scope <Array>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Add-OVEnclosure
    [-Hostname] <String>
    [-Credential <PSCredential>]
    [-Monitored]
    [-Scope <Array>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Add-OVEnclosure
    [-Hostname] <String>
    [-Username] <String>
    [-Password] <Object>
    [-Monitored]
    [-Scope <Array>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

An enclosure (HPE c-Class BladeSystem enclosure or Synergy frame) is a physical structure with device bays supporting compute, networking, and storage building blocks. These building blocks share the enclosure's common power, cooling, and management infrastructure.

This Cmdlet will import an HPE BladeSystem c7000 enclosure for HPE OneView management. The Onboard Administrator needs to have at least an IP Address for each OA module, and a valid Administrator account. An Enclosure Group must also be created.

???+ info
    HPE Synergy enclosures are automatically discovered when their frame link manager is connected to the Synergy management ring.


This Cmdlet will attempt a connection to the XML Reply interface to examine if an existing VC Domain is present. If so, you are prompted if you wish to continue and force import the enclosure. 

???+ danger
    FORCE IMPORT OF AN ENCLOSURE WILL DELETE ANY EXISTING VC DOMAIN CONFIGURATION, AND NOT PERFORM ANY VC DOMAIN CONFIGURATION MIGRATION. PLEASE BACKUP YOUR VC DOMAIN IF YOU WISH TO RESTORE TO ITS ORIGINAL CONFIGURATION.


If you wish to migrate the enclosure from a Virtual Connect Manager or Virtual Connect Enterprise Manager configuration, please use the Invoke-OVVcmMigration Cmdlet.

???+ info
    Minimum required privileges: Infrastructure administrator or Server administrator.

## Examples

###  Example 1 

```powershell
Add-OVEnclosure -oa "192.168.1.1" -enclGroupName EG1 -user admin -pass hpinvent -license OneView
```

Add a new enclosure to the appliance, using the EG1 Enclosure Group.

###  Example 2 

```powershell
Add-OVEnclosure -oa "192.168.1.1" -enclGroupName EG1 -user admin -pass hpinvent -license OneView -confirm:$false
```

Add a new enclosure to the appliance, using the EG1 Enclosure Group, and force add the target enclosure.

THIS IS A DESTRUCTIVE  PROCESS IF AN EXISTING VC DOMAIN EXISTS.

###  Example 3 

```powershell
Add-OVEnclosure -oa "192.168.1.1" -user admin -pass hpinvent -monitored
```

Add a new enclosure to the appliance for monitoring only.

## Parameters

### -Hostname &lt;String&gt;

IP Address, Hostname or FQDN of the Primary C7000 Onboard Administrator (OA).

| Aliases | oa |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnclosureGroup &lt;Object&gt;

Enclosure Group Name to associate with the enclosure to import.

| Aliases | eg, EnclGroupName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Administrator account of the target OA.  Can be either an OA Local Administrator or Active Directory (AD) account if the OA is configured for AD authentication.

| Aliases | u, user |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

Administrator Account password of the OA specified.  Value can be `[System.String]` or `[System.Security.SecureString]`.

| Aliases | p, pw |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LicensingIntent &lt;String&gt;

Specifies whether the intent is to apply either OneView or OneView w/o iLO licenses to the servers in the enclosure being imported.

Accepted values are

* OneView
* OneViewNoiLO

| Aliases | license, l |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | OneView |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Baseline &lt;Object&gt;

Baseline File Name, Name, URI or Object.

Examples:

$FileName = "bp-hp-service-pack-for-proliant-oneview-2014-11-30-05.iso"
$Name = "HPE Service Pack For ProLiant  OneView 2014 11 13"

| Aliases | fwIso, fwBaselineIsoFilename |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ForceInstallFirmware &lt;SwitchParameter&gt;

 Force the installation of the provided Firmware Baseline.

| Aliases | forceFw, forceInstall |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Monitored &lt;SwitchParameter&gt;

Add the specified enclosure for monitor only management.  You can view hardware for inventory and status information only.  Omitting this parameter, you can apply configurations, deploy server profiles, monitor operation status, collect statistics, and alert users to specific conditions.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

When attempting to add an enclosure to the appliance, the appliance will validate the target enclosure is not already claimed. If it is, this parameter is used when the server has been claimed by another appliance to bypass the confirmation prompt, and force add the server resource.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Array&gt;

Provide an array of <HPEOneView.Appliance.ScopeResource> Scope resource(s) to initially add.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]"
    Enclosure Group Resource that will be used to set the Enlosure policy.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for monitoring the enclosure import process.
    

## Related Links

* [Get-OVEnclosure](get-ovenclosure.md)
* [Get-OVEnclosureGroup](get-ovenclosuregroup.md)
* [Invoke-OVVcmMigration](../networking/invoke-ovvcmmigration.md)
* [New-OVEnclosureGroup](new-ovenclosuregroup.md)
* [Remove-OVEnclosure](remove-ovenclosure.md)
* [Remove-OVEnclosureGroup](remove-ovenclosuregroup.md)
* [Reset-OVEnclosureDevice](reset-ovenclosuredevice.md)
* [Set-OVEnclosure](set-ovenclosure.md)
* [Set-OVEnclosureActiveFLM](set-ovenclosureactiveflm.md)
* [Set-OVEnclosureGroup](set-ovenclosuregroup.md)
* [Update-OVEnclosure](update-ovenclosure.md)
