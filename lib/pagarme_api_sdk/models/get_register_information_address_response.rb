# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Response object for getting an RegisterInformationAddress
  class GetRegisterInformationAddressResponse < BaseModel
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
      %w[
        street
        complementary
        street_number
        neighborhood
        city
        state
        zip_code
        reference_point
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        street
        complementary
        street_number
        neighborhood
        city
        state
        zip_code
        reference_point
      ]
    end

    def initialize(street = SKIP,
                   complementary = SKIP,
                   street_number = SKIP,
                   neighborhood = SKIP,
                   city = SKIP,
                   state = SKIP,
                   zip_code = SKIP,
                   reference_point = SKIP)
      @street = street unless street == SKIP
      @complementary = complementary unless complementary == SKIP
      @street_number = street_number unless street_number == SKIP
      @neighborhood = neighborhood unless neighborhood == SKIP
      @city = city unless city == SKIP
      @state = state unless state == SKIP
      @zip_code = zip_code unless zip_code == SKIP
      @reference_point = reference_point unless reference_point == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      street = hash.key?('street') ? hash['street'] : SKIP
      complementary = hash.key?('complementary') ? hash['complementary'] : SKIP
      street_number = hash.key?('street_number') ? hash['street_number'] : SKIP
      neighborhood = hash.key?('neighborhood') ? hash['neighborhood'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      zip_code = hash.key?('zip_code') ? hash['zip_code'] : SKIP
      reference_point =
        hash.key?('reference_point') ? hash['reference_point'] : SKIP

      # Create object from extracted values.
      GetRegisterInformationAddressResponse.new(street,
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