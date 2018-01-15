# BmxRuby::ReposApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_repos**](ReposApi.md#get_repos) | **GET** /repos | Return all repos


# **get_repos**
> get_repos

Return all repos

Return all repos

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

api_instance = BmxRuby::ReposApi.new

begin
  #Return all repos
  api_instance.get_repos
rescue BmxRuby::ApiError => e
  puts "Exception when calling ReposApi->get_repos: #{e}"
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



