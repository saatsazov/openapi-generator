# THIS FILE WAS AUTOMATICALLY GENERATED by the OpenAPI Generator project.
# For more information on how to customize templates, see:
# https://openapi-generator.tech
# The OpenAPI Generator Community, © Public Domain, 2022

# Order Model
# An order for a pets from the pet store
# namespace: models
# invoker: 

extends RefCounted
class_name Order

# Type: float
# Required: False
var id: float


# Type: float
# Required: False
var petId: float


# Type: int
# Required: False
var quantity: int


# Type: Dictionary
# Required: False
var shipDate: Dictionary


# Order Status
# Type: String
# Required: False
var status: String


# Type: bool
# Required: False
var complete: bool = false



func normalize() -> Dictionary:
	return {
		"id": self.id,
		"petId": self.petId,
		"quantity": self.quantity,
		"shipDate": self.shipDate,
		"status": self.status,
		"complete": self.complete,
	}

