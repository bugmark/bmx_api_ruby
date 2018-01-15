# BmxApiRuby::AmendmentsApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_amendments**](AmendmentsApi.md#get_amendments) | **GET** /amendments | Return all amendments


# **get_amendments**
> get_amendments

Return all amendments

Return all amendments

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

api_instance = BmxApiRuby::AmendmentsApi.new

begin
  #Return all amendments
  api_instance.get_amendments
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling AmendmentsApi->get_amendments: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



