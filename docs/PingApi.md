# BmxApiRuby::PingApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_ping**](PingApi.md#get_ping) | **GET** /ping | Check server access


# **get_ping**
> Status get_ping

Check server access

Check server access

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

api_instance = BmxApiRuby::PingApi.new

begin
  #Check server access
  result = api_instance.get_ping
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling PingApi->get_ping: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Status**](Status.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



