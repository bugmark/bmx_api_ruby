# BmxApiRuby::IssuesApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_issues**](IssuesApi.md#get_issues) | **GET** /issues | List all issues
[**get_issues_issue_exid**](IssuesApi.md#get_issues_issue_exid) | **GET** /issues/{issue_exid} | Show issue detail
[**get_issues_issue_exid_contracts**](IssuesApi.md#get_issues_issue_exid_contracts) | **GET** /issues/{issue_exid}/contracts | Show issue contracts
[**post_issues_exid**](IssuesApi.md#post_issues_exid) | **POST** /issues/{exid} | Sync


# **get_issues**
> Array&lt;IssueOverview&gt; get_issues(opts)

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

opts = { 
  limit: 56 # Integer | count limit
}

begin
  #List all issues
  result = api_instance.get_issues(opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling IssuesApi->get_issues: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| count limit | [optional] 

### Return type

[**Array&lt;IssueOverview&gt;**](IssueOverview.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_issues_issue_exid**
> IssueDetail get_issues_issue_exid(issue_exid)

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

issue_exid = "issue_exid_example" # String | issue exid


begin
  #Show issue detail
  result = api_instance.get_issues_issue_exid(issue_exid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling IssuesApi->get_issues_issue_exid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_exid** | **String**| issue exid | 

### Return type

[**IssueDetail**](IssueDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_issues_issue_exid_contracts**
> Array&lt;ContractDetail&gt; get_issues_issue_exid_contracts(issue_exid)

Show issue contracts

Show issue contracts

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

issue_exid = "issue_exid_example" # String | issue exid


begin
  #Show issue contracts
  result = api_instance.get_issues_issue_exid_contracts(issue_exid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling IssuesApi->get_issues_issue_exid_contracts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_exid** | **String**| issue exid | 

### Return type

[**Array&lt;ContractDetail&gt;**](ContractDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_issues_exid**
> IssueDetail post_issues_exid(exid, opts)

Sync

Sync

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

exid = "exid_example" # String | issue exid

opts = { 
  repo_uuid: "repo_uuid_example", # String | repo uuid
  issue_uuid: "issue_uuid_example", # String | issue uuid
  title: "title_example", # String | issue title
  status: "status_example", # String | issue status
  labels: "labels_example", # String | TBD
  xfields: "xfields_example", # String | TBD
  jfields: "jfields_example" # String | TBD
}

begin
  #Sync
  result = api_instance.post_issues_exid(exid, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling IssuesApi->post_issues_exid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exid** | **String**| issue exid | 
 **repo_uuid** | **String**| repo uuid | [optional] 
 **issue_uuid** | **String**| issue uuid | [optional] 
 **title** | **String**| issue title | [optional] 
 **status** | **String**| issue status | [optional] 
 **labels** | **String**| TBD | [optional] 
 **xfields** | **String**| TBD | [optional] 
 **jfields** | **String**| TBD | [optional] 

### Return type

[**IssueDetail**](IssueDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



