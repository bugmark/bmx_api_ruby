# BmxApiRuby::IssuesApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_issues**](IssuesApi.md#get_issues) | **GET** /issues | List all issues
[**get_issues_uuid**](IssuesApi.md#get_issues_uuid) | **GET** /issues/{uuid} | Show issue detail


# **get_issues**
> Array&lt;IssueOverview&gt; get_issues

List all issues

List all issues

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
  #List all issues
  result = api_instance.get_issues
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling IssuesApi->get_issues: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;IssueOverview&gt;**](IssueOverview.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_issues_uuid**
> IssueDetail get_issues_uuid(uuid)

Show issue detail

Show issue detail

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

uuid = 56 # Integer | 


begin
  #Show issue detail
  result = api_instance.get_issues_uuid(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling IssuesApi->get_issues_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**IssueDetail**](IssueDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



