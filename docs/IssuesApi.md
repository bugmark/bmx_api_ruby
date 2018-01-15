# BmxApiRuby::IssuesApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_issues**](IssuesApi.md#get_issues) | **GET** /issues | Return all bugs


# **get_issues**
> get_issues

Return all bugs

Return all bugs

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

api_instance = BmxApiRuby::IssuesApi.new

begin
  #Return all bugs
  api_instance.get_issues
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling IssuesApi->get_issues: #{e}"
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



