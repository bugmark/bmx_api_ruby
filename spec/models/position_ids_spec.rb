=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for BmxApiRuby::PositionIds
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PositionIds' do
  before do
    # run before each test
    @instance = BmxApiRuby::PositionIds.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PositionIds' do
    it 'should create an instance of PositionIds' do
      expect(@instance).to be_instance_of(BmxApiRuby::PositionIds)
    end
  end
  describe 'test attribute "uuid"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

