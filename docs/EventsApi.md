# BmxApiRuby::EventsApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_events**](EventsApi.md#get_events) | **GET** /events | Return events
[**put_events**](EventsApi.md#put_events) | **PUT** /events | Update an event


# **get_events**
> Array&lt;Event&gt; get_events(opts)

Return events

Return events

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

api_instance = BmxApiRuby::EventsApi.new

opts = { 
  after: 56 # Integer | <cursor> an event-ID
}

begin
  #Return events
  result = api_instance.get_events(opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling EventsApi->get_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **Integer**| &lt;cursor&gt; an event-ID | [optional] 

### Return type

[**Array&lt;Event&gt;**](Event.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_events**
> Event put_events(id, etherscan_url)

Update an event

Update an event

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

api_instance = BmxApiRuby::EventsApi.new

id = 56 # Integer | 

etherscan_url = "etherscan_url_example" # String | 


begin
  #Update an event
  result = api_instance.put_events(id, etherscan_url)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling EventsApi->put_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **etherscan_url** | **String**|  | 

### Return type

[**Event**](Event.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



