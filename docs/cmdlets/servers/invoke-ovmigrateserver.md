---
description: Transfer the management of one or more servers and associated profiles from another OneView appliance to this appliance.
---

# Invoke-OVMigrateServer

## Syntax

```powershell
Invoke-OVMigrateServer
    [-InputObject] <HPEOneView.Servers.MigratableServer[]>
    [-Hostname] <>
    [-Credential] <PSCredential>
    [-Async]
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

This Cmdlet will initiate supported server migration.  Use the Get-OVMigratableServer Cmdlet to connect to the source appliance and return the list of servers that can be migrated.

???+ info
    Minimum required privileges: Infrastructure administrator and Server administrator

## Examples

###  Example 1 

```powershell
$Credential = Get-Credential -Username myadminaccount

# Get the list of migratable servers from the source appliance
$MigratableServers = Get-OVMigratableServer -Hostname $SourceServerMigrationHost -Credential $Credential

# Begin server migration
$tasks = Invoke-OVMigrateServer -InputObject $MigratableServers -Credential $Credential -Async
```

Connect to the specified source appliance, return the list of migratable servers, then begin migration, returning the created async tasks.

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

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

Use to override the confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
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

### -InputObject &lt;HPEOneView.Servers.MigratableServer[]&gt;

Collection of migratable servers from Get-OVMigratableServer.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Servers.MigratableServer"
    Class object of migratable server resources from Get-OVMigratableServer.
    

## Return Values

=== "HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

* [Get-OVMigratableServer](get-ovmigratableserver.md)
