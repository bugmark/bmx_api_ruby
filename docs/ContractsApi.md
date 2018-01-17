# BmxApiRuby::ContractsApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_contracts**](ContractsApi.md#get_contracts) | **GET** /contracts | List all contracts
[**get_contracts_uuid**](ContractsApi.md#get_contracts_uuid) | **GET** /contracts/{uuid} | Show contract detail


# **get_contracts**
> Array&lt;ContractOverview&gt; get_contracts

List all contracts

List all contracts

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
  #List all contracts
  result = api_instance.get_contracts
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractsApi->get_contracts: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ContractOverview&gt;**](ContractOverview.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_contracts_uuid**
> ContractDetail get_contracts_uuid(uuid)

Show contract detail

Show contract detail

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

uuid = 56 # Integer | 


begin
  #Show contract detail
  result = api_instance.get_contracts_uuid(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractsApi->get_contracts_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**ContractDetail**](ContractDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



