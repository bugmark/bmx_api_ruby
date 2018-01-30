# BmxApiRuby::IssuesApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_issues**](IssuesApi.md#get_issues) | **GET** /issues | List all issues
[**get_issues_issue_uuid**](IssuesApi.md#get_issues_issue_uuid) | **GET** /issues/{issue_uuid} | Show issue detail


# **get_issues**
> Array&lt;IssueOverview&gt; get_issues

List all issues

List all issues

### Example
```ruby
# load the gem
require 'bmx_api_ruby'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_issues_issue_uuid**
> IssueDetail get_issues_issue_uuid(issue_uuid)

Show issue detail

Show issue detail

### Example
```ruby
# load the gem
require 'bmx_api_ruby'

api_instance = BmxApiRuby::IssuesApi.new

issue_uuid = "issue_uuid_example" # String | issue uuid


begin
  #Show issue detail
  result = api_instance.get_issues_issue_uuid(issue_uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling IssuesApi->get_issues_issue_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_uuid** | **String**| issue uuid | 

### Return type

[**IssueDetail**](IssueDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



