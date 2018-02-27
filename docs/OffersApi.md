# BmxApiRuby::OffersApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_offers**](OffersApi.md#get_offers) | **GET** /offers | List all offers
[**get_offers_uuid**](OffersApi.md#get_offers_uuid) | **GET** /offers/{uuid} | Show offer detail
[**post_offers_buy**](OffersApi.md#post_offers_buy) | **POST** /offers/buy | Create a buy offer
[**post_offers_uuid_clone**](OffersApi.md#post_offers_uuid_clone) | **POST** /offers/{uuid}/clone | Create a clone
[**post_offers_uuid_counter**](OffersApi.md#post_offers_uuid_counter) | **POST** /offers/{uuid}/counter | Create a counter-offer
[**put_offers_uuid_cancel**](OffersApi.md#put_offers_uuid_cancel) | **PUT** /offers/{uuid}/cancel | Cancel offer


# **get_offers**
> Array&lt;OfferOverview&gt; get_offers(opts)

List all offers

List all offers

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

api_instance = BmxApiRuby::OffersApi.new

opts = { 
  with_type: "with_type_example", # String | type filter
  with_status: "with_status_example", # String | status filter
  limit: 56 # Integer | limit
}

begin
  #List all offers
  result = api_instance.get_offers(opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling OffersApi->get_offers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with_type** | **String**| type filter | [optional] 
 **with_status** | **String**| status filter | [optional] 
 **limit** | **Integer**| limit | [optional] 

### Return type

[**Array&lt;OfferOverview&gt;**](OfferOverview.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_offers_uuid**
> OfferDetail get_offers_uuid(uuid)

Show offer detail

Show offer detail

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

api_instance = BmxApiRuby::OffersApi.new

uuid = 56 # Integer | 


begin
  #Show offer detail
  result = api_instance.get_offers_uuid(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling OffersApi->get_offers_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**OfferDetail**](OfferDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_offers_buy**
> OfferCreated post_offers_buy(side, volume, price, opts)

Create a buy offer

Create a buy offer

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

api_instance = BmxApiRuby::OffersApi.new

side = "side_example" # String | fixed or unfixed

volume = 56 # Integer | number of positions

price = 3.4 # Float | between 0.0 and 1.0

opts = { 
  repo: "repo_example", # String | repo UUID
  issue: "issue_example", # String | issue UUID
  title: "title_example", # String | issue title
  labels: "labels_example", # String | issue labels
  status: "status_example", # String | issue status
  maturation: "maturation_example", # String | YYMMDD_HHMM (default now + 1.week)
  expiration: "expiration_example", # String | YYMMDD_HHMM (default now + 1.day)
  maturation_offset: "maturation_offset_example", # String | offset string (see long description)
  expiration_offset: "expiration_offset_example", # String | offset string (see long description)
  poolable: true, # BOOLEAN | poolable? (default false)
  aon: true # BOOLEAN | all-or-none? (default false)
}

begin
  #Create a buy offer
  result = api_instance.post_offers_buy(side, volume, price, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling OffersApi->post_offers_buy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **side** | **String**| fixed or unfixed | 
 **volume** | **Integer**| number of positions | 
 **price** | **Float**| between 0.0 and 1.0 | 
 **repo** | **String**| repo UUID | [optional] 
 **issue** | **String**| issue UUID | [optional] 
 **title** | **String**| issue title | [optional] 
 **labels** | **String**| issue labels | [optional] 
 **status** | **String**| issue status | [optional] 
 **maturation** | **String**| YYMMDD_HHMM (default now + 1.week) | [optional] 
 **expiration** | **String**| YYMMDD_HHMM (default now + 1.day) | [optional] 
 **maturation_offset** | **String**| offset string (see long description) | [optional] 
 **expiration_offset** | **String**| offset string (see long description) | [optional] 
 **poolable** | **BOOLEAN**| poolable? (default false) | [optional] 
 **aon** | **BOOLEAN**| all-or-none? (default false) | [optional] 

### Return type

[**OfferCreated**](OfferCreated.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_offers_uuid_clone**
> OfferCreated post_offers_uuid_clone(uuid, opts)

Create a clone

Create a clone

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

api_instance = BmxApiRuby::OffersApi.new

uuid = 56 # Integer | 

opts = { 
  volume: 56, # Integer | number of positions
  price: 3.4, # Float | between 0.0 and 1.0
  repo: "repo_example", # String | repo UUID
  issue: "issue_example", # String | issue UUID
  title: "title_example", # String | issue title
  labels: "labels_example", # String | issue labels
  status: "status_example", # String | issue status
  maturation: "maturation_example", # String | YYMMDD_HHMM (default now + 1.week)
  expiration: "expiration_example", # String | YYMMDD_HHMM (default now + 1.day)
  maturation_offset: "maturation_offset_example", # String | offset string (see long description)
  expiration_offset: "expiration_offset_example", # String | offset string (see long description)
  poolable: true, # BOOLEAN | poolable? (default false)
  aon: true # BOOLEAN | all-or-none? (default false)
}

begin
  #Create a clone
  result = api_instance.post_offers_uuid_clone(uuid, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling OffersApi->post_offers_uuid_clone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 
 **volume** | **Integer**| number of positions | [optional] 
 **price** | **Float**| between 0.0 and 1.0 | [optional] 
 **repo** | **String**| repo UUID | [optional] 
 **issue** | **String**| issue UUID | [optional] 
 **title** | **String**| issue title | [optional] 
 **labels** | **String**| issue labels | [optional] 
 **status** | **String**| issue status | [optional] 
 **maturation** | **String**| YYMMDD_HHMM (default now + 1.week) | [optional] 
 **expiration** | **String**| YYMMDD_HHMM (default now + 1.day) | [optional] 
 **maturation_offset** | **String**| offset string (see long description) | [optional] 
 **expiration_offset** | **String**| offset string (see long description) | [optional] 
 **poolable** | **BOOLEAN**| poolable? (default false) | [optional] 
 **aon** | **BOOLEAN**| all-or-none? (default false) | [optional] 

### Return type

[**OfferCreated**](OfferCreated.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_offers_uuid_counter**
> OfferCreated post_offers_uuid_counter(uuid)

Create a counter-offer

Create a counter-offer

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

api_instance = BmxApiRuby::OffersApi.new

uuid = 56 # Integer | 


begin
  #Create a counter-offer
  result = api_instance.post_offers_uuid_counter(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling OffersApi->post_offers_uuid_counter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**OfferCreated**](OfferCreated.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_offers_uuid_cancel**
> OfferDetail put_offers_uuid_cancel(uuid)

Cancel offer

Cancel offer

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

api_instance = BmxApiRuby::OffersApi.new

uuid = 56 # Integer | 


begin
  #Cancel offer
  result = api_instance.put_offers_uuid_cancel(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling OffersApi->put_offers_uuid_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**OfferDetail**](OfferDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



