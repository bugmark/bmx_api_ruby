# BmxApiRuby::PositionsApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_positions**](PositionsApi.md#get_positions) | **GET** /positions | Return all positions


# **get_positions**
> get_positions

Return all positions

Return all positions

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

api_instance = BmxApiRuby::PositionsApi.new

begin
  #Return all positions
  api_instance.get_positions
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling PositionsApi->get_positions: #{e}"
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



