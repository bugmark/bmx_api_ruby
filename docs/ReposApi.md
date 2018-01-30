# BmxApiRuby::ReposApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_repos**](ReposApi.md#get_repos) | **GET** /repos | List all repos
[**get_repos_uuid**](ReposApi.md#get_repos_uuid) | **GET** /repos/{uuid} | Show repo detail
[**post_repos**](ReposApi.md#post_repos) | **POST** /repos | Create a repo
[**put_repos**](ReposApi.md#put_repos) | **PUT** /repos | Sync a repo


# **get_repos**
> Array&lt;RepoOverview&gt; get_repos

List all repos

List all repos

### Example
```ruby
# load the gem
require 'bmx_api_ruby'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_repos_uuid**
> RepoDetail get_repos_uuid(uuid, opts)

Show repo detail

Show repo detail

### Example
```ruby
# load the gem
require 'bmx_api_ruby'

api_instance = BmxApiRuby::ReposApi.new

uuid = "uuid_example" # String | repo UUID

opts = { 
  issues: true # BOOLEAN | include issues
}

begin
  #Show repo detail
  result = api_instance.get_repos_uuid(uuid, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ReposApi->get_repos_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| repo UUID | 
 **issues** | **BOOLEAN**| include issues | [optional] 

### Return type

[**RepoDetail**](RepoDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_repos**
> Status post_repos(name, opts)

Create a repo

Create a GitHub repo. 

### Example
```ruby
# load the gem
require 'bmx_api_ruby'

api_instance = BmxApiRuby::ReposApi.new

name = "name_example" # String | repo name

opts = { 
  sync: true # BOOLEAN | sync on create
}

begin
  #Create a repo
  result = api_instance.post_repos(name, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ReposApi->post_repos: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| repo name | 
 **sync** | **BOOLEAN**| sync on create | [optional] 

### Return type

[**Status**](Status.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_repos**
> Status put_repos(uuid)

Sync a repo

Sync a GitHub repo. 

### Example
```ruby
# load the gem
require 'bmx_api_ruby'

api_instance = BmxApiRuby::ReposApi.new

uuid = "uuid_example" # String | repo uuid


begin
  #Sync a repo
  result = api_instance.put_repos(uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ReposApi->put_repos: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| repo uuid | 

### Return type

[**Status**](Status.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



