# BmxApiRuby::TimeApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_time_day_offset**](TimeApi.md#get_time_day_offset) | **GET** /time/day_offset | day offset
[**get_time_future_week_ends**](TimeApi.md#get_time_future_week_ends) | **GET** /time/future_week_ends | future week-ends
[**get_time_now**](TimeApi.md#get_time_now) | **GET** /time/now | current exchange time
[**get_time_rebuild_date**](TimeApi.md#get_time_rebuild_date) | **GET** /time/rebuild_date | system rebuild real-time
[**put_time_increment_day_offset**](TimeApi.md#put_time_increment_day_offset) | **PUT** /time/increment_day_offset | increment day offset


# **get_time_day_offset**
> get_time_day_offset

day offset

day offset

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

api_instance = BmxApiRuby::TimeApi.new

begin
  #day offset
  api_instance.get_time_day_offset
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling TimeApi->get_time_day_offset: #{e}"
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



# **get_time_future_week_ends**
> get_time_future_week_ends(opts)

future week-ends

future week-ends

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

api_instance = BmxApiRuby::TimeApi.new

opts = { 
  count: 56 # Integer | count (default 4)
}

begin
  #future week-ends
  api_instance.get_time_future_week_ends(opts)
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling TimeApi->get_time_future_week_ends: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Integer**| count (default 4) | [optional] 

### Return type

nil (empty response body)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_time_now**
> get_time_now

current exchange time

current exchange time

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

api_instance = BmxApiRuby::TimeApi.new

begin
  #current exchange time
  api_instance.get_time_now
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling TimeApi->get_time_now: #{e}"
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



# **get_time_rebuild_date**
> get_time_rebuild_date

system rebuild real-time

system rebuild real-time

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

api_instance = BmxApiRuby::TimeApi.new

begin
  #system rebuild real-time
  api_instance.get_time_rebuild_date
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling TimeApi->get_time_rebuild_date: #{e}"
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



# **put_time_increment_day_offset**
> Status put_time_increment_day_offset(opts)

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

api_instance = BmxApiRuby::TimeApi.new

opts = { 
  count: 56 # Integer | count (default 1)
}

begin
  #increment day offset
  result = api_instance.put_time_increment_day_offset(opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling TimeApi->put_time_increment_day_offset: #{e}"
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



