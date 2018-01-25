# BmxApiRuby::OffersApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_offers**](OffersApi.md#get_offers) | **GET** /offers | List all offers
[**get_offers_uuid**](OffersApi.md#get_offers_uuid) | **GET** /offers/{uuid} | Show offer detail
[**post_offers_buy**](OffersApi.md#post_offers_buy) | **POST** /offers/buy | Create a buy offer


# **get_offers**
> Array&lt;OfferOverview&gt; get_offers

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

begin
  #List all offers
  result = api_instance.get_offers
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling OffersApi->get_offers: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

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
> Status post_offers_buy(side, volume, price, issue, opts)

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

issue = "issue_example" # String | issue UUID

opts = { 
  maturation: "maturation_example", # String | YYMMDD_HHMM (default now + 1.week)
  expiration: "expiration_example", # String | YYMMDD_HHMM (default now + 1.day)
  aon: true # BOOLEAN | all-or-none (default false)
}

begin
  #Create a buy offer
  result = api_instance.post_offers_buy(side, volume, price, issue, opts)
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
 **issue** | **String**| issue UUID | 
 **maturation** | **String**| YYMMDD_HHMM (default now + 1.week) | [optional] 
 **expiration** | **String**| YYMMDD_HHMM (default now + 1.day) | [optional] 
 **aon** | **BOOLEAN**| all-or-none (default false) | [optional] 

### Return type

[**Status**](Status.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



