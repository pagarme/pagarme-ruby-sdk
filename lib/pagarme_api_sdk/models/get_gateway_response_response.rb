# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # The Transaction Gateway Response
  class GetGatewayResponseResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The error code
    # @return [String]
    attr_accessor :code

    # The gateway response errors list
    # @return [List of GetGatewayErrorResponse]
    attr_accessor :errors

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['errors'] = 'errors'
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

    def initialize(code = nil,
                   errors = nil)
      @code = code
      @errors = errors
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('code') ? hash['code'] : nil
      # Parameter is an array, so we need to iterate through it
      errors = nil
      unless hash['errors'].nil?
        errors = []
        hash['errors'].each do |structure|
          errors << (GetGatewayErrorResponse.from_hash(structure) if structure)
        end
      end

      errors = nil unless hash.key?('errors')

      # Create object from extracted values.
      GetGatewayResponseResponse.new(code,
                                     errors)
    end
  end
end
