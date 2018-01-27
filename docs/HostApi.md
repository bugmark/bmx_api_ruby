# BmxApiRuby::HostApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_host_info**](HostApi.md#get_host_info) | **GET** /host/info | info
[**get_host_next_week_ends**](HostApi.md#get_host_next_week_ends) | **GET** /host/next_week_ends | next week-ends
[**get_host_rebuild**](HostApi.md#get_host_rebuild) | **GET** /host/rebuild | rebuild
[**put_host_increment_day_offset**](HostApi.md#put_host_increment_day_offset) | **PUT** /host/increment_day_offset | increment day offset


# **get_host_info**
> HostInfo get_host_info

info

info

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

api_instance = BmxApiRuby::HostApi.new

begin
  #info
  result = api_instance.get_host_info
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling HostApi->get_host_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HostInfo**](HostInfo.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_host_next_week_ends**
> Array&lt;TimeWeekEnds&gt; get_host_next_week_ends(opts)

next week-ends

next week-ends

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

api_instance = BmxApiRuby::HostApi.new

opts = { 
  count: 56 # Integer | count (default 4)
}

begin
  #next week-ends
  result = api_instance.get_host_next_week_ends(opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling HostApi->get_host_next_week_ends: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Integer**| count (default 4) | [optional] 

### Return type

[**Array&lt;TimeWeekEnds&gt;**](TimeWeekEnds.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_host_rebuild**
> get_host_rebuild

rebuild

rebuild

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

api_instance = BmxApiRuby::HostApi.new

begin
  #rebuild
  api_instance.get_host_rebuild
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling HostApi->get_host_rebuild: #{e}"
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



# **put_host_increment_day_offset**
> Status put_host_increment_day_offset(opts)

increment day offset

increment day offset

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

api_instance = BmxApiRuby::HostApi.new

opts = { 
  count: 56 # Integer | count (default 1)
}

begin
  #increment day offset
  result = api_instance.put_host_increment_day_offset(opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling HostApi->put_host_increment_day_offset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Integer**| count (default 1) | [optional] 

### Return type

[**Status**](Status.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



