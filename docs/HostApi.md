# BmxApiRuby::HostApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_host_counts**](HostApi.md#get_host_counts) | **GET** /host/counts | counts
[**get_host_info**](HostApi.md#get_host_info) | **GET** /host/info | get host info
[**get_host_next_week_ends**](HostApi.md#get_host_next_week_ends) | **GET** /host/next_week_ends | next week-ends
[**get_host_ping**](HostApi.md#get_host_ping) | **GET** /host/ping | check server access
[**post_host_rebuild**](HostApi.md#post_host_rebuild) | **POST** /host/rebuild | rebuild
[**put_host_increment_day_offset**](HostApi.md#put_host_increment_day_offset) | **PUT** /host/increment_day_offset | increment day offset


# **get_host_counts**
> HostCount get_host_counts

counts

Show host object counts: number of users, offers, contracts, etc. 

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
  #counts
  result = api_instance.get_host_counts
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling HostApi->get_host_counts: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HostCount**](HostCount.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_host_info**
> HostInfo get_host_info

get host info

Show host info: host-time, day offset, datastore type, etc. 

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
  #get host info
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



# **get_host_ping**
> Status get_host_ping

check server access

check server access

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
  #check server access
  result = api_instance.get_host_ping
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling HostApi->get_host_ping: #{e}"
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



# **post_host_rebuild**
> Status post_host_rebuild(affirm)

rebuild

Destroy all data and rebuild the system. The rebuilt system  will have one user: `user/pass` = `admin@bugmark.net/bugmark`.  To run this command, you must post a confirmation parameter: `/host/rebuild?confirm=destroy_all_data`  The rebuild command is intended for use on hosts dedicated for  research and testing. (and not production!)  The rebuild command will work for hosts with `mutable` datastores, and will fail for hosts with `permanent` datastores.  View the datastore setting with the `/hosts/info` command. 

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

affirm = "affirm_example" # String | confirmation


begin
  #rebuild
  result = api_instance.post_host_rebuild(affirm)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling HostApi->post_host_rebuild: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **affirm** | **String**| confirmation | 

### Return type

[**Status**](Status.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: application/json
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



