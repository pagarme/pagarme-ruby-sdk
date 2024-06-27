# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Register Information Address
  class CreateRegisterInformationAddressRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :street

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :complementary

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :street_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :neighborhood

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :city

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :state

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :zip_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :reference_point

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['street'] = 'street'
      @_hash['complementary'] = 'complementary'
      @_hash['street_number'] = 'street_number'
      @_hash['neighborhood'] = 'neighborhood'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash['zip_code'] = 'zip_code'
      @_hash['reference_point'] = 'reference_point'
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

    def initialize(street = nil, complementary = nil, street_number = nil,
                   neighborhood = nil, city = nil, state = nil, zip_code = nil,
                   reference_point = nil)
      @street = street
      @complementary = complementary
      @street_number = street_number
      @neighborhood = neighborhood
      @city = city
      @state = state
      @zip_code = zip_code
      @reference_point = reference_point
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      street = hash.key?('street') ? hash['street'] : nil
      complementary = hash.key?('complementary') ? hash['complementary'] : nil
      street_number = hash.key?('street_number') ? hash['street_number'] : nil
      neighborhood = hash.key?('neighborhood') ? hash['neighborhood'] : nil
      city = hash.key?('city') ? hash['city'] : nil
      state = hash.key?('state') ? hash['state'] : nil
      zip_code = hash.key?('zip_code') ? hash['zip_code'] : nil
      reference_point =
        hash.key?('reference_point') ? hash['reference_point'] : nil

      # Create object from extracted values.
      CreateRegisterInformationAddressRequest.new(street,
                                                  complementary,
                                                  street_number,
                                                  neighborhood,
                                                  city,
                                                  state,
                                                  zip_code,
                                                  reference_point)
    end
  end
end
