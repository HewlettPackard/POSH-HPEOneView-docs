---
description: Retrieve Server Profile Template resource(s).
---

# Get-OVServerProfileTemplate

## Syntax

```powershell
Get-OVServerProfileTemplate
    [-Name <String>]
    [-ServerHardwareType <String>]
    [-Label <String>]
    [-Scope <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Get-OVServerProfileTemplate
    [-Export]
    [-Location <String>]
    [-Name <String>]
    [-ServerHardwareType <String>]
    [-Label <String>]
    [-Scope <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Get-OVServerProfileTemplate
    [-Detailed]
    [-Name <String>]
    [-ServerHardwareType <String>]
    [-Label <String>]
    [-Scope <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will obtain a collection of Server Profile Template resources, or a specific Server Profile Template with the specified name. It 
returns all aspects of the Server Profile Template.
    
This will also provide the ability to export Server Profile Template objects to their own JSON encoded file.  All appliance unique properties (minus the Server Hardware Type, Enclosure Group, and Connection Network assignment) are removed.  Connection layout, assigned addresses, networks, bandwidth, BIOS, Boot Order, Firmware settings will all be retained.  Assigned Address types will change from Virtual to UserDefined in order to retain their assignment.

## Examples

###  Example 1 

```powershell
$templates = Get-OVServerProfileTemplate
```

Return all the server profile  templates managed by the appliance.

###  Example 2 

```powershell
$template = Get-OVServerProfileTemplate "SA"
```

Return the server profile template resource with name "SA".

###  Example 3 

```powershell
$profiletemplates = Get-OVServerProfileTemplate profile*
```

Return server profile  template resources that match "profile*".

###  Example 4 

```powershell
Get-OVServerProfileTemplate
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Test 1                 False             False Unassigned    Normal
test 3                 False             False Unassigned    Normal
```

Generate a list of all server profiles.

###  Example 5 

```powershell
Get-OVServerProfileTemplate -name "test 1"
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Test 1                 False             False Unassigned    Normal
```

Show a specific Server Profile Template, "test 1".

###  Example 6 

```powershell
Get-OVServerProfileTemplate -export -location c:\profiles
```

Save all Server Profile Template objects to their own backup file to C:\profiles.

###  Example 7 

```powershell
Get-OVServerProfileTemplate -name Profile1 -export -location c:\profiles
```

Save Profile1 Server Profile  template object to its own backup file in C:\pro

## Parameters

### -Name &lt;String&gt;

The name of the specific Server Profile Template resource to retrieve

| Aliases | profile |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServerHardwareType &lt;String&gt;

Provide the Server Hardware Type resource object or name to return Server Profile Templates designed for it.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

* AllResources
* AllResourcesInScope
* `[HPEOneView.Appliance.ScopeCollection]`
* `[HPEOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Detailed &lt;SwitchParameter&gt;

Displays detailed information about the Server Profile Template in tabular format

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Export &lt;SwitchParameter&gt;

Switch used to export Server Profile Template object to JSON encoded file.

| Aliases | x |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Location &lt;String&gt;

Location where to save the Server Profile Template file.

| Aliases | save |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "None"
    
    

## Return Values

=== "HPEOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]"
    Server Profile template resource
    

## Related Links

* [Convert-OVServerProfileTemplate](convert-ovserverprofiletemplate.md)
* [ConvertTo-OVServerProfileTemplate](convertto-ovserverprofiletemplate.md)
* [New-OVServerProfileTemplate](new-ovserverprofiletemplate.md)
* [Remove-OVServerProfileTemplate](remove-ovserverprofiletemplate.md)
* [Save-OVServerProfileTemplate](save-ovserverprofiletemplate.md)
* [Set-OVServerProfileTemplate](set-ovserverprofiletemplate.md)
