# BmxApiRuby::UsersApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_users**](UsersApi.md#get_users) | **GET** /users | List all users
[**get_users_usermail**](UsersApi.md#get_users_usermail) | **GET** /users/{usermail} | Show user detail
[**post_users**](UsersApi.md#post_users) | **POST** /users | Create a user
[**put_users_uuid_deposit**](UsersApi.md#put_users_uuid_deposit) | **PUT** /users/{uuid}/deposit | Deposit funds
[**put_users_uuid_withdraw**](UsersApi.md#put_users_uuid_withdraw) | **PUT** /users/{uuid}/withdraw | Withdraw funds


# **get_users**
> Array&lt;UserOverview&gt; get_users

List all users

List all users

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

begin
  #List all users
  result = api_instance.get_users
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling UsersApi->get_users: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;UserOverview&gt;**](UserOverview.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users_usermail**
> UserDetail get_users_usermail(usermail)

Show user detail

Show user detail

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

usermail = 56 # Integer | 


begin
  #Show user detail
  result = api_instance.get_users_usermail(usermail)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling UsersApi->get_users_usermail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usermail** | **Integer**|  | 

### Return type

[**UserDetail**](UserDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_users**
> Status post_users(usermail, password)

Create a user

Create a user

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

usermail = "usermail_example" # String | 

password = "password_example" # String | 


begin
  #Create a user
  result = api_instance.post_users(usermail, password)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling UsersApi->post_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usermail** | **String**|  | 
 **password** | **String**|  | 

### Return type

[**Status**](Status.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: application/json
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

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_users_uuid_withdraw**
> put_users_uuid_withdraw(uuid)

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

uuid = 56 # Integer | 


begin
  #Withdraw funds
  api_instance.put_users_uuid_withdraw(uuid)
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling UsersApi->put_users_uuid_withdraw: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



