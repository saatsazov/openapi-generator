# THIS FILE WAS AUTOMATICALLY GENERATED by the OpenAPI Generator project.
# For more information on how to customize templates, see:
# https://openapi-generator.tech
# The OpenAPI Generator Community, © Public Domain, 2022

# DemoPet Model
# A pet for sale in the pet store
# namespace: models

extends RefCounted
class_name DemoPet

# It's convenient to know the class name, for error messages.
# https://github.com/godotengine/godot/issues/21789
var bee_class_name := "DemoPet"


# Type: float
# Required: False
# isArray: false
var id: float:
	set(value):
		__id__was__set = true
		id = value
var __id__was__set := false

# Type: DemoCategory
# Required: False
# isArray: false
var category: DemoCategory:
	set(value):
		__category__was__set = true
		category = value
var __category__was__set := false

# Type: String
# Required: True
# Example: doggie
# isArray: false
var name: String:
	set(value):
		__name__was__set = true
		name = value
var __name__was__set := false

# Type: Array
# Required: True
# isArray: true
var photoUrls: Array:
	set(value):
		__photoUrls__was__set = true
		photoUrls = value
var __photoUrls__was__set := false

# Type: Array
# Required: False
# isArray: true
var tags: Array:
	set(value):
		__tags__was__set = true
		tags = value
var __tags__was__set := false

# /!.  DEPRECATED
# pet status in the store
# Type: String
# Required: False
# isArray: false
# Allowed values: "available", "pending", "sold"
var status: String:
	set(value):
		if str(value) != "":
			push_warning("DemoPet: property `status` is deprecated.")
		if str(value) != "" and not (str(value) in __status__allowable__values):
			printerr("DemoPet: tried to set property `status` to a value that is not allowed." +
				"  Allowed values: `available`, `pending`, `sold`")
			return
		__status__was__set = true
		status = value
var __status__was__set := false
var __status__allowable__values := ["available", "pending", "sold"]


func bee_collect_missing_properties() -> Array:
	var bzz_missing_properties := Array()
	if not self.__name__was__set:
		bzz_missing_properties.append("name")
	if not self.__photoUrls__was__set:
		bzz_missing_properties.append("photoUrls")
	return bzz_missing_properties


func bee_normalize() -> Dictionary:
	var bzz_dictionary := Dictionary()
	if self.__id__was__set:
		bzz_dictionary["id"] = self.id
	if self.__category__was__set:
		bzz_dictionary["category"] = self.category
	if self.__name__was__set:
		bzz_dictionary["name"] = self.name
	if self.__photoUrls__was__set:
		bzz_dictionary["photoUrls"] = self.photoUrls
	if self.__tags__was__set:
		bzz_dictionary["tags"] = self.tags
	if self.__status__was__set:
		bzz_dictionary["status"] = self.status
	return bzz_dictionary


# Won't work for JSON+LD
static func bee_denormalize_single(from_dict: Dictionary):
	var me := new()
	if from_dict.has("id"):
		me.id = from_dict["id"]
	if from_dict.has("category"):
		me.category = DemoCategory.bee_denormalize_single(from_dict["category"])
	if from_dict.has("name"):
		me.name = from_dict["name"]
	if from_dict.has("photoUrls"):
		me.photoUrls = from_dict["photoUrls"]
	if from_dict.has("tags"):
		me.tags = DemoTag.bee_denormalize_multiple(from_dict["tags"])
	if from_dict.has("status"):
		me.status = from_dict["status"]
	return me


# Won't work for JSON+LD
static func bee_denormalize_multiple(from_array: Array):
	var mes := Array()
	for element in from_array:
		if element is Array:
			mes.append(bee_denormalize_multiple(element))
		elif element is Dictionary:
			# TODO: perhaps check first if it looks like a match or an intermediate container
			mes.append(bee_denormalize_single(element))
		else:
			mes.append(element)
	return mes

