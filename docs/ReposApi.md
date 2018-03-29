# BmxApiRuby::ReposApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_repos**](ReposApi.md#get_repos) | **GET** /repos | List all repo ids
[**get_repos_detail**](ReposApi.md#get_repos_detail) | **GET** /repos/detail | List all repo details
[**get_repos_uuid**](ReposApi.md#get_repos_uuid) | **GET** /repos/{uuid} | Show detail for one repo
[**post_repos**](ReposApi.md#post_repos) | **POST** /repos | Create a repo
[**put_repos**](ReposApi.md#put_repos) | **PUT** /repos | Sync a repo


# **get_repos**
> Array&lt;RepoIds&gt; get_repos

List all repo ids

List all repo ids

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
  #List all repo ids
  result = api_instance.get_repos
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ReposApi->get_repos: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;RepoIds&gt;**](RepoIds.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_repos_detail**
> Array&lt;RepoDetail&gt; get_repos_detail

List all repo details

List all repo details

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
  #List all repo details
  result = api_instance.get_repos_detail
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ReposApi->get_repos_detail: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;RepoDetail&gt;**](RepoDetail.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_repos_uuid**
> RepoDetail get_repos_uuid(uuid, opts)

Show detail for one repo

Show detail for one repo

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

uuid = "uuid_example" # String | repo UUID

opts = { 
  issues: true # BOOLEAN | include issues
}

begin
  #Show detail for one repo
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

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_repos**
> RepoIds post_repos(type, name, opts)

Create a repo

Create a GitHub repo. 

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

type = "type_example" # String | repo type

name = "name_example" # String | repo name

opts = { 
  ghsync: true # BOOLEAN | GH sync on create
}

begin
  #Create a repo
  result = api_instance.post_repos(type, name, opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ReposApi->post_repos: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| repo type | 
 **name** | **String**| repo name | 
 **ghsync** | **BOOLEAN**| GH sync on create | [optional] 

### Return type

[**RepoIds**](RepoIds.md)

### Authorization

[base](../README.md#base)

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
# setup authorization
BmxApiRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

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

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



