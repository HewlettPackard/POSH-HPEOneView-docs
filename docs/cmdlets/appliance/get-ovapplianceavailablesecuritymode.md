---
description: Get appliance available security cryptography modes.
---

# Get-OVApplianceAvailableSecurityMode

## Syntax

```powershell
Get-OVApplianceAvailableSecurityMode
    [-ModeName <String[]>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView allows you to change the Cryptography Settings of a specific appliance.  These setting modes change the available cryptography algorithms, allowed ciphers and disabling unsecure protocols.  Available cryptography modes include:

* Legacy - This is the default cryptography mode. In the legacy mode all TLS protocol versions (1.0, 1.1, and 1.2) and associated cipher suites for those versions are supported. TLS certificates are not required to have FIPS or CNSA minimum key lengths nor strong digital signatures.
* FIPS - Federal Information Processing Standard (FIPS) Publication 140-2 is a U.S. government computer security standard for products performing cryptography. The FIPS 140-2 Cryptographic Module Validation Program has validated the cryptography libraries of HPE OneView. When in the FIPS mode:
    * The cryptographic modules of the appliance are configured to operate in accordance with the FIPS 140-2 level 1 specification. This setting ensures that the required FIPS self-tests are run while loading these cryptographic modules.
    * The ciphers and algorithms used for cryptographic operations by the appliance are restricted to only those approved by FIPS.
    * The appliance allows only TLS1.1 and TLS 1.2 protocols for all TLS communications
    * All SSH and SNMPv3 communication use only cipher suites and algorithms approved by FIPS.
    * For additional information, see the FIPS-140 site.
* CNSA - The Commercial National Security Algorithm (CNSA) cryptography mode restricts HPE OneView to use only those algorithms included in the CNSA suite. The CNSA suite is a subset of the general FIPS support and includes a set of algorithms used to protect national security systems, including information classified as 'top secret.' In the CNSA mode, the appliance uses only TLS 1.2 protocol and a CNSA-strength subset of the TLS 1.2 ciphers. Similarly, SSH and SNMP communication uses CNSA-compliant ciphers and algorithms.

For additional information, see the CNSA standards site (https://www.iad.gov/iad/programs/iad-initiatives/cnsa-suite.cfm). This website uses a US Government Certificate Authority-signed certificate which is not present, by default, in most browser trust stores. See Establishing Site Trust (https://www.iad.gov/NSCAP/warnings.cfm) for more information on establishing trust with this website.

???+ info
     In HPE OneView releases prior to version 4.0, local user passwords are hashed using SHA256. Starting with release version 4.0, the first time the user logs in, irrespective of the appliance cryptography mode, the password gets rehashed and stored as SHA384.


When the iLO of a managed server is in the CNSA mode, the iLO user interface or console is not accessible from HPE OneView console user interface.

For a complete list of ciphers and algorithms supported in the legacy, FIPS and CNSA modes, see Algorithm and ciphers for securing the appliance in the HPE OneView User Guide available on the Hewlett Packard Enterprise Information Library.

The installation scenarios and the default behavior during a mode switch are:

* Fresh installation - The appliance defaults to the legacy mode.
* Upgrade - Cryptography mode of the appliance prior to upgrade is retained after the upgrade. For an appliance upgraded from a release that did not support cryptography modes, the appliance is configured to be in legacy mode after the upgrade.
* Factory reset - A factory reset or the Preserve network settings option does not change the cryptography mode. The cryptography mode of the appliance prior to the reset is retained. Verify that the Cryptography setting is set to required mode in the Security settings panel.
* Backup and restore - A restore operation restores the appliance to the same cryptography mode as the backed up appliance.

For HPE OneView to operate in FIPS or CNSA mode, it is not required that all systems or devices that are managed or monitored by HPE OneView (for example, blade ILO) or the external servers that communicate with HPE OneView (for example, MicroSoft Active Directory Server) also operate in FIPS or CNSA-approved mode only. However, HPE OneView must be abl
e to communicate with these managed or monitored devices and external servers with the protocols and cipher suites supported by the chosen mode. For example, as long as a device supports FIPS-compliant TLS protocols, ciphers and certificates, HPE OneView in FIPS or CNSA modes can manage that device.

For information on the support for various devices and supported cryptography modes, see the HPE OneView Support Matrix on the Hewlett Packard Enterprise Information Library.
Additionally, using a higher mode of cryptography requires that you use stronger certificates for all TLS communications. For example, in the CNSA mode, managed devices using RSA certificates need a minimum key length of 3072 bits and a digital signature using SHA-384 or greater.

Not all devices that HPE OneView manages or monitors support these stronger cryptography modes. Some examples are:

* ProLiant Gen 6 systems have iLO versions that only support TLS 1.0. These servers are not supported when the appliance is in the FIPS or CNSA modes.
* Gen7 systems have iLO versions that only support TLS 1.0 and 1.1. These servers are not supported when the appliance is in the CNSA mode.
* ProLiant Gen8 systems have iLO versions that support TLS 1.1 and 1.2, and are compatible with both FIPS and CNSAmodes.

When opting for a higher security mode, use the Show-OVApplianceSecurityModeCompatibilityReport Cmdlet to generate a Compatibility report to get a complete report of any currently managed or monitored devices that are not compatible with the target mode.

???+ info
     Changing the cryptography mode might regenerate the web server or RabbitMQ certificates. The newly generated RabbitMQ client certificate, along with the CA and key pair, must be applied to the RabbitMQ client. When using CA-signed certificates you might need to issue a new certificate signing request (CSR), obtain a stronger certificate and re-import the certificate into your appliance. Check the compatibility report for details. The appliance automatically reboots as part of configuring the appliance in a different cryptographic mode.


???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Get-OVApplianceAvailableSecurityMode
```

Return all available security modes on the appliance.

###  Example 2 

```powershell
Get-OVApplianceAvailableSecurityMode -ModeName CNSA
```

Return the CNSA available security mode on the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ModeName &lt;String[]&gt;

The name of the mode to return. Allowed values:

* Legacy
* FIPS
* CNSA

Default: Return all available security modes.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.SecurityMode"
    The available appliance security mode, including which mode is set as the current value.
    

## Related Links

* [Get-OVApplianceCurrentSecurityMode](get-ovappliancecurrentsecuritymode.md)
* [Set-OVApplianceCurrentSecurityMode](set-ovappliancecurrentsecuritymode.md)
* [Show-OVApplianceSecurityModeCompatibilityReport](show-ovappliancesecuritymodecompatibilityreport.md)
