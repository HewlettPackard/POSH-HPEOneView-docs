---
description: Establish connection to source appliance and retrieve a list of servers that are available to migrate.
---

# Get-OVMigratableServer

## Syntax

```powershell
Get-OVMigratableServer
    [-Hostname] <Object>
    [-Credential] <PSCredential>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Migration transfers the management of rackmount servers along with their associated profiles, and copies dependent resources from one HPE OneView appliance to another appliance. This migration process does not impact the applications or workloads that are running on the server.

You can consolidate one or more rackmount servers from multiple appliances into a single appliance to increase the server scale support.

Supported migration paths

You can use the migration utility that is available with the HPE OneView 7.0 appliance to migrate servers from:

* HPE OneView 6.6, which is a long-term support (LTS) version, and
* other HPE OneView 7.0 or newer appliances

Please see the HPE OneView online help "Migrating server hardware" help topic for more information and best practices.

This Cmdlet will connect to the source appliance, in order to retrieve a list of supported and migratable servers.  Use the returned list to then initiate the server migration process with the Invoke-OVMigrateServer Cmdlet.  If there are no available servers to migrate, a non-trappable error is generated, which can be overridden using the `-ErrorAction` common switch parameter.

???+ info
    Minimum required privileges: Infrastructure administrator and Server administrator

## Examples

###  Example 1 

```powershell
$SourceServerMigrationHost = "appliance1.domain.com"

$Credential = Get-Credential -Username myadminaccount

# Get the list of migratable servers from the source appliance
$MigratableServers = Get-OVMigratableServer -Hostname $SourceServerMigrationHost -Credential $Credential


Name                 Model                 Status ServerProfileName
----                 -----                 ------ -----------------
Server-33.domain.com ProLiant XL270d Gen10 OK     NoProfile
Server-39.domain.com ProLiant DL560 Gen10  OK     NoProfile
```

Connect ot the specified appliance and return a list of migratable servers.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Parameter to provide credentials in order to authenticate to the source appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Hostname &lt;Object&gt;

IP Address or FQDN of the source appliance to migrate servers from.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Servers.MigratableServer"
    Class object of migratable server resources from Get-OVMigratableServer.
    

## Related Links

* [Invoke-OVMigrateServer](invoke-ovmigrateserver.md)
