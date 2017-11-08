<!-- Auto-generated by action -->

# Classes

## Feature License

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
activation_key | Feature License |   | String | 
additional_license_data | Feature License |   | Federated | 
available_to | Feature License |   | Item | [Identity](#identity)
concurrent_user_count | Feature License |   | Integer | 
database_engine_edition | Feature License |   | String | 
database_server_name | Feature License |   | String | 
domain | Feature License |   | String | 
enforcement_mode | Feature License |   | String | 
expiration_date | Feature License |   | String | 
feature | Feature License |   | String | 
framework_license_key | Feature License |   | String | 
innovator_server_locale | Feature License |   | String | 
innovator_server_name | Feature License |   | String | 
issued_to | Feature License |   | String | 
license_data | Feature License |   | Text | 
license_description | Feature License |   | String | 
login | Feature License |   | String | 
mac_address | Feature License |   | String | 
named_user_list | Feature License |   | Text | 
password | Feature License |   | String | 
secure_id | Feature License |   | Federated | 
start_date | Feature License |   | String | 
total_users | Feature License |   | Integer | 


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
activation_key | Feature License |   | String | 
additional_license_data | Feature License |   | Federated | 
available_to | Feature License |   | Item | [Identity](#identity)
concurrent_user_count | Feature License |   | Integer | 
database_engine_edition | Feature License |   | String | 
database_server_name | Feature License |   | String | 
domain | Feature License |   | String | 
enforcement_mode | Feature License |   | String | 
expiration_date | Feature License |   | String | 
feature | Feature License |   | String | 
framework_license_key | Feature License |   | String | 
innovator_server_locale | Feature License |   | String | 
innovator_server_name | Feature License |   | String | 
issued_to | Feature License |   | String | 
license_data | Feature License |   | Text | 
license_description | Feature License |   | String | 
login | Feature License |   | String | 
mac_address | Feature License |   | String | 
named_user_list | Feature License |   | Text | 
password | Feature License |   | String | 
secure_id | Feature License |   | Federated | 
start_date | Feature License |   | String | 
total_users | Feature License |   | Integer | 

