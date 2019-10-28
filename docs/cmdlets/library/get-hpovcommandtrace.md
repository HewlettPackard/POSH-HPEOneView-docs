---
description: Start a library trace for Cmdlet troubleshooting.
---

# Get-HPOVCommandTrace

### HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVCommandTrace [-ScriptBlock] <ScriptBlock> [-Location] <String> [<CommonParameters>]
```

### Description

This Cmdlet will assist the user in setting up the PowerShell environment to generate and capture Verbose output from HPOV Library Cmdlets. Once this Cmdlet has been executed, the prior HPOV Cmdlets can be executed, without the need of using the `-Verbose` switch.

Cmdlet output will be captured using the built-in Microsoft PowerShell Start-Transcript provider. A transcript trace file will be saved in either the current working directory, or specified using the `-Location` parameter.

Please know that this Cmdlet is currently not supported in the Windows PowerShell ISE, unless using PowerShell v5 or newer.

Do know that the verbose output will contain potentially personally identifiable information \(PII\) that you may wish to change.  For instance, the following output snippet contains information that might be sensitive to your corporate security policies:

```text
**********************
Windows PowerShell transcript start
Start time: 20191028114038
Username: LAB\Username
RunAs User: LAB\Username
Configuration Name: 
Machine: DESKTOP (Microsoft Windows NT 10.0.18362.0)
Host Application: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
Process ID: 8332
PSVersion: 5.1.18362.145
PSEdition: Desktop
PSCompatibleVersions: 1.0, 2.0, 3.0, 4.0, 5.0, 5.1.18362.145
BuildVersion: 10.0.18362.145
CLRVersion: 4.0.30319.42000
WSManStackVersion: 3.0
PSRemotingProtocolVersion: 2.3
SerializationVersion: 1.1.0.1
**********************
VERBOSE: 
hpov5.doctors-lab.local             LibraryVersion Path                                                
-----------------------             -------------- ----                                                
ApplianceVersion: 5.00.00.398184.00 5.0.2152.1665  C:\Users\Username\Documents\WindowsPowerShell\Modules\HPOneView.500
VERBOSE: [GET-HPOVNETWORK] Bound PS Parameters:
VERBOSE: [GET-HPOVNETWORK] Called from: Get-HPOVCommandTrace
VERBOSE: [GET-HPOVNETWORK] -Type Parameter wasn't provided. Specifying all Network Resource Types.
VERBOSE: [GET-HPOVNETWORK] Verify auth
VERBOSE: [TEST-HPOVAUTH] Caller: Get-HPOVNetwork
VERBOSE: [TEST-HPOVAUTH] Verify Auth for hpov5.doctors-lab.local
VERBOSE: [TEST-HPOVAUTH] $Appliance is [HPOneView.Appliance.Connection]
VERBOSE: [TEST-HPOVAUTH] Received HPOneView.Appliance.Connection Object: 
ConnectionID Name                      UserName      AuthLoginDomain Default
------------ ----                      --------      --------------- -------
1            appliance.labdomain.local Administrator LOCAL           True
VERBOSE: [GET-HPOVNETWORK] Processing 'appliance.labdomain.local' Appliance (of 1)
VERBOSE: [GET-HPOVNETWORK] Processing AllResourcesInScope.
VERBOSE: [GET-HPOVNETWORK] Scope(s) AllResources is set to 'AllResources'.  Will not add scope to URI query parameter.
{...}
VERBOSE: [GET-HPOVNETWORK] Done. 30 network resource(s) found.
VERBOSE: --------------------------------------------------------------------------------
**********************
Windows PowerShell transcript end
End time: 20191028114046
**********************
```

{% hint style="warning" %}
Please remove or replace the PII data from the log file before submitting an issue to the project Issues tracker.
{% endhint %}

### Parameters

#### -Location &lt;String&gt; 

Specify the directory where the output file will be created. A file with the following format will be created:

```text
"{Date}_HPOV_transcript.log", where date is derived from `Get-Date -UFormat %y%m%d%H%M`
```

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | 1 |
| Default value | \(pwd\).path |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ScriptBlock &lt;ScriptBlock&gt; 

The command within a `ScriptBlock` to execute. The Cmdlet will add the `-Verbose` switch end of the command.

| Aliases | Command |
| :--- | :--- |
| Required? | True |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.Management.Automation.ScriptBlock**_

ScriptBlock of the command or commands to generate verbose output for.

### Return Values

_**System.IO.FileInfo**_

FileInfo object where the "{Date}\_HPOV\_transcript.log" file is generated.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVCommandTrace -ScriptBlock { Get-HPOVNetwork } -Location C:\Temp
```

Start a new library trace, which will create a file in the `C:\Temp` directory. 

### Related Links 

* None

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVCommandTrace [-ScriptBlock] <ScriptBlock> [-Location] <String> [<CommonParameters>]
```

### Description

This Cmdlet will assist the user in setting up the PowerShell environment to generate and capture Verbose output from HPOV Library Cmdlets. Once this Cmdlet has been executed, the prior HPOV Cmdlets can be executed, without the need of using the `-Verbose` switch.

Cmdlet output will be captured using the built-in Microsoft PowerShell Start-Transcript provider. A transcript trace file will be saved in either the current working directory, or specified using the `-Location` parameter.

Please know that this Cmdlet is currently not supported in the Windows PowerShell ISE, unless using PowerShell v5 or newer.

Do know that the verbose output will contain potentially personally identifiable information \(PII\) that you may wish to change.  For instance, the following output snippet contains information that might be sensitive to your corporate security policies:

```text
**********************
Windows PowerShell transcript start
Start time: 20191028114038
Username: LAB\Username
RunAs User: LAB\Username
Configuration Name: 
Machine: DESKTOP (Microsoft Windows NT 10.0.18362.0)
Host Application: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
Process ID: 8332
PSVersion: 5.1.18362.145
PSEdition: Desktop
PSCompatibleVersions: 1.0, 2.0, 3.0, 4.0, 5.0, 5.1.18362.145
BuildVersion: 10.0.18362.145
CLRVersion: 4.0.30319.42000
WSManStackVersion: 3.0
PSRemotingProtocolVersion: 2.3
SerializationVersion: 1.1.0.1
**********************
VERBOSE: 
hpov5.doctors-lab.local             LibraryVersion Path                                                
-----------------------             -------------- ----                                                
ApplianceVersion: 5.00.00.398184.00 5.0.2152.1665  C:\Users\Username\Documents\WindowsPowerShell\Modules\HPOneView.500
VERBOSE: [GET-HPOVNETWORK] Bound PS Parameters:
VERBOSE: [GET-HPOVNETWORK] Called from: Get-HPOVCommandTrace
VERBOSE: [GET-HPOVNETWORK] -Type Parameter wasn't provided. Specifying all Network Resource Types.
VERBOSE: [GET-HPOVNETWORK] Verify auth
VERBOSE: [TEST-HPOVAUTH] Caller: Get-HPOVNetwork
VERBOSE: [TEST-HPOVAUTH] Verify Auth for hpov5.doctors-lab.local
VERBOSE: [TEST-HPOVAUTH] $Appliance is [HPOneView.Appliance.Connection]
VERBOSE: [TEST-HPOVAUTH] Received HPOneView.Appliance.Connection Object: 
ConnectionID Name                      UserName      AuthLoginDomain Default
------------ ----                      --------      --------------- -------
1            appliance.labdomain.local Administrator LOCAL           True
VERBOSE: [GET-HPOVNETWORK] Processing 'appliance.labdomain.local' Appliance (of 1)
VERBOSE: [GET-HPOVNETWORK] Processing AllResourcesInScope.
VERBOSE: [GET-HPOVNETWORK] Scope(s) AllResources is set to 'AllResources'.  Will not add scope to URI query parameter.
{...}
VERBOSE: [GET-HPOVNETWORK] Done. 30 network resource(s) found.
VERBOSE: --------------------------------------------------------------------------------
**********************
Windows PowerShell transcript end
End time: 20191028114046
**********************
```

{% hint style="warning" %}
Please remove or replace the PII data from the log file before submitting an issue to the project Issues tracker.
{% endhint %}

### Parameters

#### -Location &lt;String&gt; 

Specify the directory where the output file will be created. A file with the following format will be created:

```text
"{Date}_HPOV_transcript.log", where date is derived from `Get-Date -UFormat %y%m%d%H%M`
```

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | 1 |
| Default value | \(pwd\).path |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ScriptBlock &lt;ScriptBlock&gt; 

The command within a `ScriptBlock` to execute. The Cmdlet will add the `-Verbose` switch end of the command.

| Aliases | Command |
| :--- | :--- |
| Required? | True |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.Management.Automation.ScriptBlock**_

ScriptBlock of the command or commands to generate verbose output for.

### Return Values

_**System.IO.FileInfo**_

FileInfo object where the "{Date}\_HPOV\_transcript.log" file is generated.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVCommandTrace -ScriptBlock { Get-HPOVNetwork } -Location C:\Temp
```

Start a new library trace, which will create a file in the `C:\Temp` directory. 

### Related Links

* None

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVCommandTrace [-ScriptBlock] <ScriptBlock> [-Location] <String> [<CommonParameters>]
```

### Description

This Cmdlet will assist the user in setting up the PowerShell environment to generate and capture Verbose output from HPOV Library Cmdlets. Once this Cmdlet has been executed, the prior HPOV Cmdlets can be executed, without the need of using the `-Verbose` switch.

Cmdlet output will be captured using the built-in Microsoft PowerShell Start-Transcript provider. A transcript trace file will be saved in either the current working directory, or specified using the `-Location` parameter.

Please know that this Cmdlet is currently not supported in the Windows PowerShell ISE, unless using PowerShell v5 or newer.

Do know that the verbose output will contain potentially personally identifiable information \(PII\) that you may wish to change.  For instance, the following output snippet contains information that might be sensitive to your corporate security policies:

```text
**********************
Windows PowerShell transcript start
Start time: 20191028114038
Username: LAB\Username
RunAs User: LAB\Username
Configuration Name: 
Machine: DESKTOP (Microsoft Windows NT 10.0.18362.0)
Host Application: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
Process ID: 8332
PSVersion: 5.1.18362.145
PSEdition: Desktop
PSCompatibleVersions: 1.0, 2.0, 3.0, 4.0, 5.0, 5.1.18362.145
BuildVersion: 10.0.18362.145
CLRVersion: 4.0.30319.42000
WSManStackVersion: 3.0
PSRemotingProtocolVersion: 2.3
SerializationVersion: 1.1.0.1
**********************
VERBOSE: 
hpov5.doctors-lab.local             LibraryVersion Path                                                
-----------------------             -------------- ----                                                
ApplianceVersion: 5.00.00.398184.00 5.0.2152.1665  C:\Users\Username\Documents\WindowsPowerShell\Modules\HPOneView.500
VERBOSE: [GET-HPOVNETWORK] Bound PS Parameters:
VERBOSE: [GET-HPOVNETWORK] Called from: Get-HPOVCommandTrace
VERBOSE: [GET-HPOVNETWORK] -Type Parameter wasn't provided. Specifying all Network Resource Types.
VERBOSE: [GET-HPOVNETWORK] Verify auth
VERBOSE: [TEST-HPOVAUTH] Caller: Get-HPOVNetwork
VERBOSE: [TEST-HPOVAUTH] Verify Auth for hpov5.doctors-lab.local
VERBOSE: [TEST-HPOVAUTH] $Appliance is [HPOneView.Appliance.Connection]
VERBOSE: [TEST-HPOVAUTH] Received HPOneView.Appliance.Connection Object: 
ConnectionID Name                      UserName      AuthLoginDomain Default
------------ ----                      --------      --------------- -------
1            appliance.labdomain.local Administrator LOCAL           True
VERBOSE: [GET-HPOVNETWORK] Processing 'appliance.labdomain.local' Appliance (of 1)
VERBOSE: [GET-HPOVNETWORK] Processing AllResourcesInScope.
VERBOSE: [GET-HPOVNETWORK] Scope(s) AllResources is set to 'AllResources'.  Will not add scope to URI query parameter.
{...}
VERBOSE: [GET-HPOVNETWORK] Done. 30 network resource(s) found.
VERBOSE: --------------------------------------------------------------------------------
**********************
Windows PowerShell transcript end
End time: 20191028114046
**********************
```

{% hint style="warning" %}
Please remove or replace the PII data from the log file before submitting an issue to the project Issues tracker.
{% endhint %}

### Parameters

#### -Location &lt;String&gt; 

Specify the directory where the output file will be created. A file with the following format will be created:

```text
"{Date}_HPOV_transcript.log", where date is derived from `Get-Date -UFormat %y%m%d%H%M`
```

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | 1 |
| Default value | \(pwd\).path |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ScriptBlock &lt;ScriptBlock&gt; 

The command within a `ScriptBlock` to execute. The Cmdlet will add the `-Verbose` switch end of the command.

| Aliases | Command |
| :--- | :--- |
| Required? | True |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.Management.Automation.ScriptBlock**_

ScriptBlock of the command or commands to generate verbose output for.

### Return Values

_**System.IO.FileInfo**_

FileInfo object where the "{Date}\_HPOV\_transcript.log" file is generated.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVCommandTrace -ScriptBlock { Get-HPOVNetwork } -Location C:\Temp
```

Start a new library trace, which will create a file in the `C:\Temp` directory. 

### Related Links

* None

