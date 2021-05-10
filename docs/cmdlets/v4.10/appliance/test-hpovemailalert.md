---
description: Test appliance Email Alerting configuration.
---

# Test-HPOVEmailAlert

## Syntax

```text
Test-HPOVEmailAlert
    [<CommonParameters>]
```

## Description

This cmdlet will generate a test email message. 

## Examples

###  Example 1 

```text
Test-HPOVEmailAlert -Recipients user1@contoso.com

```

Generate a test email message to "user1@contoso.com".

###  Example 2 

```text
Test-HPOVEmailAlert -Recipients user1@contoso.com.,user2@contoso.com -Subject "This is a test email message." 

```

Generate a test email message to multiple recipients with a custom subject.

## Parameters

### -Recipients &lt;Array&gt;

Specify the Sender Email Address for the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Subject &lt;String&gt;

Provide a custom subject for the email message.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | This is a test message. |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Body &lt;String&gt;

Provide a custom message body.  Can be either a plan text or HTML message.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Test email message from HPE OneView appliance. |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

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

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

If successful, returns an object with the test message details.

## Related Links

