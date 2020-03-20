---
description: Get appliancce Login Message.
---

# Get-HPOVLoginMessage

## Syntax

```text
Get-HPOVLoginMessage
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Retreive the current Login Message for the connected appliance(s).

## Examples

###  Example 1 

```text
Get-HPOVLoginMessage
Appliance   : hpov1.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : True

    
Appliance   : hpov2.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : False

```

Get the Login Message from all connected appliances.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.LoginMessage**_

If successful, returns a resource

## Related Links

* [Set-HPOVLoginMessage](../security/set-hpovloginmessage.md)
