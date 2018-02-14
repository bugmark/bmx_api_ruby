# BmxApiRuby::ContractApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_contract**](ContractApi.md#get_contract) | **GET** /contract | List all contracts
[**get_contract_uuid**](ContractApi.md#get_contract_uuid) | **GET** /contract/{uuid} | Show contract detail
[**get_contract_uuid_escrows**](ContractApi.md#get_contract_uuid_escrows) | **GET** /contract/{uuid}/escrows | Show contract escrows
[**get_contract_uuid_open_offers**](ContractApi.md#get_contract_uuid_open_offers) | **GET** /contract/{uuid}/open_offers | Show contract open_offers
[**get_contract_uuid_series**](ContractApi.md#get_contract_uuid_series) | **GET** /contract/{uuid}/series | Show contract series
[**post_contract_offer_uuid**](ContractApi.md#post_contract_offer_uuid) | **POST** /contract/{offer_uuid} | Cross offer
[**put_contract_uuid_resolve**](ContractApi.md#put_contract_uuid_resolve) | **PUT** /contract/{uuid}/resolve | Resolve contract


# **get_contract**
> Array&lt;ContractOverview&gt; get_contract

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

api_instance = BmxApiRuby::ContractApi.new

begin
  #List all contracts
  result = api_instance.get_contract
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->get_contract: #{e}"
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



# **get_contract_uuid**
> ContractDetail get_contract_uuid(uuid)

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

api_instance = BmxApiRuby::ContractApi.new

uuid = 56 # Integer | 


begin
  #Show contract detail
  result = api_instance.get_contract_uuid(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->get_contract_uuid: #{e}"
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



# **get_contract_uuid_escrows**
> Array&lt;EscrowDetail&gt; get_contract_uuid_escrows(uuid)

Show contract escrows

Show contract escrows

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

api_instance = BmxApiRuby::ContractApi.new

uuid = 56 # Integer | 


begin
  #Show contract escrows
  result = api_instance.get_contract_uuid_escrows(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->get_contract_uuid_escrows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**Array&lt;EscrowDetail&gt;**](EscrowDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_contract_uuid_open_offers**
> Array&lt;OfferDetail&gt; get_contract_uuid_open_offers(uuid)

Show contract open_offers

Show contract open_offers

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

api_instance = BmxApiRuby::ContractApi.new

uuid = 56 # Integer | 


begin
  #Show contract open_offers
  result = api_instance.get_contract_uuid_open_offers(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->get_contract_uuid_open_offers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**Array&lt;OfferDetail&gt;**](OfferDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_contract_uuid_series**
> Status get_contract_uuid_series(uuid)

Show contract series

Show contract series

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

api_instance = BmxApiRuby::ContractApi.new

uuid = 56 # Integer | 


begin
  #Show contract series
  result = api_instance.get_contract_uuid_series(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->get_contract_uuid_series: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**Status**](Status.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_contract_offer_uuid**
> Status post_contract_offer_uuid(commit_type, offer_uuid)

Cross offer

Cross offer

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

api_instance = BmxApiRuby::ContractApi.new

commit_type = "commit_type_example" # String | expand, transfer or reduce

offer_uuid = 56 # Integer | 


begin
  #Cross offer
  result = api_instance.post_contract_offer_uuid(commit_type, offer_uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->post_contract_offer_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commit_type** | **String**| expand, transfer or reduce | 
 **offer_uuid** | **Integer**|  | 

### Return type

[**Status**](Status.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_contract_uuid_resolve**
> Status put_contract_uuid_resolve(uuid)

Resolve contract

Resolve contract

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

api_instance = BmxApiRuby::ContractApi.new

uuid = 56 # Integer | 


begin
  #Resolve contract
  result = api_instance.put_contract_uuid_resolve(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->put_contract_uuid_resolve: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**Status**](Status.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



