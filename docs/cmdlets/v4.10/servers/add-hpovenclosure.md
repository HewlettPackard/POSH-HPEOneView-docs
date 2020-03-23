---
description: Import an enclosure.
---

# Add-HPOVEnclosure

## Syntax

```text
Add-HPOVEnclosure
    [-Hostname] <String>
    [-EnclosureGroup] <Object>
    [-Username] <String>
    [-Password] <Object>
    [-LicensingIntent] <String>
    [-Baseline] <Object>
    [-ForceInstallFirmware]
    [-Scope <Array>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Add-HPOVEnclosure
    [-Hostname] <String>
    [-EnclosureGroup] <Object>
    [-Credential <PSCredential>]
    [-LicensingIntent] <String>
    [-Baseline] <Object>
    [-ForceInstallFirmware]
    [-Scope <Array>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Add-HPOVEnclosure
    [-Hostname] <String>
    [-Credential <PSCredential>]
    [-Monitored]
    [-Scope <Array>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Add-HPOVEnclosure
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

This cmdlet will import an enclosure for HPE OneView management.  The Onboard Administrator needs to have at least an IP Address for each OA module, and a valid Administrator account.  An Enclosure Group must also be created.
	
Add-HPOVEnclosure will attempt a connection to the XML Reply interface to examine if an existing VC Domain is present.  If so, you are prompted if you wish to continue and force import the enclosure.  FORCE IMPORT OF AN ENCLOSURE WILL DELETE ANY EXISTING VC DOMAIN CONFIGURATION, AND NOT PERFORM ANY VC DOMAIN CONFIGURATION MIGRATION.  PLEASE BACKUP YOUR VC DOMAIN IF YOU WISH TO RESTORE TO ITS ORIGINAL CONFIGURATION.

## Examples

###  Example 1 

```text
Add-HPOVEnclosure -oa "192.168.1.1" -enclGroupName EG1 -user admin -pass hpinvent -license OneView

```

Add a new enclosure to the appliance, using the EG1 Enclosure Group.

###  Example 2 

```text
Add-HPOVEnclosure -oa "192.168.1.1" -enclGroupName EG1 -user admin -pass hpinvent -license OneView -confirm:$false
Add a new enclosure to the appliance, using the EG1 Enclosure Group, and force add the target enclosure.

```

THIS IS A DISTRUCTIVE PROCESS IF AN EXISTING VC DOMAIN EXISTS.

###  Example 3 

```text
Add-HPOVEnclosure -oa "192.168.1.1" -user admin -pass hpinvent -monitored

```

Add a new enclosure to the appliance for monitoring only.

## Parameters

### -Hostname &lt;String&gt;

Aliases [-oa]

IP Address, Hostname or FQDN of the Primary C7000 Onboard Administrator (OA).

| Aliases | oa |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnclosureGroup &lt;Object&gt;

Aliases [-eg, `-enclGroupName`]

Enclosure Group Name to associate with the enclosure to import.

| Aliases | eg, EnclGroupName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Aliases [-u, `-user`]

Administrator account of the target OA.  Can be either an OA Local Administrator or Active Directory (AD) account if the OA is configured for AD authentication.

| Aliases | u, user |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

Aliases [-p, `-pw`]

Administrator Account password of the OA specified.  Value can be [String] or [SecureString].

| Aliases | p, pw |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LicensingIntent &lt;String&gt;

Aliases [-license, `-l`]

Specifies whether the intent is to apply either OneView or OneView w/o iLO licenses to the servers in the enclosure being imported.

Accepted values are

	* OneView
	* OneViewNoiLO

| Aliases | license, l |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `OneView` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Baseline &lt;Object&gt;

Aliases [-fwIso, `-fwBaselineIsoFilename`]

Baseline File Name, Name, URI or Object.

Examples:

$FileName = "bp-hp-service-pack-for-proliant-oneview-2014-11-30-05.iso"
$Name = "HP Service Pack For ProLiant  OneView 2014 11 13"

| Aliases | fwIso, fwBaselineIsoFilename |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ForceInstallFirmware &lt;SwitchParameter&gt;

Aliases [-forceFw, `-forceInstall`]

 Force the installation of the provided Firmware Baseline.

| Aliases | forceFw, forceInstall |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Monitored &lt;SwitchParameter&gt;

Add the specified enclosure for monitor only management.  You can view hardware for inventory and status information only.  Omitting this parameter, you can apply configurations, deploy server profiles, monitor operation status, collect statistics, and alert users to specific conditions.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

When attempting to add a Server to the appliance, the appliance will validate the target Server is not already claimed.  If it is, this parameter is used when the server has been claimed by another appliance to bypass the confirmation prompt, and force add the server resource.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Array&gt;

Provide an array of <HPOneView.Appliance.ScopeResource> Scope resource(s) to initially add.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

Enclosure Group Resource that will be used to set the Enlosure policy.


## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for monitoring the enclosure import process.


## Related Links

* [Get-HPOVEnclosure](get-hpovenclosure.md)
* [Get-HPOVEnclosureGroup](get-hpovenclosuregroup.md)
* [New-HPOVEnclosureGroup](new-hpovenclosuregroup.md)
* [Remove-HPOVEnclosure](remove-hpovenclosure.md)
* [Remove-HPOVEnclosureGroup](remove-hpovenclosuregroup.md)
* [Reset-HPOVEnclosureDevice](reset-hpovenclosuredevice.md)
* [Set-HPOVEnclosure](set-hpovenclosure.md)
* [Set-HPOVEnclosureActiveFLM](set-hpovenclosureactiveflm.md)
* [Set-HPOVEnclosureGroup](set-hpovenclosuregroup.md)
* [Update-HPOVEnclosure](update-hpovenclosure.md)
