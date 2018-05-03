# BmxApiRuby::TrackersApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_trackers**](TrackersApi.md#get_trackers) | **GET** /trackers | List all tracker ids
[**get_trackers_detail**](TrackersApi.md#get_trackers_detail) | **GET** /trackers/detail | List all tracker details
[**get_trackers_uuid**](TrackersApi.md#get_trackers_uuid) | **GET** /trackers/{uuid} | Show detail for one tracker
[**post_trackers**](TrackersApi.md#post_trackers) | **POST** /trackers | Create a tracker
[**put_trackers**](TrackersApi.md#put_trackers) | **PUT** /trackers | Sync a tracker


# **get_trackers**
> Array&lt;TrackerIds&gt; get_trackers

List all tracker ids

List all tracker ids

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

api_instance = BmxApiRuby::TrackersApi.new

begin
  #List all tracker ids
  result = api_instance.get_trackers
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling TrackersApi->get_trackers: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TrackerIds&gt;**](TrackerIds.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_trackers_detail**
> Array&lt;TrackerDetail&gt; get_trackers_detail

List all tracker details

List all tracker details

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

api_instance = BmxApiRuby::TrackersApi.new

begin
  #List all tracker details
  result = api_instance.get_trackers_detail
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling TrackersApi->get_trackers_detail: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TrackerDetail&gt;**](TrackerDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_trackers_uuid**
> TrackerDetail get_trackers_uuid(uuid, opts)

Show detail for one tracker

Show detail for one tracker

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

api_instance = BmxApiRuby::TrackersApi.new

uuid = "uuid_example" # String | tracker UUID

opts = { 
  issues: true # BOOLEAN | include issues
}

begin
  #Show detail for one tracker
  result = api_instance.get_trackers_uuid(uuid, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling TrackersApi->get_trackers_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| tracker UUID | 
 **issues** | **BOOLEAN**| include issues | [optional] 

### Return type

[**TrackerDetail**](TrackerDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_trackers**
> TrackerIds post_trackers(type, name, opts)

Create a tracker

Create a GitHub tracker. 

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

api_instance = BmxApiRuby::TrackersApi.new

type = "type_example" # String | tracker type

name = "name_example" # String | tracker name

opts = { 
  ghsync: true # BOOLEAN | GH sync on create
}

begin
  #Create a tracker
  result = api_instance.post_trackers(type, name, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling TrackersApi->post_trackers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| tracker type | 
 **name** | **String**| tracker name | 
 **ghsync** | **BOOLEAN**| GH sync on create | [optional] 

### Return type

[**TrackerIds**](TrackerIds.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_trackers**
> Status put_trackers(uuid)

Sync a tracker

Sync a GitHub tracker. 

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

api_instance = BmxApiRuby::TrackersApi.new

uuid = "uuid_example" # String | tracker uuid


begin
  #Sync a tracker
  result = api_instance.put_trackers(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling TrackersApi->put_trackers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| tracker uuid | 

### Return type

[**Status**](Status.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



