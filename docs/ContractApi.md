# BmxApiRuby::ContractApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_contract**](ContractApi.md#get_contract) | **GET** /contract | List all contracts
[**get_contract_uuid**](ContractApi.md#get_contract_uuid) | **GET** /contract/{uuid} | Show contract detail
[**post_contract_offer_uuid**](ContractApi.md#post_contract_offer_uuid) | **POST** /contract/{offer_uuid} | Cross offer


# **get_contract**
> Array&lt;ContractOverview&gt; get_contract

List all contracts

List all contracts

### Example
```ruby
# load the gem
require 'bmx_api_ruby'

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

No authorization required

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

No authorization required

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

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



