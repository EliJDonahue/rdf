<!-- Auto-generated by action -->

# com.aras.innovator.search Assessment

This file does not define any part of the current base vocabulary/ontology. Not every 'class' or 'property' in this file will become part of the base ontology. It was generated to take an inventory of Aras ItemTypes and their properties.

[Go To Classes](#classes) | [Go To Item/System Properties](#itemsystem-properties) | [Go To Relationship Properties](#relationship-properties) | [Go To General Properties](#general-properties)

# Classes

## SavedSearch

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
auto_saved | SavedSearch |   | Boolean | 
criteria | SavedSearch |   | Text | 
itname | SavedSearch |   | String | 
label | SavedSearch |   | Ml_string | 
location | SavedSearch |   | List | SearchLocations
search_mode | SavedSearch |   | Item | [SearchMode](#searchmode)
show_on_toc | SavedSearch |   | Boolean | 


## Search Center

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------


## SearchMode

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
is_active | SearchMode |   | Boolean | 
label | SearchMode |   | Ml_string | 
name | SearchMode |   | String | 
search_handler | SearchMode |   | Text | 


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
auto_saved | SavedSearch |   | Boolean | 
criteria | SavedSearch |   | Text | 
is_active | SearchMode |   | Boolean | 
itname | SavedSearch |   | String | 
label | SearchMode<br/>SavedSearch |   | Ml_string | 
location | SavedSearch |   | List | SearchLocations
name | SearchMode |   | String | 
search_handler | SearchMode |   | Text | 
search_mode | SavedSearch |   | Item | [SearchMode](#searchmode)
show_on_toc | SavedSearch |   | Boolean | 


