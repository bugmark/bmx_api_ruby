# BmxRuby::OffersApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_offers**](OffersApi.md#get_offers) | **GET** /offers | Return all offers


# **get_offers**
> get_offers

Return all offers

Return all offers

### Example
```ruby
# load the gem
require 'bmx_ruby'
# setup authorization
BmxRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BmxRuby::OffersApi.new

begin
  #Return all offers
  api_instance.get_offers
rescue BmxRuby::ApiError => e
  puts "Exception when calling OffersApi->get_offers: #{e}"
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



