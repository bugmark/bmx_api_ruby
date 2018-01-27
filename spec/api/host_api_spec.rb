=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BmxApiRuby::HostApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'HostApi' do
  before do
    # run before each test
    @instance = BmxApiRuby::HostApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HostApi' do
    it 'should create an instance of HostApi' do
      expect(@instance).to be_instance_of(BmxApiRuby::HostApi)
    end
  end

  # unit tests for get_host_info
  # info
  # info
  # @param [Hash] opts the optional parameters
  # @return [HostInfo]
  describe 'get_host_info test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_host_next_week_ends
  # next week-ends
  # next week-ends
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count count (default 4)
  # @return [Array<TimeWeekEnds>]
  describe 'get_host_next_week_ends test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_host_rebuild
  # rebuild
  # rebuild
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_host_rebuild test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_host_increment_day_offset
  # increment day offset
  # increment day offset
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count count (default 1)
  # @return [Status]
  describe 'put_host_increment_day_offset test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end