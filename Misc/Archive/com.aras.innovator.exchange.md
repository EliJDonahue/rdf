<!-- Auto-generated by action -->

# com.aras.innovator.exchange Assessment

This file does not define any part of the current base vocabulary/ontology. Not every 'class' or 'property' in this file will become part of the base ontology. It was generated to take an inventory of Aras ItemTypes and their properties.

[Go To Classes](#classes) | [Go To Item/System Properties](#itemsystem-properties) | [Go To Relationship Properties](#relationship-properties) | [Go To General Properties](#general-properties)

# Classes

## FileExchangePackage

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
description | FileExchangePackage |   | String | 
pkg_number | FileExchangePackage |   | Sequence | 

### Relationships

Relationship Class Name | Related Class
------ | ------
[FileExchangePackageFile](#fileexchangepackagefile) | [File](#file)


## FileExchangeTxn

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
comments | FileExchangeTxn |   | String | 
data | FileExchangeTxn |   | Text | 
error | FileExchangeTxn |   | String | 
package | FileExchangeTxn |   | Item | [FileExchangePackage](#fileexchangepackage)
service_provider | FileExchangeTxn |   | String | 
transfer_attempts | FileExchangeTxn |   | Integer | 
txn_number | FileExchangeTxn |   | Sequence | 
txn_status | FileExchangeTxn |   | List | FileExchangeStatus
txn_type | FileExchangeTxn |   | List | FileExchangeTxnType

### Relationships

Relationship Class Name | Related Class
------ | ------
[FileExchangeTxnState](#fileexchangetxnstate) | [](#)


## ServiceProvider

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
active | ServiceProvider |   | Boolean | 
name | ServiceProvider |   | String | 
service_type | ServiceProvider |   | List | CloudServices
url | ServiceProvider |   | String | 


## FileExchangePackageFile

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
parental_id | FileExchangePackageFile |   | String | 
parental_property | FileExchangePackageFile |   | String | 
parental_type | FileExchangePackageFile |   | String | 
related_id | FileExchangePackageFile |   | Item | [File](#file)
source_id | FileExchangePackageFile |   | Item | [FileExchangePackage](#fileexchangepackage)


## FileExchangeTxnState

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
error | FileExchangeTxnState |   | String | 
file_id | FileExchangeTxnState |   | String | 
file_name | FileExchangeTxnState |   | String | 
related_id | FileExchangeTxnState |   | Item | [](#)
source_id | FileExchangeTxnState |   | Item | [FileExchangeTxn](#fileexchangetxn)
status | FileExchangeTxnState |   | List | FileExchangeStatus


# Properties

## Item/System Properties

These properties are shared by all SubClasses of Item.

Property | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
classification | [Item](#item) |   | String | 
config_id | [Item](#item) |   | Item | [Action](#action)
created_by_id | [Item](#item) |   | Item | [User](#user)
created_on | [Item](#item) |   | Date | 
css | [Item](#item) |   | Text | 
current_state | [Item](#item) |   | Item | [Life Cycle State](#life-cycle-state)
generation | [Item](#item) |   | Integer | 
id | [Item](#item) |   | Item | [Action](#action)
is_current | [Item](#item) |   | Boolean | 
is_released | [Item](#item) |   | Boolean | 
keyed_name | [Item](#item) |   | String | 
locked_by_id | [Item](#item) |   | Item | [User](#user)
major_rev | [Item](#item) |   | String | 
managed_by_id | [Item](#item) |   | Item | [Identity](#identity)
minor_rev | [Item](#item) |   | String | 
modified_by_id | [Item](#item) |   | Item | [User](#user)
modified_on | [Item](#item) |   | Date | 
new_version | [Item](#item) |   | Boolean | 
not_lockable | [Item](#item) |   | Boolean | 
owned_by_id | [Item](#item) |   | Item | [Identity](#identity)
permission_id | [Item](#item) |   | Item | [Permission](#permission)
state | [Item](#item) |   | String | 
team_id | [Item](#item) |   | Item | [Team](#team)


## Relationship Properties

These properties are shared by all SubClasses of Relationship.

Property | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
behavior | [Relationship](#relationship) |   | List | Item Behavior
related_id | [Relationship](#relationship) |   | Item | [ItemType](#itemtype)
sort_order | [Relationship](#relationship) |   | Integer | 
source_id | [Relationship](#relationship) |   | Item | [ItemType](#itemtype)


## General Properties

These properties are shared by the domain(s) listed in each row.

Property | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
active | ServiceProvider |   | Boolean | 
comments | FileExchangeTxn |   | String | 
data | FileExchangeTxn |   | Text | 
description | FileExchangePackage |   | String | 
error | FileExchangeTxn |   | String | 
name | ServiceProvider |   | String | 
package | FileExchangeTxn |   | Item | [FileExchangePackage](#fileexchangepackage)
pkg_number | FileExchangePackage |   | Sequence | 
service_provider | FileExchangeTxn |   | String | 
service_type | ServiceProvider |   | List | CloudServices
transfer_attempts | FileExchangeTxn |   | Integer | 
txn_number | FileExchangeTxn |   | Sequence | 
txn_status | FileExchangeTxn |   | List | FileExchangeStatus
txn_type | FileExchangeTxn |   | List | FileExchangeTxnType
url | ServiceProvider |   | String | 


