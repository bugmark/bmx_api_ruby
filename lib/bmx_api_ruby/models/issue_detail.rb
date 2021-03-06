=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'date'

module BmxApiRuby
  # List all issues details
  class IssueDetail
    # Issue Type
    attr_accessor :type

    # Issue UUID
    attr_accessor :uuid

    # TBD
    attr_accessor :exid

    # TBD
    attr_accessor :stm_tracker_uuid

    # TBD
    attr_accessor :stm_issue_uuid

    # TBD
    attr_accessor :stm_title

    # TBD
    attr_accessor :stm_status

    # TBD
    attr_accessor :stm_labels

    # TBD
    attr_accessor :xfields

    # TBD
    attr_accessor :jfields

    # TBD
    attr_accessor :num_contracts

    # TBD
    attr_accessor :updated_at


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'uuid' => :'uuid',
        :'exid' => :'exid',
        :'stm_tracker_uuid' => :'stm_tracker_uuid',
        :'stm_issue_uuid' => :'stm_issue_uuid',
        :'stm_title' => :'stm_title',
        :'stm_status' => :'stm_status',
        :'stm_labels' => :'stm_labels',
        :'xfields' => :'xfields',
        :'jfields' => :'jfields',
        :'num_contracts' => :'num_contracts',
        :'updated_at' => :'updated_at'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'uuid' => :'String',
        :'exid' => :'String',
        :'stm_tracker_uuid' => :'String',
        :'stm_issue_uuid' => :'String',
        :'stm_title' => :'String',
        :'stm_status' => :'String',
        :'stm_labels' => :'String',
        :'xfields' => :'String',
        :'jfields' => :'String',
        :'num_contracts' => :'Integer',
        :'updated_at' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.has_key?(:'exid')
        self.exid = attributes[:'exid']
      end

      if attributes.has_key?(:'stm_tracker_uuid')
        self.stm_tracker_uuid = attributes[:'stm_tracker_uuid']
      end

      if attributes.has_key?(:'stm_issue_uuid')
        self.stm_issue_uuid = attributes[:'stm_issue_uuid']
      end

      if attributes.has_key?(:'stm_title')
        self.stm_title = attributes[:'stm_title']
      end

      if attributes.has_key?(:'stm_status')
        self.stm_status = attributes[:'stm_status']
      end

      if attributes.has_key?(:'stm_labels')
        self.stm_labels = attributes[:'stm_labels']
      end

      if attributes.has_key?(:'xfields')
        self.xfields = attributes[:'xfields']
      end

      if attributes.has_key?(:'jfields')
        self.jfields = attributes[:'jfields']
      end

      if attributes.has_key?(:'num_contracts')
        self.num_contracts = attributes[:'num_contracts']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          uuid == o.uuid &&
          exid == o.exid &&
          stm_tracker_uuid == o.stm_tracker_uuid &&
          stm_issue_uuid == o.stm_issue_uuid &&
          stm_title == o.stm_title &&
          stm_status == o.stm_status &&
          stm_labels == o.stm_labels &&
          xfields == o.xfields &&
          jfields == o.jfields &&
          num_contracts == o.num_contracts &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, uuid, exid, stm_tracker_uuid, stm_issue_uuid, stm_title, stm_status, stm_labels, xfields, jfields, num_contracts, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = BmxApiRuby.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
