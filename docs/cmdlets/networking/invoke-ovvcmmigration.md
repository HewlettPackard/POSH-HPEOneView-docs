---
description: Migrate Virtual Connect Manager to HPE OneView.
---

# Invoke-OVVcmMigration

## Syntax

```powershell
Invoke-OVVcmMigration
    [-OAIPAddress] <String>
    [-LicensingIntent] <String>
    [-OAUserName <String>]
    [-OAPassword <String>]
    [-OACredential <PSCredential>]
    [-VCMUserName <String>]
    [-VCMPassword <String>]
    [-VCMCredential <PSCredential>]
    [-EnclosureGroup] <Object>
    [-LogicalInterconnectGroup] <Object>
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Invoke-OVVcmMigration
    [-OAIPAddress] <String>
    [-LicensingIntent] <String>
    [-VCEMCMS] <String>
    [-OAUserName <String>]
    [-OAPassword <String>]
    [-OACredential <PSCredential>]
    [-VCMUserName <String>]
    [-VCMPassword <String>]
    [-VCMCredential <PSCredential>]
    [-EnclosureGroup] <Object>
    [-LogicalInterconnectGroup] <Object>
    [-VCEMUser <String>]
    [-VCEMPassword <String>]
    [-VCEMCredential <PSCredential>]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Invoke-OVVcmMigration
    [-OAIPAddress] <String>
    [-LicensingIntent] <String>
    [-Report]
    [-OAUserName <String>]
    [-OAPassword <String>]
    [-OACredential <PSCredential>]
    [-VCMUserName <String>]
    [-VCMPassword <String>]
    [-VCMCredential <PSCredential>]
    [-EnclosureGroup] <Object>
    [-LogicalInterconnectGroup] <Object>
    [-Path <String>]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This function is used to migrate an existing Virtual Connect Manager configuration to HPE OneView.  If an enclosure was added to an HPE OneView appliance as Monitor-Only, then you must first remove the enclosure from the appliance, and then use this Cmdlet to migrate the enclosure.
    
Using the -VCEMCMS, -VCEMUser and -VCEMPassword parameters, the targeted Virtual Connect Domain can be removed from a Virual Connect Enterprise Manager Domain Group first before initiating the VC Migration tool within the HPE OneView appliance.
    
The required VCEM 7.3/7.4 Patch is available here:  ftp://ftp.hp.com/pub/softlib2/software1/pubsw-generic/p270829882/v106568.
    
VCEM 7.4.1 or greater users do not require the patch to be installed, as the API is built into 7.4.1 or greater.
    
It is important to also have a Virtual Connect Domain Backup prior to migration.  You may also want to gather the output from the "show config -includepoolinfo" VCM CLI command to review or verify resources were migrated successfully.
    
Please read "Chapter 9 Planning for enclosure migration from VCM into HPE OneView" in the HPE OneView 1.20 User Guide for more information about migration and other planning resources.

## Examples

###  Example 1 

```powershell
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" Invoke-OVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView -Report
```

Generate Virtual Connect Manager configuration migration report for the specified enclosure.

###  Example 2 

```powershell
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" Invoke-OVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView
```

Migration will occur and create a new Enclosure Group and new Logical Interconnect Group based on the enclosure serial number.

###  Example 3 

```powershell
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" $EnclosureGroup = Get-OVEnclosureGroup -Name EnclosureGroup1 -ErrorAction Stop Invoke-OVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView -EnclosureGroup $EnclosureGroup
```

Migration will occur and import the target enclosure into an existing Enclosure Group named "EnclosureGroup1".

###  Example 4 

```powershell
Invoke-OVVcmMigration -OAIPAddress 192.168.19.40 -OAUserName Administrator -OAPassword hpinvent -VCMUserName Administrator -VCMPassword hpinvent -licensingIntent OneView -Report -Path "c:\VCM-MigrationReports"
". 
```

Migration will not be attempted.  The migration report will be executed and the result saved to the file "c:\VCM-MigrationReports\{enclosureName}_{date}.report".

###  Example 5 

```powershell
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" $VCEMCreds = Get-Credential -Username Domain\Adminisrator -Message "Password" $EnclosureGroup = Get-OVEnclosureGroup -Name EnclosureGroup1 -ErrorAction Stop Invoke-OVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -VCEMCMS vcemcms.domain.com -VCEMCredential $VCEMCreds -LicensingIntent OneView
```

Perform a migration of a VCEM managed enclosure to HPE OneView.

## Parameters

### -OAIPAddress &lt;String&gt;

REQUIRED. IP address or FQDN of the Primary Onboard Administrator in the target enclosure.

| Aliases | oip |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OAUserName &lt;String&gt;

Parameter is being deprecated. Please transition to using `-OACredential`. Administrator account of the target OA.

| Aliases | ou |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OAPassword &lt;String&gt;

Parameter is being deprecated. Please transition to using `-OACredential`. Password for the Administrator account of the target OA.

| Aliases | op |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VCMUserName &lt;String&gt;

Parameter is being deprecated. Please transition to using `-VCMCredential`.
Username for the administrator account for Virtual Connect Manager.

| Aliases | vu |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VCMPassword &lt;String&gt;

Parameter is being deprecated. Please transition to using `-VCMCredential`. Password for the Administrator account of Virtual Connect Manager.

| Aliases | vp |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnclosureGroup &lt;Object&gt;

OPTIONAL. The Name, URI or Object of an existing Enclosure Group.  If the Enclosure Group Name does not exist, a new resource with the String value provided will be created.  If omitted, a new Enclosure Group will be created based on the Serial Number of the Enclosure (Example: "EG_USE1234567A").

| Aliases | eg |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -LogicalInterconnectGroup &lt;Object&gt;

OPTIONAL. The Name, URI or Object of an existing Logical Interconnect Group.  If the Logical Interconnect Group Name does not exist, a new resource with the String value provided will be created.  If omitted, a new Logical Interconnect Group will be created based on the Serial Number of the Enclosure (Example: "LIG_USE1234567A").

| Aliases | lig |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LicensingIntent &lt;String&gt;

REQUIRED. Specifies whether the intent is to apply either OneView or OneView w/o iLO licenses to the servers in the enclosure being imported.

Accepted values are
                    
* OneView
* OneViewNoiLO

| Aliases | license, l |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VCEMCMS &lt;String&gt;

The IP Address or FQDN of the VCEM host.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VCEMUser &lt;String&gt;

Parameter is being deprecated. Please transition to using `-VCEMCredential`

Administrator level account name available on the VCEM host.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VCEMPassword &lt;String&gt;

Parameter is being deprecated. Please transition to using `-VCEMCredential`

Administrator level account password on the VCEM host.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | NoWait |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Report &lt;SwitchParameter&gt;

OPTIONAL. Execute the migration report only. Do not execute the migration process.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Path &lt;String&gt;

The directory path in which to save the report output to a file.

* Filename will be created in the format: [path]\{enclsoureName}_{date}.report

| Aliases | Export |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -OACredential &lt;PSCredential&gt;

PSCredential object containing the username and password details for the c-Class Onboard Administrator.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VCMCredential &lt;PSCredential&gt;

PSCredential object containing the username and password details for the c-Class Virtual Connect Manager.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VCEMCredential &lt;PSCredential&gt;

PSCredential object containing the username and password details for the Virtual Connect Enterprise Manager associated with the Virtual Connect Manager Domain.

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

=== "System.Management.Automation.PSCustomObject"
    Valid Enclosure Group resource the appliance will migrate the source enclosure into
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for monitoring the enclosure import process
    

## Related Links

