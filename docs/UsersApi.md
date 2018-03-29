# BmxApiRuby::UsersApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_users**](UsersApi.md#get_users) | **GET** /users | List all user ids
[**get_users_detail**](UsersApi.md#get_users_detail) | **GET** /users/detail | List all user details
[**get_users_uuid**](UsersApi.md#get_users_uuid) | **GET** /users/{uuid} | Show details for one user
[**post_users**](UsersApi.md#post_users) | **POST** /users | Create a user
[**put_users_uuid_deposit**](UsersApi.md#put_users_uuid_deposit) | **PUT** /users/{uuid}/deposit | Deposit funds
[**put_users_uuid_withdraw**](UsersApi.md#put_users_uuid_withdraw) | **PUT** /users/{uuid}/withdraw | Withdraw funds


# **get_users**
> Array&lt;UserIds&gt; get_users(opts)

List all user ids

List all user ids

### Example
```ruby
# load the gem
require 'bmx_api_ruby'
# setup authorization
BmxApiRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BmxApiRuby::UsersApi.new

opts = { 
  with_email: "with_email_example" # String | email filter
}

begin
  #List all user ids
  result = api_instance.get_users(opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling UsersApi->get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with_email** | **String**| email filter | [optional] 

### Return type

[**Array&lt;UserIds&gt;**](UserIds.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users_detail**
> Array&lt;UserDetail&gt; get_users_detail(opts)

List all user details

List all user details

### Example
```ruby
# load the gem
require 'bmx_api_ruby'
# setup authorization
BmxApiRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BmxApiRuby::UsersApi.new

opts = { 
  with_email: "with_email_example" # String | email filter
}

begin
  #List all user details
  result = api_instance.get_users_detail(opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling UsersApi->get_users_detail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with_email** | **String**| email filter | [optional] 

### Return type

[**Array&lt;UserDetail&gt;**](UserDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users_uuid**
> UserDetail get_users_uuid(uuid, opts)

Show details for one user

Show details for one user

### Example
```ruby
# load the gem
require 'bmx_api_ruby'
# setup authorization
BmxApiRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BmxApiRuby::UsersApi.new

uuid = "uuid_example" # String | user uuid

opts = { 
  offers: true, # BOOLEAN | include open offers
  positions: true # BOOLEAN | include open positions
}

begin
  #Show details for one user
  result = api_instance.get_users_uuid(uuid, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling UsersApi->get_users_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| user uuid | 
 **offers** | **BOOLEAN**| include open offers | [optional] 
 **positions** | **BOOLEAN**| include open positions | [optional] 

### Return type

[**UserDetail**](UserDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_users**
> UserIds post_users(usermail, password, opts)

Create a user

Create a user.  Supply an optional opening balance.  (Default 0.0) 

### Example
```ruby
# load the gem
require 'bmx_api_ruby'
# setup authorization
BmxApiRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BmxApiRuby::UsersApi.new

usermail = "usermail_example" # String | user email

password = "password_example" # String | user password

opts = { 
  balance: 3.4 # Float | opening balance
}

begin
  #Create a user
  result = api_instance.post_users(usermail, password, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling UsersApi->post_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usermail** | **String**| user email | 
 **password** | **String**| user password | 
 **balance** | **Float**| opening balance | [optional] 

### Return type

[**UserIds**](UserIds.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_users_uuid_deposit**
> Status put_users_uuid_deposit(amount, uuid)

Deposit funds

Deposit funds

### Example
```ruby
# load the gem
require 'bmx_api_ruby'
# setup authorization
BmxApiRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BmxApiRuby::UsersApi.new

amount = 3.4 # Float | 

uuid = 56 # Integer | 


begin
  #Deposit funds
  result = api_instance.put_users_uuid_deposit(amount, uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling UsersApi->put_users_uuid_deposit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amount** | **Float**|  | 
 **uuid** | **Integer**|  | 

### Return type

[**Status**](Status.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_users_uuid_withdraw**
> Status put_users_uuid_withdraw(amount, uuid)

Withdraw funds

Withdraw funds

### Example
```ruby
# load the gem
require 'bmx_api_ruby'
# setup authorization
BmxApiRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BmxApiRuby::UsersApi.new

amount = 3.4 # Float | 

uuid = 56 # Integer | 


begin
  #Withdraw funds
  result = api_instance.put_users_uuid_withdraw(amount, uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling UsersApi->put_users_uuid_withdraw: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amount** | **Float**|  | 
 **uuid** | **Integer**|  | 

### Return type

[**Status**](Status.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



