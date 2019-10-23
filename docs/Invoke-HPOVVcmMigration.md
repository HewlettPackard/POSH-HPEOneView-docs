<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Invoke-HPOVVcmMigration
<p>
Migrate Virtual Connect Manager to HPE OneView.

### SYNTAX
<p>
<pre><code>Invoke-HPOVVcmMigration [-OAIPAddress] &lt;String&gt; [-LicensingIntent] &lt;String&gt;[ [-OAUserName] &lt;String&gt;][ [-OAPassword] &lt;String&gt;][ [-OACredential] &lt;PSCredential&gt;][ [-VCMUserName] &lt;String&gt;][ [-VCMPassword] &lt;String&gt;][ [-VCMCredential] &lt;PSCredential&gt;] [-EnclosureGroup] &lt;Object&gt; [-LogicalInterconnectGroup] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Invoke-HPOVVcmMigration [-OAIPAddress] &lt;String&gt; [-LicensingIntent] &lt;String&gt; [-VCEMCMS] &lt;String&gt;[ [-OAUserName] &lt;String&gt;][ [-OAPassword] &lt;String&gt;][ [-OACredential] &lt;PSCredential&gt;][ [-VCMUserName] &lt;String&gt;][ [-VCMPassword] &lt;String&gt;][ [-VCMCredential] &lt;PSCredential&gt;] [-EnclosureGroup] &lt;Object&gt; [-LogicalInterconnectGroup] &lt;Object&gt;[ [-VCEMUser] &lt;String&gt;][ [-VCEMPassword] &lt;String&gt;][ [-VCEMCredential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Invoke-HPOVVcmMigration [-OAIPAddress] &lt;String&gt; [-LicensingIntent] &lt;String&gt;[ [-Report] &lt;SwitchParameter&gt;][ [-OAUserName] &lt;String&gt;][ [-OAPassword] &lt;String&gt;][ [-OACredential] &lt;PSCredential&gt;][ [-VCMUserName] &lt;String&gt;][ [-VCMPassword] &lt;String&gt;][ [-VCMCredential] &lt;PSCredential&gt;] [-EnclosureGroup] &lt;Object&gt; [-LogicalInterconnectGroup] &lt;Object&gt;[ [-Path] &lt;String&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This function is used to migrate an existing Virtual Connect Manager configuration to HPE OneView.  If an enclosure was added to an HPE OneView appliance as Monitor-Only, then you must first remove the enclosure from the appliance, and then use this cmdlet to migrate the enclosure.
    
Using the -VCEMCMS, -VCEMUser and -VCEMPassword parameters, the targeted Virtual Connect Domain can be removed from a Virual Connect Enterprise Manager Domain Group first before initiating the VC Migration tool within the HPE OneView appliance.
    
The required VCEM 7.3/7.4 Patch is available here:  ftp://ftp.hp.com/pub/softlib2/software1/pubsw-generic/p270829882/v106568.
    
VCEM 7.4.1 or greater users do not require the patch to be installed, as the API is built into 7.4.1 or greater.
    
It is important to also have a Virtual Connect Domain Backup prior to migration.  You may also want to gather the output from the "show config -includepoolinfo" VCM CLI command to review or verify resources were migrated successfully.
    
Please read "Chapter 9 Planning for enclosure migration from VCM into HPE OneView" in the HPE OneView 1.20 User Guide for more information about migration and other planning resources.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>NoWait</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Aliases [-eg]
OPTIONAL. The Name, URI or Object of an existing Enclosure Group.  If the Enclosure Group Name does not exist, a new resource with the String value provided will be created.  If omitted, a new Enclosure Group will be created based on the Serial Number of the Enclosure (Example: "EG_USE1234567A").

<table><tbody><tr><td>Aliases</td><td>eg</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LicensingIntent &lt;String&gt;<p>
Aliases [-license, -l]
REQUIRED. Specifies whether the intent is to apply either OneView or OneView w/o iLO licenses to the servers in the enclosure being imported.

Accepted values are
                    
	* OneView
	* OneViewNoiLO

<table><tbody><tr><td>Aliases</td><td>license, l</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnectGroup &lt;Object&gt;<p>
Aliases [-lig]
OPTIONAL. The Name, URI or Object of an existing Logical Interconnect Group.  If the Logical Interconnect Group Name does not exist, a new resource with the String value provided will be created.  If omitted, a new Logical Interconnect Group will be created based on the Serial Number of the Enclosure (Example: "LIG_USE1234567A").

<table><tbody><tr><td>Aliases</td><td>lig</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OACredential &lt;PSCredential&gt;<p>
PSCredential object containing the username and password details for the c-Class Onboard Administrator.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAIPAddress &lt;String&gt;<p>
Aliases [-oaip]
REQUIRED. IP address or FQDN of the Primary Onboard Administrator in the target enclosure.

<table><tbody><tr><td>Aliases</td><td>oip</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAPassword &lt;String&gt;<p>
Aliases [-op]
Parameter is being deprecated. Please transition to using -OACredential. Password for the Administrator account of the target OA.

<table><tbody><tr><td>Aliases</td><td>op</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAUserName &lt;String&gt;<p>
Aliases [-ou]
Parameter is being deprecated. Please transition to using -OACredential. Administrator account of the target OA.

<table><tbody><tr><td>Aliases</td><td>ou</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;String&gt;<p>
The directory path in which to save the report output to a file.

	* Filename will be created in the format: [path]\{enclsoureName}_{date}.report

<table><tbody><tr><td>Aliases</td><td>Export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
OPTIONAL. Execute the migration report only. Do not execute the migration process.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMCMS &lt;String&gt;<p>
The IP Address or FQDN of the VCEM host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMCredential &lt;PSCredential&gt;<p>
PSCredential object containing the username and password details for the Virtual Connect Enterprise Manager associated with the Virtual Connect Manager Domain.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMPassword &lt;String&gt;<p>
Parameter is being deprecated. Please transition to using -VCEMCredential

Administrator level account password on the VCEM host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMUser &lt;String&gt;<p>
Parameter is being deprecated. Please transition to using -VCEMCredential

Administrator level account name available on the VCEM host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMCredential &lt;PSCredential&gt;<p>
PSCredential object containing the username and password details for the c-Class Virtual Connect Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMPassword &lt;String&gt;<p>
Aliases [-vp]
Parameter is being deprecated. Please transition to using -VCMCredential. Password for the Administrator account of Virtual Connect Manager.

<table><tbody><tr><td>Aliases</td><td>vp</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMUserName &lt;String&gt;<p>
Aliases [-vu]
Parameter is being deprecated. Please transition to using -VCMCredential.
Username for the administrator account for Virtual Connect Manager.

<table><tbody><tr><td>Aliases</td><td>vu</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Valid Enclosure Group resource the appliance will migrate the source enclosure into



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView -Report</pre>
Generate Virtual Connect Manager configuration migration report for the specified enclosure.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView
</pre>
Migration will occur and create a new Enclosure Group and new Logical Interconnect Group based on the enclosure serial number.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" $EnclosureGroup = Get-HPOVEnclosureGroup -Name EnclosureGroup1 -ErrorAction Stop Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView -EnclosureGroup $EnclosureGroup</pre>
Migration will occur and import the target enclosure into an existing Enclosure Group named "EnclosureGroup1".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OAUserName Administrator -OAPassword hpinvent -VCMUserName Administrator -VCMPassword hpinvent -licensingIntent OneView -Report -Path "c:\VCM-MigrationReports"
". 
</pre>
Migration will not be attempted.  The migration report will be executed and the result saved to the file "c:\VCM-MigrationReports\{enclosureName}_{date}.report".


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" $VCEMCreds = Get-Credential -Username Domain\Adminisrator -Message "Password" $EnclosureGroup = Get-HPOVEnclosureGroup -Name EnclosureGroup1 -ErrorAction Stop Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -VCEMCMS vcemcms.domain.com -VCEMCredential $VCEMCreds -LicensingIntent OneView</pre>
Perform a migration of a VCEM managed enclosure to HPE OneView.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Invoke-HPOVVcmMigration
<p>
Migrate Virtual Connect Manager to HPE OneView.

### SYNTAX
<p>
<pre><code>Invoke-HPOVVcmMigration [-OAIPAddress] &lt;String&gt; [-LicensingIntent] &lt;String&gt;[ [-OAUserName] &lt;String&gt;][ [-OAPassword] &lt;String&gt;][ [-OACredential] &lt;PSCredential&gt;][ [-VCMUserName] &lt;String&gt;][ [-VCMPassword] &lt;String&gt;][ [-VCMCredential] &lt;PSCredential&gt;] [-EnclosureGroup] &lt;Object&gt; [-LogicalInterconnectGroup] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Invoke-HPOVVcmMigration [-OAIPAddress] &lt;String&gt; [-LicensingIntent] &lt;String&gt; [-VCEMCMS] &lt;String&gt;[ [-OAUserName] &lt;String&gt;][ [-OAPassword] &lt;String&gt;][ [-OACredential] &lt;PSCredential&gt;][ [-VCMUserName] &lt;String&gt;][ [-VCMPassword] &lt;String&gt;][ [-VCMCredential] &lt;PSCredential&gt;] [-EnclosureGroup] &lt;Object&gt; [-LogicalInterconnectGroup] &lt;Object&gt;[ [-VCEMUser] &lt;String&gt;][ [-VCEMPassword] &lt;String&gt;][ [-VCEMCredential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Invoke-HPOVVcmMigration [-OAIPAddress] &lt;String&gt; [-LicensingIntent] &lt;String&gt;[ [-Report] &lt;SwitchParameter&gt;][ [-OAUserName] &lt;String&gt;][ [-OAPassword] &lt;String&gt;][ [-OACredential] &lt;PSCredential&gt;][ [-VCMUserName] &lt;String&gt;][ [-VCMPassword] &lt;String&gt;][ [-VCMCredential] &lt;PSCredential&gt;] [-EnclosureGroup] &lt;Object&gt; [-LogicalInterconnectGroup] &lt;Object&gt;[ [-Path] &lt;String&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This function is used to migrate an existing Virtual Connect Manager configuration to HPE OneView.  If an enclosure was added to an HPE OneView appliance as Monitor-Only, then you must first remove the enclosure from the appliance, and then use this cmdlet to migrate the enclosure.
    
Using the -VCEMCMS, -VCEMUser and -VCEMPassword parameters, the targeted Virtual Connect Domain can be removed from a Virual Connect Enterprise Manager Domain Group first before initiating the VC Migration tool within the HPE OneView appliance.
    
The required VCEM 7.3/7.4 Patch is available here:  ftp://ftp.hp.com/pub/softlib2/software1/pubsw-generic/p270829882/v106568.
    
VCEM 7.4.1 or greater users do not require the patch to be installed, as the API is built into 7.4.1 or greater.
    
It is important to also have a Virtual Connect Domain Backup prior to migration.  You may also want to gather the output from the "show config -includepoolinfo" VCM CLI command to review or verify resources were migrated successfully.
    
Please read "Chapter 9 Planning for enclosure migration from VCM into HPE OneView" in the HPE OneView 1.20 User Guide for more information about migration and other planning resources.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>NoWait</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Aliases [-eg]
OPTIONAL. The Name, URI or Object of an existing Enclosure Group.  If the Enclosure Group Name does not exist, a new resource with the String value provided will be created.  If omitted, a new Enclosure Group will be created based on the Serial Number of the Enclosure (Example: "EG_USE1234567A").

<table><tbody><tr><td>Aliases</td><td>eg</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LicensingIntent &lt;String&gt;<p>
Aliases [-license, -l]
REQUIRED. Specifies whether the intent is to apply either OneView or OneView w/o iLO licenses to the servers in the enclosure being imported.

Accepted values are
                    
	* OneView
	* OneViewNoiLO

<table><tbody><tr><td>Aliases</td><td>license, l</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnectGroup &lt;Object&gt;<p>
Aliases [-lig]
OPTIONAL. The Name, URI or Object of an existing Logical Interconnect Group.  If the Logical Interconnect Group Name does not exist, a new resource with the String value provided will be created.  If omitted, a new Logical Interconnect Group will be created based on the Serial Number of the Enclosure (Example: "LIG_USE1234567A").

<table><tbody><tr><td>Aliases</td><td>lig</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OACredential &lt;PSCredential&gt;<p>
PSCredential object containing the username and password details for the c-Class Onboard Administrator.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAIPAddress &lt;String&gt;<p>
Aliases [-oaip]
REQUIRED. IP address or FQDN of the Primary Onboard Administrator in the target enclosure.

<table><tbody><tr><td>Aliases</td><td>oip</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAPassword &lt;String&gt;<p>
Aliases [-op]
Parameter is being deprecated. Please transition to using -OACredential. Password for the Administrator account of the target OA.

<table><tbody><tr><td>Aliases</td><td>op</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAUserName &lt;String&gt;<p>
Aliases [-ou]
Parameter is being deprecated. Please transition to using -OACredential. Administrator account of the target OA.

<table><tbody><tr><td>Aliases</td><td>ou</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;String&gt;<p>
The directory path in which to save the report output to a file.

	* Filename will be created in the format: [path]\{enclsoureName}_{date}.report

<table><tbody><tr><td>Aliases</td><td>Export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
OPTIONAL. Execute the migration report only. Do not execute the migration process.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMCMS &lt;String&gt;<p>
The IP Address or FQDN of the VCEM host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMCredential &lt;PSCredential&gt;<p>
PSCredential object containing the username and password details for the Virtual Connect Enterprise Manager associated with the Virtual Connect Manager Domain.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMPassword &lt;String&gt;<p>
Parameter is being deprecated. Please transition to using -VCEMCredential

Administrator level account password on the VCEM host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMUser &lt;String&gt;<p>
Parameter is being deprecated. Please transition to using -VCEMCredential

Administrator level account name available on the VCEM host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMCredential &lt;PSCredential&gt;<p>
PSCredential object containing the username and password details for the c-Class Virtual Connect Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMPassword &lt;String&gt;<p>
Aliases [-vp]
Parameter is being deprecated. Please transition to using -VCMCredential. Password for the Administrator account of Virtual Connect Manager.

<table><tbody><tr><td>Aliases</td><td>vp</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMUserName &lt;String&gt;<p>
Aliases [-vu]
Parameter is being deprecated. Please transition to using -VCMCredential.
Username for the administrator account for Virtual Connect Manager.

<table><tbody><tr><td>Aliases</td><td>vu</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Valid Enclosure Group resource the appliance will migrate the source enclosure into



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView -Report</pre>
Generate Virtual Connect Manager configuration migration report for the specified enclosure.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView
</pre>
Migration will occur and create a new Enclosure Group and new Logical Interconnect Group based on the enclosure serial number.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" $EnclosureGroup = Get-HPOVEnclosureGroup -Name EnclosureGroup1 -ErrorAction Stop Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView -EnclosureGroup $EnclosureGroup</pre>
Migration will occur and import the target enclosure into an existing Enclosure Group named "EnclosureGroup1".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OAUserName Administrator -OAPassword hpinvent -VCMUserName Administrator -VCMPassword hpinvent -licensingIntent OneView -Report -Path "c:\VCM-MigrationReports"
". 
</pre>
Migration will not be attempted.  The migration report will be executed and the result saved to the file "c:\VCM-MigrationReports\{enclosureName}_{date}.report".


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" $VCEMCreds = Get-Credential -Username Domain\Adminisrator -Message "Password" $EnclosureGroup = Get-HPOVEnclosureGroup -Name EnclosureGroup1 -ErrorAction Stop Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -VCEMCMS vcemcms.domain.com -VCEMCredential $VCEMCreds -LicensingIntent OneView</pre>
Perform a migration of a VCEM managed enclosure to HPE OneView.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Invoke-HPOVVcmMigration
<p>
Migrate Virtual Connect Manager to HPE OneView.

### SYNTAX
<p>
<pre><code>Invoke-HPOVVcmMigration [-OAIPAddress] &lt;String&gt; [-LicensingIntent] &lt;String&gt;[ [-OAUserName] &lt;String&gt;][ [-OAPassword] &lt;String&gt;][ [-OACredential] &lt;PSCredential&gt;][ [-VCMUserName] &lt;String&gt;][ [-VCMPassword] &lt;String&gt;][ [-VCMCredential] &lt;PSCredential&gt;] [-EnclosureGroup] &lt;Object&gt; [-LogicalInterconnectGroup] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Invoke-HPOVVcmMigration [-OAIPAddress] &lt;String&gt; [-LicensingIntent] &lt;String&gt; [-VCEMCMS] &lt;String&gt;[ [-OAUserName] &lt;String&gt;][ [-OAPassword] &lt;String&gt;][ [-OACredential] &lt;PSCredential&gt;][ [-VCMUserName] &lt;String&gt;][ [-VCMPassword] &lt;String&gt;][ [-VCMCredential] &lt;PSCredential&gt;] [-EnclosureGroup] &lt;Object&gt; [-LogicalInterconnectGroup] &lt;Object&gt;[ [-VCEMUser] &lt;String&gt;][ [-VCEMPassword] &lt;String&gt;][ [-VCEMCredential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Invoke-HPOVVcmMigration [-OAIPAddress] &lt;String&gt; [-LicensingIntent] &lt;String&gt;[ [-Report] &lt;SwitchParameter&gt;][ [-OAUserName] &lt;String&gt;][ [-OAPassword] &lt;String&gt;][ [-OACredential] &lt;PSCredential&gt;][ [-VCMUserName] &lt;String&gt;][ [-VCMPassword] &lt;String&gt;][ [-VCMCredential] &lt;PSCredential&gt;] [-EnclosureGroup] &lt;Object&gt; [-LogicalInterconnectGroup] &lt;Object&gt;[ [-Path] &lt;String&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This function is used to migrate an existing Virtual Connect Manager configuration to HPE OneView.  If an enclosure was added to an HPE OneView appliance as Monitor-Only, then you must first remove the enclosure from the appliance, and then use this cmdlet to migrate the enclosure.
    
Using the -VCEMCMS, -VCEMUser and -VCEMPassword parameters, the targeted Virtual Connect Domain can be removed from a Virual Connect Enterprise Manager Domain Group first before initiating the VC Migration tool within the HPE OneView appliance.
    
The required VCEM 7.3/7.4 Patch is available here:  ftp://ftp.hp.com/pub/softlib2/software1/pubsw-generic/p270829882/v106568.
    
VCEM 7.4.1 or greater users do not require the patch to be installed, as the API is built into 7.4.1 or greater.
    
It is important to also have a Virtual Connect Domain Backup prior to migration.  You may also want to gather the output from the "show config -includepoolinfo" VCM CLI command to review or verify resources were migrated successfully.
    
Please read "Chapter 9 Planning for enclosure migration from VCM into HPE OneView" in the HPE OneView 1.20 User Guide for more information about migration and other planning resources.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>NoWait</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Aliases [-eg]
OPTIONAL. The Name, URI or Object of an existing Enclosure Group.  If the Enclosure Group Name does not exist, a new resource with the String value provided will be created.  If omitted, a new Enclosure Group will be created based on the Serial Number of the Enclosure (Example: "EG_USE1234567A").

<table><tbody><tr><td>Aliases</td><td>eg</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LicensingIntent &lt;String&gt;<p>
Aliases [-license, -l]
REQUIRED. Specifies whether the intent is to apply either OneView or OneView w/o iLO licenses to the servers in the enclosure being imported.

Accepted values are
                    
	* OneView
	* OneViewNoiLO

<table><tbody><tr><td>Aliases</td><td>license, l</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnectGroup &lt;Object&gt;<p>
Aliases [-lig]
OPTIONAL. The Name, URI or Object of an existing Logical Interconnect Group.  If the Logical Interconnect Group Name does not exist, a new resource with the String value provided will be created.  If omitted, a new Logical Interconnect Group will be created based on the Serial Number of the Enclosure (Example: "LIG_USE1234567A").

<table><tbody><tr><td>Aliases</td><td>lig</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OACredential &lt;PSCredential&gt;<p>
PSCredential object containing the username and password details for the c-Class Onboard Administrator.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAIPAddress &lt;String&gt;<p>
Aliases [-oaip]
REQUIRED. IP address or FQDN of the Primary Onboard Administrator in the target enclosure.

<table><tbody><tr><td>Aliases</td><td>oip</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAPassword &lt;String&gt;<p>
Aliases [-op]
Parameter is being deprecated. Please transition to using -OACredential. Password for the Administrator account of the target OA.

<table><tbody><tr><td>Aliases</td><td>op</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OAUserName &lt;String&gt;<p>
Aliases [-ou]
Parameter is being deprecated. Please transition to using -OACredential. Administrator account of the target OA.

<table><tbody><tr><td>Aliases</td><td>ou</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;String&gt;<p>
The directory path in which to save the report output to a file.

	* Filename will be created in the format: [path]\{enclsoureName}_{date}.report

<table><tbody><tr><td>Aliases</td><td>Export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
OPTIONAL. Execute the migration report only. Do not execute the migration process.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMCMS &lt;String&gt;<p>
The IP Address or FQDN of the VCEM host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMCredential &lt;PSCredential&gt;<p>
PSCredential object containing the username and password details for the Virtual Connect Enterprise Manager associated with the Virtual Connect Manager Domain.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMPassword &lt;String&gt;<p>
Parameter is being deprecated. Please transition to using -VCEMCredential

Administrator level account password on the VCEM host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCEMUser &lt;String&gt;<p>
Parameter is being deprecated. Please transition to using -VCEMCredential

Administrator level account name available on the VCEM host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMCredential &lt;PSCredential&gt;<p>
PSCredential object containing the username and password details for the c-Class Virtual Connect Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMPassword &lt;String&gt;<p>
Aliases [-vp]
Parameter is being deprecated. Please transition to using -VCMCredential. Password for the Administrator account of Virtual Connect Manager.

<table><tbody><tr><td>Aliases</td><td>vp</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMUserName &lt;String&gt;<p>
Aliases [-vu]
Parameter is being deprecated. Please transition to using -VCMCredential.
Username for the administrator account for Virtual Connect Manager.

<table><tbody><tr><td>Aliases</td><td>vu</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Valid Enclosure Group resource the appliance will migrate the source enclosure into



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView -Report</pre>
Generate Virtual Connect Manager configuration migration report for the specified enclosure.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView
</pre>
Migration will occur and create a new Enclosure Group and new Logical Interconnect Group based on the enclosure serial number.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" $EnclosureGroup = Get-HPOVEnclosureGroup -Name EnclosureGroup1 -ErrorAction Stop Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -LicensingIntent OneView -EnclosureGroup $EnclosureGroup</pre>
Migration will occur and import the target enclosure into an existing Enclosure Group named "EnclosureGroup1".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OAUserName Administrator -OAPassword hpinvent -VCMUserName Administrator -VCMPassword hpinvent -licensingIntent OneView -Report -Path "c:\VCM-MigrationReports"
". 
</pre>
Migration will not be attempted.  The migration report will be executed and the result saved to the file "c:\VCM-MigrationReports\{enclosureName}_{date}.report".


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$OACreds = Get-Credential -Username Administrator -Message "Password" $VCMCreds = Get-Credential -Username Administrator -Message "Password" $VCEMCreds = Get-Credential -Username Domain\Adminisrator -Message "Password" $EnclosureGroup = Get-HPOVEnclosureGroup -Name EnclosureGroup1 -ErrorAction Stop Invoke-HPOVVcmMigration -OAIPAddress 192.168.19.40 -OACredential $OACreds -VCMCredential $VCMCreds -VCEMCMS vcemcms.domain.com -VCEMCredential $VCEMCreds -LicensingIntent OneView</pre>
Perform a migration of a VCEM managed enclosure to HPE OneView.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
