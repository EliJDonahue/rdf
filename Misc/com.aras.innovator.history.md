<!-- Auto-generated by action -->

# Classes

## History Action

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
comment_text | History Action |   | Ml_string | 
is_internal | History Action |   | Boolean | 
label | History Action |   | Ml_string | 
name | History Action |   | String | 


## History Container

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
item_config_id | History Container |   | String | 
item_keyed_name | History Container |   | String | 
itemtype_id | History Container |   | Item | [ItemType](#itemtype)

### Relationships

Relationship Class Name | Related Class
------ | ------
[History](#history) | [](#)


## History Template

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
name | History Template |   | String | 
property_history | History Template |   | Boolean | 

### Relationships

Relationship Class Name | Related Class
------ | ------
[History Template Action](#history-template-action) | [History Action](#history-action)
[History Template Where Used](#history-template-where-used) | [](#)


## History Template Action

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
related_id | History Template Action |   | Item | [History Action](#history-action)
source_id | History Template Action |   | Item | [History Template](#history-template)


## History Template Where Used

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
related_id | History Template Where Used |   | Item | [](#)
source_id | History Template Where Used |   | Item | [History Template](#history-template)


## History

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
action | History |   | String | 
comments | History |   | Text | 
created_on_tick | History |   | Decimal | 
item_id | History |   | String | 
item_major_rev | History |   | String | 
item_state | History |   | String | 
item_version | History |   | Integer | 
label | History |   | String | 
related_id | History |   | Item | [](#)
source_id | History |   | Item | [History Container](#history-container)
version | History |   | Integer | 


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
comment_text | History Action |   | Ml_string | 
is_internal | History Action |   | Boolean | 
item_config_id | History Container |   | String | 
item_keyed_name | History Container |   | String | 
itemtype_id | History Container |   | Item | [ItemType](#itemtype)
label | History Action |   | Ml_string | 
name | History Template<br/>History Action |   | String | 
property_history | History Template |   | Boolean | 

