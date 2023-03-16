<a name="__pageTop"></a>
# DemoUserApi   { #DemoUserApi }


All URIs are relative to *http://petstore.swagger.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](#create_user) | **POST** `/user` | Create user
[**create_users_with_array_input**](#create_users_with_array_input) | **POST** `/user/createWithArray` | Creates list of users with given input array
[**create_users_with_list_input**](#create_users_with_list_input) | **POST** `/user/createWithList` | Creates list of users with given input array
[**delete_user**](#delete_user) | **DELETE** `/user/{username}` | Delete user
[**get_user_by_name**](#get_user_by_name) | **GET** `/user/{username}` | Get user by user name
[**login_user**](#login_user) | **GET** `/user/login` | Logs user into the system
[**logout_user**](#logout_user) | **GET** `/user/logout` | Logs out current logged in user session
[**update_user**](#update_user) | **PUT** `/user/{username}` | Updated user

# **create_user**   { #create_user }
<a name="create_user"></a>

> `create_user(demoUser: DemoUser, on_success: Callable, on_failure: Callable)`

Create user

This can only be done by the logged in user.

### Example

* Api Key Authentication (`api_key`)

```gdscript

# Customize configuration, if needed
var config := DemoApiConfig.new()
config.host = "localhost"
config.port = 8080

var api = DemoUserApi.new()
api.config = config  # optionally

var demoUser = DemoUser.new()
# … fill model with data

api.create_user(
	# demoUser: DemoUser
	# Created user object
	demoUser,
	# On Success
	func(result):
		prints("Success!", result)
		pass  # do things
		,
	# On Error
	func(error):  # error is DemoApiError
		printerr(str(error))
		pass  # do things
		,
)

```

# **create_users_with_array_input**   { #create_users_with_array_input }
<a name="create_users_with_array_input"></a>

> `create_users_with_array_input(user: Array, on_success: Callable, on_failure: Callable)`

Creates list of users with given input array



### Example

* Api Key Authentication (`api_key`)

```gdscript

# Customize configuration, if needed
var config := DemoApiConfig.new()
config.host = "localhost"
config.port = 8080

var api = DemoUserApi.new()
api.config = config  # optionally


api.create_users_with_array_input(
	# user: Array
	# List of user object
	user,
	# On Success
	func(result):
		prints("Success!", result)
		pass  # do things
		,
	# On Error
	func(error):  # error is DemoApiError
		printerr(str(error))
		pass  # do things
		,
)

```

# **create_users_with_list_input**   { #create_users_with_list_input }
<a name="create_users_with_list_input"></a>

> `create_users_with_list_input(user: Array, on_success: Callable, on_failure: Callable)`

Creates list of users with given input array



### Example

* Api Key Authentication (`api_key`)

```gdscript

# Customize configuration, if needed
var config := DemoApiConfig.new()
config.host = "localhost"
config.port = 8080

var api = DemoUserApi.new()
api.config = config  # optionally


api.create_users_with_list_input(
	# user: Array
	# List of user object
	user,
	# On Success
	func(result):
		prints("Success!", result)
		pass  # do things
		,
	# On Error
	func(error):  # error is DemoApiError
		printerr(str(error))
		pass  # do things
		,
)

```

# **delete_user**   { #delete_user }
<a name="delete_user"></a>

> `delete_user(username: String, on_success: Callable, on_failure: Callable)`

Delete user

This can only be done by the logged in user.

### Example

* Api Key Authentication (`api_key`)

```gdscript

# Customize configuration, if needed
var config := DemoApiConfig.new()
config.host = "localhost"
config.port = 8080

var api = DemoUserApi.new()
api.config = config  # optionally


api.delete_user(
	# username: String   Eg: username_example
	# The name that needs to be deleted
	username,
	# On Success
	func(result):
		prints("Success!", result)
		pass  # do things
		,
	# On Error
	func(error):  # error is DemoApiError
		printerr(str(error))
		pass  # do things
		,
)

```

# **get_user_by_name**   { #get_user_by_name }
<a name="get_user_by_name"></a>

> `get_user_by_name(username: String, on_success: Callable, on_failure: Callable)`

Get user by user name



### Example


```gdscript

# Customize configuration, if needed
var config := DemoApiConfig.new()
config.host = "localhost"
config.port = 8080

var api = DemoUserApi.new()
api.config = config  # optionally


api.get_user_by_name(
	# username: String   Eg: username_example
	# The name that needs to be fetched. Use user1 for testing.
	username,
	# On Success
	func(result):  # result is DemoUser
		prints("Success!", result)
		pass  # do things
		,
	# On Error
	func(error):  # error is DemoApiError
		printerr(str(error))
		pass  # do things
		,
)

```

# **login_user**   { #login_user }
<a name="login_user"></a>

> `login_user(username: String,password: String, on_success: Callable, on_failure: Callable)`

Logs user into the system



### Example


```gdscript

# Customize configuration, if needed
var config := DemoApiConfig.new()
config.host = "localhost"
config.port = 8080

var api = DemoUserApi.new()
api.config = config  # optionally


api.login_user(
	# username: String   Eg: username_example
	# The user name for login
	username,
	# password: String   Eg: password_example
	# The password for login in clear text
	password,
	# On Success
	func(result):  # result is Demostring
		prints("Success!", result)
		pass  # do things
		,
	# On Error
	func(error):  # error is DemoApiError
		printerr(str(error))
		pass  # do things
		,
)

```

# **logout_user**   { #logout_user }
<a name="logout_user"></a>

> `logout_user( on_success: Callable, on_failure: Callable)`

Logs out current logged in user session



### Example

* Api Key Authentication (`api_key`)

```gdscript

# Customize configuration, if needed
var config := DemoApiConfig.new()
config.host = "localhost"
config.port = 8080

var api = DemoUserApi.new()
api.config = config  # optionally


api.logout_user(
	# On Success
	func(result):
		prints("Success!", result)
		pass  # do things
		,
	# On Error
	func(error):  # error is DemoApiError
		printerr(str(error))
		pass  # do things
		,
)

```

# **update_user**   { #update_user }
<a name="update_user"></a>

> `update_user(username: String,demoUser: DemoUser, on_success: Callable, on_failure: Callable)`

Updated user

This can only be done by the logged in user.

### Example

* Api Key Authentication (`api_key`)

```gdscript

# Customize configuration, if needed
var config := DemoApiConfig.new()
config.host = "localhost"
config.port = 8080

var api = DemoUserApi.new()
api.config = config  # optionally

var demoUser = DemoUser.new()
# … fill model with data

api.update_user(
	# username: String   Eg: username_example
	# name that need to be deleted
	username,
	# demoUser: DemoUser
	# Updated user object
	demoUser,
	# On Success
	func(result):
		prints("Success!", result)
		pass  # do things
		,
	# On Error
	func(error):  # error is DemoApiError
		printerr(str(error))
		pass  # do things
		,
)

```


### Authorization

[api_key](../README.md#api_key), 
[petstore_auth](../README.md#petstore_auth)

[[Back to top]](#__pageTop) \
[[Back to API list]](../README.md#documentation-for-api-endpoints) \
[[Back to Model list]](../README.md#documentation-for-models) \
[[Back to README]](../README.md) \

