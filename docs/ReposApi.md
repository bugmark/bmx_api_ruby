# BmxApiRuby::ReposApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_repos**](ReposApi.md#get_repos) | **GET** /repos | List all repos
[**get_repos_uuid**](ReposApi.md#get_repos_uuid) | **GET** /repos/{uuid} | Show repo detail


# **get_repos**
> Array&lt;RepoOverview&gt; get_repos

List all repos

List all repos

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

api_instance = BmxApiRuby::ReposApi.new

begin
  #List all repos
  result = api_instance.get_repos
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ReposApi->get_repos: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;RepoOverview&gt;**](RepoOverview.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_repos_uuid**
> RepoDetail get_repos_uuid(uuid)

Show repo detail

Show repo detail

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

api_instance = BmxApiRuby::ReposApi.new

uuid = 56 # Integer | 


begin
  #Show repo detail
  result = api_instance.get_repos_uuid(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ReposApi->get_repos_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **Integer**|  | 

### Return type

[**RepoDetail**](RepoDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



