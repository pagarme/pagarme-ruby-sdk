# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Register Information Phone
  class CreateRegisterInformationPhoneRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :ddd

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ddd'] = 'ddd'
      @_hash['number'] = 'number'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(ddd = nil, number = nil, type = nil)
      @ddd = ddd
      @number = number
      @type = type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ddd = hash.key?('ddd') ? hash['ddd'] : nil
      number = hash.key?('number') ? hash['number'] : nil
      type = hash.key?('type') ? hash['type'] : nil

      # Create object from extracted values.
      CreateRegisterInformationPhoneRequest.new(ddd,
                                                number,
                                                type)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} ddd: #{@ddd}, number: #{@number}, type: #{@type}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} ddd: #{@ddd.inspect}, number: #{@number.inspect}, type: #{@type.inspect}>"
    end
  end
end
