---
hide:
  - navigation
description: The HPE OneView PowerShell library verb mapping to OneView Actions verbs.
---

# Verb Mapping

The following table shows the available HPE OneView PowerShell Verbs and which map to the HPE OneView actions.

| HPE OneView Actions Verb | HPE OneView PowerShell Verb | Description |
| :--- | :--- | :--- |
| Add | Add | Use to add a physical resource external to HPE OneView. |
| Copy | Copy | Copy or duplicate a resource. |
| Create | New | Create or define a new resource.  This is typically a software based resource like Server Profile, Storage Volume, etc. |
| Edit | Set | Modify a resource where it is allowed. |
| Remove | Delete | Remove a resource, physical or software, from an appliance.  If software resource \(server profile, or even storage volume\) it is unrecoverable. |
| Refresh | Update | Request a status refresh or connectivity refresh to a resource. |
| Reapply | Update | Request a physical resource to deploy its configuration again. |
| PowerOn | Start | Change the power state of a powered off resource to on. |
| PowerOff | Stop | Change the power state of a powered on resource to off. |

