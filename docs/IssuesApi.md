# BmxApiRuby::IssuesApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_issues**](IssuesApi.md#get_issues) | **GET** /issues | List all issue ids
[**get_issues_detail**](IssuesApi.md#get_issues_detail) | **GET** /issues/detail | List all issues details
[**get_issues_issue_exid**](IssuesApi.md#get_issues_issue_exid) | **GET** /issues/{issue_exid} | Show detail for one issue
[**get_issues_issue_exid_contracts**](IssuesApi.md#get_issues_issue_exid_contracts) | **GET** /issues/{issue_exid}/contracts | Show issue contracts
[**get_issues_issue_exid_offers**](IssuesApi.md#get_issues_issue_exid_offers) | **GET** /issues/{issue_exid}/offers | Show issue offers
[**post_issues_exid**](IssuesApi.md#post_issues_exid) | **POST** /issues/{exid} | Sync


# **get_issues**
> Array&lt;IssueIds&gt; get_issues(opts)

List all issue ids

List all issue ids

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
  #List all issue ids
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

[**Array&lt;IssueIds&gt;**](IssueIds.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_issues_detail**
> Array&lt;IssueDetail&gt; get_issues_detail(opts)

List all issues details

List all issues details

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
  #List all issues details
  result = api_instance.get_issues_detail(opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling IssuesApi->get_issues_detail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| count limit | [optional] 

### Return type

[**Array&lt;IssueDetail&gt;**](IssueDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_issues_issue_exid**
> IssueDetail get_issues_issue_exid(issue_exid)

Show detail for one issue

Show detail for one issue

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
  #Show detail for one issue
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



# **get_issues_issue_exid_offers**
> Array&lt;OfferDetail&gt; get_issues_issue_exid_offers(issue_exid)

Show issue offers

Show issue offers

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
  #Show issue offers
  result = api_instance.get_issues_issue_exid_offers(issue_exid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling IssuesApi->get_issues_issue_exid_offers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_exid** | **String**| issue exid | 

### Return type

[**Array&lt;OfferDetail&gt;**](OfferDetail.md)

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



