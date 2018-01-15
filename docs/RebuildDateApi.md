# BmxApiRuby::RebuildDateApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_rebuild_date**](RebuildDateApi.md#get_rebuild_date) | **GET** /rebuild_date | Return the system rebuild time


# **get_rebuild_date**
> get_rebuild_date

Return the system rebuild time

Return the system rebuild time

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

api_instance = BmxApiRuby::RebuildDateApi.new

begin
  #Return the system rebuild time
  api_instance.get_rebuild_date
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling RebuildDateApi->get_rebuild_date: #{e}"
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



