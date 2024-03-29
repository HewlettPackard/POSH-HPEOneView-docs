﻿---
description: Modify an existing enclosure group policy.
---

# Set-OVEnclosureGroup

## Syntax

```powershell
Set-OVEnclosureGroup
    [-InputObject] <Object>
    [-Name] <String>
    [-ConfigurationScript] <String>
    [-PowerRedundantMode] <String>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

An enclosure group is a logical resource that defines a standard configuration for member logical enclosures. Use this Cmdlet to update the configuration policy for a specific enclosure group resource.

{% hint style="info" %}
Minimum required privileges: Server administrator or Infrastructure administrator
{% endhint %}

## Examples

###  Example 1 

```powershell
$EnclosureGroup = Get-OVEnclosureGroup -Name ProdEG1 -ErrorAction Stop Set-OVEnclosureGroup -InputObject $EnclosureGroup -Name VirtProdEG1
```

Change the name of the provided enclosure group resource.

###  Example 2 

```powershell
$UpdatedConfigScript = 'REMOVE USER "admin"
ADD USER "ops" "*********"
SET USER CONTACT "ops" "MySecretPassword"
SET USER FULLNAME "ops" ""
SET USER ACCESS "ops" OPERATOR
ASSIGN SERVER 1-16 "ops"
ENABLE USER "ops"
hponcfg all >> end_marker
<RIBCL VERSION="2.0">
<LOGIN USER_LOGIN="ops" PASSWORD="passthrough">
    <USER_INFO MODE="write">
        <ADD_USER
        USER_NAME="ops"
        USER_LOGIN="ops"
        PASSWORD="Supersecretpassword">
            <ADMIN_PRIV value ="N"/>
            <REMOTE_CONS_PRIV value ="Y"/>
            <RESET_SERVER_PRIV value ="N"/>
            <VIRTUAL_MEDIA_PRIV value ="N"/>    
            <CONFIG_ILO_PRIV value="Yes"/>
        </ADD_USER>
    </USER_INFO>
</LOGIN>
</RIBCL>
end_marker' Get-OVEnclosureGroup -Name EG1 -ErrorAction Stop | Set-OVEnclosureGroup -ConfigurationScript $UpdatedConfigScript
```

Update the configuration script of the provided enclosure group.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -ConfigurationScript &lt;String&gt;

An Onboard Administrator CLI Script. Only applicable for HPE BladeSystem C-Class.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

An enclosure group resource from Get-OVEnclosureGroup.

| Aliases | EnclosureGroup |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Specify a new resource name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PowerRedundantMode &lt;String&gt;

The Power Redundancy Mode to set when an Enclosure is added to the appliance.

Allowed Values:

* RedundantPowerFeed - Provides N+N Power Redundancy Configuration
* RedundantPowerSupply - Provided N+1 Power Redundancy Configuration

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

_**HPEOneView.Servers.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

Enclosure group resource from Get-OVEnclosureGroup.

## Return Values

_**HPEOneView.Servers.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

The updated enclosure group resource.

## Related Links

* [Get-OVEnclosureGroup](get-ovenclosuregroup.md)
* [New-OVEnclosureGroup](new-ovenclosuregroup.md)
* [Remove-OVEnclosureGroup](remove-ovenclosuregroup.md)
