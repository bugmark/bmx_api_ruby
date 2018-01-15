# BmxApiRuby::ContractsApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_contracts**](ContractsApi.md#get_contracts) | **GET** /contracts | Return all contracts


# **get_contracts**
> get_contracts

Return all contracts

Return all contracts

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

api_instance = BmxApiRuby::ContractsApi.new

begin
  #Return all contracts
  api_instance.get_contracts
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractsApi->get_contracts: #{e}"
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



