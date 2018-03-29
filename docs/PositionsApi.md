# BmxApiRuby::PositionsApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_positions**](PositionsApi.md#get_positions) | **GET** /positions | List all positions
[**get_positions_uuid**](PositionsApi.md#get_positions_uuid) | **GET** /positions/{uuid} | Show position detail


# **get_positions**
> Array&lt;PositionIds&gt; get_positions

List all positions

List all positions

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
  #List all positions
  result = api_instance.get_positions
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling PositionsApi->get_positions: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PositionIds&gt;**](PositionIds.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_positions_uuid**
> PositionDetail get_positions_uuid(uuid)

Show position detail

Show position detail

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

uuid = 56 # Integer | 


begin
  #Show position detail
  result = api_instance.get_positions_uuid(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling PositionsApi->get_positions_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**PositionDetail**](PositionDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



