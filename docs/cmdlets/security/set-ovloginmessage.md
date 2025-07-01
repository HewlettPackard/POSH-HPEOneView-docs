---
description: Set appliance Login Message.
---

# Set-OVLoginMessage

## Syntax

```powershell
Set-OVLoginMessage
    [-Message] <String>
    [-Acknowledgment <Boolean>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVLoginMessage
    [-Acknowledgment] <Boolean>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Configure the Login Message for the connected appliance(s).  You can also set the Acknowledgement to be required.

## Examples

###  Example 1 

```powershell
Set-OVLoginMessage -Message "************************************
>> *****        WARNING        ********
>> ************************************
>> Updated Message: This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
>> abuse of this system may lead to corrective action including termination, civil and/or criminal penalties."
>> -Acknowledgement $true
```

Set the Login Message from all connected appliances.

###  Example 2 

```powershell
$Message = "************************************
>> *****        WARNING        ********
>> ************************************
>> Updated Message: This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
>> abuse of this system may lead to corrective action including termination, civil and/or criminal penalties."
>>
Set-OVLoginMessage -Message $Message -Acknowledgment $true 
```

Set the Login Message from the specified appliance connection.

## Parameters

### -Message &lt;String&gt;

The login message to set.  The value can be null to clear the login message.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Acknowledgment &lt;Boolean&gt;

Set to True if the login message should be acknowledged before authentication completes.  If set to True, the COnnect-OVMgmt Cmdlet will prompt the user to acknowledge the message, if `-LoginAcknowledge` is not provided in the Cmdlet parameters.

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
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Appliance.LoginMessage"
    Returns the login message configured on the appliance.
    
    

## Related Links

* [Get-OVLoginMessage](../appliance/get-ovloginmessage.md)
