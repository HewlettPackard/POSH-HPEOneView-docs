---
description: Configure supported resource Remote Support settings.
---

# Set-OVRemoteSupportSetting

## Syntax

```powershell
Set-OVRemoteSupportSetting
    [-InputObject] <Object>
    [-PrimaryContact] <Object>
    [-SecondaryContact <Object>]
    [-ServicePartner <Object>]
    [-Reseller <Object>]
    [-ContractType <String>]
    [-SupportID <String>]
    [-NewSerialNumber <String>]
    [-NewProductNumber <String>]
    [-Enabled]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVRemoteSupportSetting
    [-InputObject] <Object>
    [-Disabled]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to configure a supported resources Remote Support collection settings. 

## Examples

###  Example 1 

```powershell
$NewReseller = Get-OVRemoteSupportContact -Name "New Reseller Name"
Get-OVEnclosure -Name Encl1 | Set-OVRemoteSupportSetting -Reseller $NewReseller
```

Update "Encl1" with a new reseller contact that was added to the appliance.

###  Example 2 

```powershell
Get-OVServer -Name Prd-host-* | Set-OVRemoteSupportSetting -ContractType SupportAgreement -SupportID 111199990 
```

Update the servers with a new support agreement.

###  Example 3 

```powershell
PrimaryContact = Get-OVRemoteSupportContact -Name "Gladi Chua"
$SecondaryContact = Get-OVRemoteSupportContact -Name "Luke Smith" 
Get-OVEnclosure -Name Prod* | Set-OVRemoteSupportSetting -PrimaryContact $PrimaryContact -SecondaryContact $SecondaryContact -Async -OutVariable Tasks
```

Update the Enclosures with new primary and secondary contacts, returning async tasks to monitor using the OutVariable Common Parameter.

## Parameters

### -InputObject &lt;Object&gt;

Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -PrimaryContact &lt;Object&gt;

Primary Remote Support Contact user object.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SecondaryContact &lt;Object&gt;

Secondary Remote Support Contact user object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServicePartner &lt;Object&gt;

Authorized HPE service partner object from Get-OVRemoteSupportPartner.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Reseller &lt;Object&gt;

Authorized HPE reseller partner object from Get-OVRemoteSupportPartner.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ContractType &lt;String&gt;

Use to override the contract type.  If specifying a different contract type, you must supply the SupportID.  Allowed values are:

* SupportAgreement
* PackagedSupport.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SupportID &lt;String&gt;

The support Contract ID.  You must specify the type of contract by using the `-ContractType` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NewSerialNumber &lt;String&gt;

Use to update the HPE support backend with an updated serial number.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NewProductNumber &lt;String&gt;

Use to update the HPE support backend with an updated product number

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
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

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Disabled &lt;SwitchParameter&gt;

Use to disable HPE OneView Remote Support configuration on the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Enabled &lt;SwitchParameter&gt;

Use to enable HPE OneView Remote Support configuration on the appliance.

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

=== "HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject]"
    Server hardware resource object.
    

=== "HPEOneView.Enclosure [System.Management.Automation.PSCustomObject]"
    Enclosure resource object.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task resource to monitor
    

## Related Links

* [Get-OVRemoteSupportSetting](get-ovremotesupportsetting.md)
