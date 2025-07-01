---
hide:
  - navigation
---

# Getting Help

## Can I get general help?

Are you running into a road block? Have an issue with unexpected behavior? Feel free to open a [new issue](https://github.com/HewlettPackard/POSH-HPEOneView/issues/new/choose) on the tracker.

All Cmdlets support the `-Verbose` common parameter, and will display output relative to the operation of the Cmdlet.  The [`Get-OVCommandTrace`](cmdlets/library/get-ovcommandtrace.md) will help capture one or more Cmdlet call output, including verbose.  If you intend to open a new issue on the project tracker, please use [`Get-OVCommandTrace`](cmdlets/library/get-ovcommandtrace.md) so you can attach it.  Do know that the verbose output may contain personally identifiable information \(PII\) that you may wish to change or omit.

For instance, the following output snippet contains information that might be sensitive to your corporate security policies:

```powershell
**********************
PowerShell transcript start
Start time: 20250613131358
Username: LAB\username
RunAs User: LAB\username
Configuration Name: 
Machine: DESKTOP (Microsoft Windows NT 10.0.22631.0)
Host Application: C:\Program Files\PowerShell\7\pwsh.dll
Process ID: 7288
PSVersion: 7.5.1
PSEdition: Core
GitCommitId: 7.5.1
OS: Microsoft Windows 10.0.22631
Platform: Win32NT
PSCompatibleVersions: 1.0, 2.0, 3.0, 4.0, 5.0, 5.1, 6.0, 7.0
PSRemotingProtocolVersion: 2.3
SerializationVersion: 1.1.0.1
WSManStackVersion: 3.0
**********************
VERBOSE: 
appliance.domain.local                LibraryVersion Path
---------------------                -------------- ----
ApplianceVersion: 10.00.00.507792.00 10.0.4265.2221 CC:\Users\Username\Documents\WindowsPowerShell\Modules\POSH-HPEOneView.1000
VERBOSE: [Get-OVNetwork] Redacting users Password from Verbose Output
VERBOSE: [Get-OVNetwork] Bound PS Parameters:
VERBOSE: [GET-OVNETWORK] Called from: Get-OVCommandTrace
VERBOSE: [GET-OVNETWORK] -Type Parameter wasn't provided. Specifying all Network Resource Types.
VERBOSE: [GET-OVNETWORK] Verify auth
VERBOSE: [TEST-OVAUTH] Caller: Get-OVNetwork
VERBOSE: [TEST-OVAUTH] Verify Auth for appliance.labdomain.local
VERBOSE: [TEST-OVAUTH] $Appliance is [HPEOneView.Appliance.Connection]
VERBOSE: [TEST-OVAUTH] Received HPEOneview.Appliance.Connection Object: 
ConnectionID Name                      UserName      AuthLoginDomain Default
------------ ----                      --------      --------------- -------
1            appliance.labdomain.local Administrator LOCAL           True
VERBOSE: [GET-OVNETWORK] Processing 'appliance.labdomain.local' Appliance (of 1)
VERBOSE: [GET-OVNETWORK] Processing AllResourcesInScope.
VERBOSE: [GET-OVNETWORK] Scope(s) AllResources is set to 'AllResources'.  Will not add scope to URI query parameter.
VERBOSE: [Get-AllIndexResources] Redacting users Password from Verbose Output
VERBOSE: [Get-AllIndexResources] Bound PS Parameters: 
Name                           Value
----                           -----
Uri                            /rest/index/resources?category=ethernet-networks&category=fc-networks&category=fcoe-networks&category=r…
ApplianceConnection            appliance.labdomain.local
VERBOSE: [GET-ALLINDEXRESOURCES] Called from: Get-OVNetwork
VERBOSE: [GET-ALLINDEXRESOURCES] Processing URI: Get-OVNetwork
VERBOSE: [SEND-OVREQUEST] BEGIN
VERBOSE: [SEND-OVREQUEST] Called from: Get-AllIndexResources
VERBOSE: [SEND-OVREQUEST] Bound PS Parameters: 
Key      Value
---      -----
uri      /rest/index/resources?category=ethernet-networks&category=fc-networks&category=fcoe-networks&category=roce-networks&sort=name…
Hostname appliance.labdomain.local
VERBOSE: [SEND-OVREQUEST] Process
VERBOSE: [SEND-OVREQUEST] Hostname value: 
ConnectionID Name                      UserName      AuthLoginDomain Default
------------ ----                      --------      --------------- -------
1            appliance.labdomain.local Administrator LOCAL           True
VERBOSE: [SEND-OVREQUEST] Processing 'appliance.labdomain.local' appliance connection request. 1 of 1
VERBOSE: [SEND-OVREQUEST] Requested URI '/rest/index/resources?category=ethernet-networks&category=fc-networks&category=fcoe-networks&category=roce-networks&sort=name:asc&query=' to 'appliance.labdomain.local'
VERBOSE: [SEND-OVREQUEST] Restclient timeout setting: 20000
VERBOSE: [SEND-OVREQUEST] Request: GET https://appliance.labdomain.local/rest/index/resources?category=ethernet-networks&category=fc-networks&category=fcoe-networks&category=roce-networks&sort=name:asc&query=
VERBOSE: [SEND-OVREQUEST] Request Header 1: User-Agent = HPEOneView.PowerShell/10.00 (Microsoft Windows NT 10.0.22631.0)
VERBOSE: [SEND-OVREQUEST] Request Header 2: Content-Type = application/json
VERBOSE: [SEND-OVREQUEST] Request Header 3: Accept = application/json, text/html, application/xhtml+xml
VERBOSE: [SEND-OVREQUEST] Request Header 4: X-API-Version = 7600
VERBOSE: [SEND-OVREQUEST] Request Header 5: accept-language = en_US
VERBOSE: [SEND-OVREQUEST] Request Header 6: accept-encoding = gzip, deflate
VERBOSE: [SEND-OVREQUEST] Request Header 7: auth = [*****REDACTED******]
VERBOSE: [SEND-OVREQUEST] Response time: 00:00:00.0667421
VERBOSE: [SEND-OVREQUEST] Response Status: 200 (OK)
VERBOSE: [SEND-OVREQUEST] Response Header 1: Date = Fri, 13 Jun 2025 19:17:21 GMT
VERBOSE: [SEND-OVREQUEST] Response Header 2: Server = Apache
VERBOSE: [SEND-OVREQUEST] Response Header 3: Cache-Control = no-cache
VERBOSE: [SEND-OVREQUEST] Response Header 4: Pragma = no-cache
VERBOSE: [SEND-OVREQUEST] Response Header 5: X-XSS-Protection = 1; mode=block
VERBOSE: [SEND-OVREQUEST] Response Header 6: X-Frame-Options = DENY
VERBOSE: [SEND-OVREQUEST] Response Header 7: X-Content-Type-Options = nosniff
VERBOSE: [SEND-OVREQUEST] Response Header 8: Strict-Transport-Security = max-age=31536000
VERBOSE: [SEND-OVREQUEST] Response Header 9: Content-Security-Policy = default-src 'self' data: 'unsafe-inline' 'unsafe-eval' https://www.google-analytics.com https://www.hpe.com; font-src 'self' https://hpefonts.s3.amazonaws.com https://fonts.gstatic.com; style-src 'self' 'unsafe-inline' https://fonts.googleapis.com; frame-src hplocons: *;
VERBOSE: [SEND-OVREQUEST] Response Header 10: Connection = close
VERBOSE: [SEND-OVREQUEST] Response Header 11: Content-Type = application/json; charset=utf-8
VERBOSE: [SEND-OVREQUEST] Response Header 12: Expires = 0
VERBOSE: [SEND-OVREQUEST] FinalResponse: {...}
VERBOSE: [SEND-OVREQUEST] Manual Pagination: False
VERBOSE: [SEND-OVREQUEST] Response members and automatic pagination
VERBOSE: [SEND-OVREQUEST] total stored '2'
VERBOSE: [SEND-OVREQUEST] nextPageURI: ''
VERBOSE: [SEND-OVREQUEST] Reached End of pagination. Building AllResults
VERBOSE: [SEND-OVREQUEST] Cleaning up HttpWebRequest
VERBOSE: [SEND-OVREQUEST] Does nextPageUri member exist: True
VERBOSE: [SEND-OVREQUEST] Is nextPageUri Null or Empty: True
VERBOSE: [SEND-OVREQUEST] Stopping Do/Until loop because nextPageUri is null/empty and have received all objects.
VERBOSE: [SEND-OVREQUEST] End
VERBOSE: [GET-ALLINDEXRESOURCES] Get full object: Fabric A
{...}
VERBOSE: [GET-ALLINDEXRESOURCES] Done.
VERBOSE: [GET-OVNETWORK] Adding 'Fabric A' to found collection
VERBOSE: [GET-OVNETWORK] Adding 'Fabric B' to found collection
VERBOSE: [GET-OVNETWORK] Adding 'Fabric A' to final collection
VERBOSE: [GET-OVNETWORK] Adding 'Fabric B' to final collection
VERBOSE: [GET-OVNETWORK] Results returned
VERBOSE: [GET-OVNETWORK] Networks Found: 2
VERBOSE: [GET-OVNETWORK] Getting Network resource Connection Template Object to add bandwidth values to network objects.
VERBOSE: [GET-OVNETWORK] Processing 'Fabric A' Network resource.
VERBOSE: [GET-OVNETWORK] Processing 'Fabric B' Network resource.
VERBOSE: [GET-OVNETWORK] Done. 2 network resource(s) found.
VERBOSE: --------------------------------------------------------------------------------
**********************
PowerShell transcript end
End time: 20250613131359
**********************
```

???+ warning
    Please remove or replace the PII data from the log file before submitting an issue to the project Issues tracker.

You have a general question about the library? For general questions, or need to discuss a topic that doesn't need to be tracked in the issue tracker, please join the new GitHub Discussions for the project: [![Join the discussion][github-chat-badge-url]][github-chat-link]

Still available, but not actively maintained Gitter.im chat room: [![Join the chat][gitter-chat-badge-url]][gitter-chat-link]

##

<!-- markdown variables links -->
[github-chat-badge-url]: https://img.shields.io/badge/chat-on%20github%20discussions-green?style=flat&logo=gitter
[github-chat-link]: https://github.com/HewlettPackard/POSH-HPEOneView/discussions
[gitter-chat-badge-url]: https://camo.githubusercontent.com/fd5dd4417d3bc721ada1bf5564e66e74de3cf909/68747470733a2f2f696d672e736869656c64732e696f2f7374617469632f76312e7376673f6c6162656c3d63686174266d6573736167653d6f6e25323067697474657226636f6c6f723d696e666f726d6174696f6e616c266c6f676f3d676974746572
[gitter-chat-link]: https://gitter.im/POSH-HPOneView/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
