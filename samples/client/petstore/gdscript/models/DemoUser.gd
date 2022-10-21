# THIS FILE WAS AUTOMATICALLY GENERATED by the OpenAPI Generator project.
# For more information on how to customize templates, see:
# https://openapi-generator.tech
# The OpenAPI Generator Community, © Public Domain, 2022

# DemoUser Model
# A User who is purchasing from the pet store
# namespace: models

extends RefCounted
class_name DemoUser

# It's convenient to know the class name, for error messages.
# https://github.com/godotengine/godot/issues/21789
var bee_class_name := "DemoUser"


# Type: float
# Required: False
# isArray: false
var id: float:
	set(value):
		__id__was__set = true
		id = value
var __id__was__set := false

# Type: String
# Required: False
# isArray: false
var username: String:
	set(value):
		__username__was__set = true
		username = value
var __username__was__set := false

# Type: String
# Required: False
# isArray: false
var firstName: String:
	set(value):
		__firstName__was__set = true
		firstName = value
var __firstName__was__set := false

# Type: String
# Required: False
# isArray: false
var lastName: String:
	set(value):
		__lastName__was__set = true
		lastName = value
var __lastName__was__set := false

# Type: String
# Required: False
# isArray: false
var email: String:
	set(value):
		__email__was__set = true
		email = value
var __email__was__set := false

# Type: String
# Required: False
# isArray: false
var password: String:
	set(value):
		__password__was__set = true
		password = value
var __password__was__set := false

# Type: String
# Required: False
# isArray: false
var phone: String:
	set(value):
		__phone__was__set = true
		phone = value
var __phone__was__set := false

# User Status
# Type: int
# Required: False
# isArray: false
var userStatus: int:
	set(value):
		__userStatus__was__set = true
		userStatus = value
var __userStatus__was__set := false


func bee_collect_missing_properties() -> Array:
	var bzz_missing_properties := Array()
	return bzz_missing_properties


func bee_normalize() -> Dictionary:
	var bzz_dictionary := Dictionary()
	if self.__id__was__set:
		bzz_dictionary["id"] = self.id
	if self.__username__was__set:
		bzz_dictionary["username"] = self.username
	if self.__firstName__was__set:
		bzz_dictionary["firstName"] = self.firstName
	if self.__lastName__was__set:
		bzz_dictionary["lastName"] = self.lastName
	if self.__email__was__set:
		bzz_dictionary["email"] = self.email
	if self.__password__was__set:
		bzz_dictionary["password"] = self.password
	if self.__phone__was__set:
		bzz_dictionary["phone"] = self.phone
	if self.__userStatus__was__set:
		bzz_dictionary["userStatus"] = self.userStatus
	return bzz_dictionary

