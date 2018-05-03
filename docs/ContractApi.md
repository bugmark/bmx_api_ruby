# BmxApiRuby::ContractApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_contract**](ContractApi.md#get_contract) | **GET** /contract | List all contracts
[**get_contract_uuid**](ContractApi.md#get_contract_uuid) | **GET** /contract/{uuid} | Show contract detail
[**get_contract_uuid_amendments**](ContractApi.md#get_contract_uuid_amendments) | **GET** /contract/{uuid}/amendments | Show contract amendments
[**get_contract_uuid_escrows**](ContractApi.md#get_contract_uuid_escrows) | **GET** /contract/{uuid}/escrows | Show contract escrows
[**get_contract_uuid_open_offers**](ContractApi.md#get_contract_uuid_open_offers) | **GET** /contract/{uuid}/open_offers | Show contract open_offers
[**get_contract_uuid_positions**](ContractApi.md#get_contract_uuid_positions) | **GET** /contract/{uuid}/positions | Show contract positions
[**post_contract_contract_uuid_cancel**](ContractApi.md#post_contract_contract_uuid_cancel) | **POST** /contract/{contract_uuid}/cancel | Cancel contract
[**post_contract_contract_uuid_clone**](ContractApi.md#post_contract_contract_uuid_clone) | **POST** /contract/{contract_uuid}/clone | Clone contract
[**post_contract_create**](ContractApi.md#post_contract_create) | **POST** /contract/create | Create contract
[**post_contract_offer_uuid_cross**](ContractApi.md#post_contract_offer_uuid_cross) | **POST** /contract/{offer_uuid}/cross | Cross offer
[**put_contract_uuid_resolve**](ContractApi.md#put_contract_uuid_resolve) | **PUT** /contract/{uuid}/resolve | Resolve contract


# **get_contract**
> Array&lt;ContractIds&gt; get_contract

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

[**Array&lt;ContractIds&gt;**](ContractIds.md)

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



# **get_contract_uuid_amendments**
> Array&lt;AmendmentDetail&gt; get_contract_uuid_amendments(uuid)

Show contract amendments

Show contract amendments

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
  #Show contract amendments
  result = api_instance.get_contract_uuid_amendments(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->get_contract_uuid_amendments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**Array&lt;AmendmentDetail&gt;**](AmendmentDetail.md)

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



# **get_contract_uuid_positions**
> Array&lt;PositionDetail&gt; get_contract_uuid_positions(uuid)

Show contract positions

Show contract positions

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
  #Show contract positions
  result = api_instance.get_contract_uuid_positions(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->get_contract_uuid_positions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**Array&lt;PositionDetail&gt;**](PositionDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_contract_contract_uuid_cancel**
> ContractStatus post_contract_contract_uuid_cancel(contract_uuid)

Cancel contract

Cancel contract

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

contract_uuid = 56 # Integer | 


begin
  #Cancel contract
  result = api_instance.post_contract_contract_uuid_cancel(contract_uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->post_contract_contract_uuid_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_uuid** | **Integer**|  | 

### Return type

[**ContractStatus**](ContractStatus.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_contract_contract_uuid_clone**
> ContractStatus post_contract_contract_uuid_clone(contract_uuid, opts)

Clone contract

Clone contract

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

contract_uuid = 56 # Integer | 

opts = { 
  issue: "issue_example", # String | issue UUID
  tracker: "tracker_example", # String | tracker UUID
  title: "title_example", # String | title
  status: "status_example", # String | status
  labels: "labels_example", # String | labels
  maturation: "maturation_example" # String | YYMMDD_HHMM (default now + 1.week)
}

begin
  #Clone contract
  result = api_instance.post_contract_contract_uuid_clone(contract_uuid, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->post_contract_contract_uuid_clone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_uuid** | **Integer**|  | 
 **issue** | **String**| issue UUID | [optional] 
 **tracker** | **String**| tracker UUID | [optional] 
 **title** | **String**| title | [optional] 
 **status** | **String**| status | [optional] 
 **labels** | **String**| labels | [optional] 
 **maturation** | **String**| YYMMDD_HHMM (default now + 1.week) | [optional] 

### Return type

[**ContractStatus**](ContractStatus.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_contract_create**
> ContractStatus post_contract_create(opts)

Create contract

Create contract

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

opts = { 
  issue: "issue_example", # String | issue UUID
  tracker: "tracker_example", # String | tracker UUID
  title: "title_example", # String | title
  status: "status_example", # String | status
  labels: "labels_example", # String | labels
  maturation: "maturation_example" # String | YYMMDD_HHMM (default now + 1.week)
}

begin
  #Create contract
  result = api_instance.post_contract_create(opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->post_contract_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue** | **String**| issue UUID | [optional] 
 **tracker** | **String**| tracker UUID | [optional] 
 **title** | **String**| title | [optional] 
 **status** | **String**| status | [optional] 
 **labels** | **String**| labels | [optional] 
 **maturation** | **String**| YYMMDD_HHMM (default now + 1.week) | [optional] 

### Return type

[**ContractStatus**](ContractStatus.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_contract_offer_uuid_cross**
> ContractStatus post_contract_offer_uuid_cross(commit_type, offer_uuid)

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
  result = api_instance.post_contract_offer_uuid_cross(commit_type, offer_uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->post_contract_offer_uuid_cross: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commit_type** | **String**| expand, transfer or reduce | 
 **offer_uuid** | **Integer**|  | 

### Return type

[**ContractStatus**](ContractStatus.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_contract_uuid_resolve**
> ContractStatus put_contract_uuid_resolve(uuid)

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

[**ContractStatus**](ContractStatus.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



