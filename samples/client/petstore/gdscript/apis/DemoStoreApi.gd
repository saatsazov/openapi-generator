# THIS FILE WAS AUTOMATICALLY GENERATED by the OpenAPI Generator project.
# For more information on how to customize templates, see:
# https://openapi-generator.tech
# The OpenAPI Generator Community, © Public Domain, 2022
# API DemoStoreApi

extends DemoApiBee
class_name DemoStoreApi

# Operation deleteOrder → DELETE /store/order/{orderId}
# Delete purchase order by ID
#
# For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
func delete_order(
	# orderId: String   Eg: orderId_example
	# ID of the order that needs to be deleted
	orderId: String,
	on_success: Callable = Callable(),  # func(result)
	on_failure: Callable = Callable(),  # func(error: ApiError)
):
	# CollectionFormat: NO



	# Convert the String HTTP method to a Constant Godot understands
	var bzz_method := self.bee_convert_http_method("DELETE")

	# Compute the URL path to the API resource
	var bzz_path := "/v2/store/order/{orderId}".replace("{" + "orderId" + "}", bee_urlize_path_param(orderId))

	# Collect the headers
	var bzz_headers := Dictionary()

	# Collect the query parameters
	# Note: we do not support multiple values for a single param (for now), nor arrays
	var bzz_query := Dictionary()

	var bzz_body = null


	self.bee_request(
		bzz_method, bzz_path, bzz_headers, bzz_query, bzz_body,
		func(bzz_result, bzz_code, bzz_headers):
			#print('SUCCESS!')
			#print(bzz_result)
			on_success.call(bzz_result)
			,  # ざわ‥
		func(bzz_error):
			#printerr("FAILURE!")
			#print(bzz_error)
			on_failure.call(bzz_error)
			,  # ざわ‥
	)

# Operation getInventory → GET /store/inventory
# Returns pet inventories by status
#
# Returns a map of status codes to quantities
func get_inventory(
	on_success: Callable = Callable(),  # func(result: Dictionary)
	on_failure: Callable = Callable(),  # func(error: ApiError)
):
	# CollectionFormat: NO


	# Convert the String HTTP method to a Constant Godot understands
	var bzz_method := self.bee_convert_http_method("GET")

	# Compute the URL path to the API resource
	var bzz_path := "/v2/store/inventory"

	# Collect the headers
	var bzz_headers := Dictionary()
	var bzz_server_produced_mimes := ['application/json']
	for bzz_mime in BEE_CONSUMABLE_CONTENT_TYPES:
		if bzz_mime in bzz_server_produced_mimes:
			bzz_headers["Accept"] = bzz_mime
			break

	# Collect the query parameters
	# Note: we do not support multiple values for a single param (for now), nor arrays
	var bzz_query := Dictionary()

	var bzz_body = null

	# Will be used at some point for denormalization
	# baseType = "map"
	# openApiType = "object"
	# dataType = "Dictionary"
	# complexType = "integer"
	# isArray = "false"
	var _bzz_return_type := "integer"

	self.bee_request(
		bzz_method, bzz_path, bzz_headers, bzz_query, bzz_body,
		func(bzz_result, bzz_code, bzz_headers):
			#print('SUCCESS!')
			#print(bzz_result)
			on_success.call(bzz_result)
			,  # ざわ‥
		func(bzz_error):
			#printerr("FAILURE!")
			#print(bzz_error)
			on_failure.call(bzz_error)
			,  # ざわ‥
	)

# Operation getOrderById → GET /store/order/{orderId}
# Find purchase order by ID
#
# For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
func get_order_by_id(
	# orderId: float   Eg: 789
	# ID of pet that needs to be fetched
	orderId: float,
	on_success: Callable = Callable(),  # func(result: Order)
	on_failure: Callable = Callable(),  # func(error: ApiError)
):
	# CollectionFormat: NO

	# Validate param `orderId` constraints
	if orderId > 5:
		var error := DemoApiError.new()
		error.identifier = "get_order_by_id.param.validation.maximum"
		error.message = "Invalid value for `orderId`, must be smaller than or equal to 5."
		on_failure.call(error)
		return
	if orderId < 1:
		var error := DemoApiError.new()
		error.identifier = "get_order_by_id.param.validation.minimum"
		error.message = "Invalid value for `orderId`, must be greater than or equal to 1."
		on_failure.call(error)
		return


	# Convert the String HTTP method to a Constant Godot understands
	var bzz_method := self.bee_convert_http_method("GET")

	# Compute the URL path to the API resource
	var bzz_path := "/v2/store/order/{orderId}".replace("{" + "orderId" + "}", bee_urlize_path_param(orderId))

	# Collect the headers
	var bzz_headers := Dictionary()
	var bzz_server_produced_mimes := ['application/xml', 'application/json']
	for bzz_mime in BEE_CONSUMABLE_CONTENT_TYPES:
		if bzz_mime in bzz_server_produced_mimes:
			bzz_headers["Accept"] = bzz_mime
			break

	# Collect the query parameters
	# Note: we do not support multiple values for a single param (for now), nor arrays
	var bzz_query := Dictionary()

	var bzz_body = null

	# Will be used at some point for denormalization
	# baseType = "Order"
	# openApiType = "Order"
	# dataType = "Order"
	# complexType = "Order"
	# isArray = "false"
	var _bzz_return_type := "Order"

	self.bee_request(
		bzz_method, bzz_path, bzz_headers, bzz_query, bzz_body,
		func(bzz_result, bzz_code, bzz_headers):
			#print('SUCCESS!')
			#print(bzz_result)
			on_success.call(bzz_result)
			,  # ざわ‥
		func(bzz_error):
			#printerr("FAILURE!")
			#print(bzz_error)
			on_failure.call(bzz_error)
			,  # ざわ‥
	)

# Operation placeOrder → POST /store/order
# Place an order for a pet
func place_order(
	# demoOrder: DemoOrder
	# order placed for purchasing the pet
	demoOrder: DemoOrder,
	on_success: Callable = Callable(),  # func(result: Order)
	on_failure: Callable = Callable(),  # func(error: ApiError)
):
	# CollectionFormat: NO



	# Convert the String HTTP method to a Constant Godot understands
	var bzz_method := self.bee_convert_http_method("POST")

	# Compute the URL path to the API resource
	var bzz_path := "/v2/store/order"

	# Collect the headers
	var bzz_headers := Dictionary()
	var bzz_server_consumed_mimes := ['application/json']
	var bzz_found_target_mime := false
	for bzz_mime in BEE_PRODUCIBLE_CONTENT_TYPES:
		if bzz_mime in bzz_server_consumed_mimes:
			bzz_headers["Content-Type"] = bzz_mime
			bzz_found_target_mime = true
			break
	if not bzz_found_target_mime:
		# This is a bit strict, perhaps we could just warn and send JSON anyway?
		var error := DemoApiError.new()
		error.identifier = "place_order.headers.content_type"
		error.message = "That endpoint only accepts %s as content type(s) and none are supported by this client."
		on_failure.call(error)
		return
	var bzz_server_produced_mimes := ['application/xml', 'application/json']
	for bzz_mime in BEE_CONSUMABLE_CONTENT_TYPES:
		if bzz_mime in bzz_server_produced_mimes:
			bzz_headers["Accept"] = bzz_mime
			break

	# Collect the query parameters
	# Note: we do not support multiple values for a single param (for now), nor arrays
	var bzz_query := Dictionary()

	var bzz_body = null
	bzz_body = demoOrder

	# Will be used at some point for denormalization
	# baseType = "Order"
	# openApiType = "Order"
	# dataType = "Order"
	# complexType = "Order"
	# isArray = "false"
	var _bzz_return_type := "Order"

	self.bee_request(
		bzz_method, bzz_path, bzz_headers, bzz_query, bzz_body,
		func(bzz_result, bzz_code, bzz_headers):
			#print('SUCCESS!')
			#print(bzz_result)
			on_success.call(bzz_result)
			,  # ざわ‥
		func(bzz_error):
			#printerr("FAILURE!")
			#print(bzz_error)
			on_failure.call(bzz_error)
			,  # ざわ‥
	)

