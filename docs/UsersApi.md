# BmxApiRuby::UsersApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_users**](UsersApi.md#get_users) | **GET** /users | List all users
[**get_users_email**](UsersApi.md#get_users_email) | **GET** /users/{email} | Show user detail
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users_email**
> UserDetail get_users_email(email, opts)

Show user detail

Show user detail

### Example
```ruby
# load the gem
require 'bmx_api_ruby'

api_instance = BmxApiRuby::UsersApi.new

email = "email_example" # String | user email address

opts = { 
  offers: true, # BOOLEAN | include open offers
  positions: true # BOOLEAN | include open positions
}

begin
  #Show user detail
  result = api_instance.get_users_email(email, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling UsersApi->get_users_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| user email address | 
 **offers** | **BOOLEAN**| include open offers | [optional] 
 **positions** | **BOOLEAN**| include open positions | [optional] 

### Return type

[**UserDetail**](UserDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_users**
> Status post_users(usermail, password, opts)

Create a user

Create a user.  Supply an optional opening balance.  (Default 0.0) 

### Example
```ruby
# load the gem
require 'bmx_api_ruby'

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

[**Status**](Status.md)

### Authorization

No authorization required

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

No authorization required

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

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



