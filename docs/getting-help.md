# Getting Help

## Can I get general help?

Are you running into a road block? Have an issue with unexpected behavior? Feel free to open a [new issue](https://github.com/HewlettPackard/POSH-HPEOneView/issues/new/choose) on the tracker.

All Cmdlets support the `-Verbose` common parameter, and will display output relative to the operation of the Cmdlet.  The [`Get-OVCommandTrace`](https://hpe-docs.gitbook.io/posh-hpeoneview/cmdlets/v6.60/library/get-ovcommandtrace) will help capture one or more Cmdlet call output, including verbose.  If you intend to open a new issue on the project tracker, please use [`Get-OVCommandTrace`](https://hpe-docs.gitbook.io/posh-hpeoneview/cmdlets/v6.60/library/get-ovcommandtrace) so you can attach it.  Do know that the verbose output may contain personally identifiable information \(PII\) that you may wish to change or omit.

For instance, the following output snippet contains information that might be sensitive to your corporate security policies:

```powershell
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
VERBOSE: [GET-OVNETWORK] Bound PS Parameters:
VERBOSE: [GET-OVNETWORK] Called from: Get-OVCommandTrace
VERBOSE: [GET-OVNETWORK] -Type Parameter wasn't provided. Specifying all Network Resource Types.
VERBOSE: [GET-OVNETWORK] Verify auth
VERBOSE: [TEST-OVAUTH] Caller: Get-OVNetwork
VERBOSE: [TEST-OVAUTH] Verify Auth for appliance.labdomain.local
VERBOSE: [TEST-OVAUTH] $Appliance is [HPOneView.Appliance.Connection]
VERBOSE: [TEST-OVAUTH] Received HPOneView.Appliance.Connection Object:
ConnectionID Name                      UserName      AuthLoginDomain Default
------------ ----                      --------      --------------- -------
1            appliance.labdomain.local Administrator LOCAL           True
VERBOSE: [GET-OVNETWORK] Processing 'appliance.labdomain.local' Appliance (of 1)
VERBOSE: [GET-OVNETWORK] Processing AllResourcesInScope.
VERBOSE: [GET-OVNETWORK] Scope(s) AllResources is set to 'AllResources'.  Will not add scope to URI query parameter.
{...}
VERBOSE: [GET-OVNETWORK] Done. 30 network resource(s) found.
VERBOSE: --------------------------------------------------------------------------------
**********************
Windows PowerShell transcript end
End time: 20191028114046
**********************
```

{% hint style="warning" %}
Please remove or replace the PII data from the log file before submitting an issue to the project Issues tracker.
{% endhint %}

You have a general question about the library? For general questions, or need to discuss a topic that doesn't need to be tracked in the issue tracker, please join the new GitHub Discussions for the project: [![Join the discussion][github-chat-badge-url]][github-chat-link]

Still available, but not actively maintained Gitter.im chat room: [![Join the chat][gitter-chat-badge-url]][gitter-chat-link]

##

<!-- markdown variables links -->
[github-chat-badge-url]: https://img.shields.io/badge/chat-on%20github%20discussions-green?style=flat&logo=gitter
[github-chat-link]: https://github.com/HewlettPackard/POSH-HPEOneView/discussions
[gitter-chat-badge-url]: https://camo.githubusercontent.com/fd5dd4417d3bc721ada1bf5564e66e74de3cf909/68747470733a2f2f696d672e736869656c64732e696f2f7374617469632f76312e7376673f6c6162656c3d63686174266d6573736167653d6f6e25323067697474657226636f6c6f723d696e666f726d6174696f6e616c266c6f676f3d676974746572
[gitter-chat-link]: https://gitter.im/POSH-HPOneView/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
