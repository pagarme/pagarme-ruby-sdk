# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for creating a new Address
  class CreateAddressRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Street
    # @return [String]
    attr_accessor :street

    # Number
    # @return [String]
    attr_accessor :number

    # The zip code containing only numbers. No special characters or spaces.
    # @return [String]
    attr_accessor :zip_code

    # Neighborhood
    # @return [String]
    attr_accessor :neighborhood

    # City
    # @return [String]
    attr_accessor :city

    # State
    # @return [String]
    attr_accessor :state

    # Country. Must be entered using ISO 3166-1 alpha-2 format. See
    # https://pt.wikipedia.org/wiki/ISO_3166-1_alfa-2
    # @return [String]
    attr_accessor :country

    # Complement
    # @return [String]
    attr_accessor :complement

    # Metadata
    # @return [Hash of String]
    attr_accessor :metadata

    # Line 1 for address
    # @return [String]
    attr_accessor :line_1

    # Line 2 for address
    # @return [String]
    attr_accessor :line_2

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['street'] = 'street'
      @_hash['number'] = 'number'
      @_hash['zip_code'] = 'zip_code'
      @_hash['neighborhood'] = 'neighborhood'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash['country'] = 'country'
      @_hash['complement'] = 'complement'
      @_hash['metadata'] = 'metadata'
      @_hash['line_1'] = 'line_1'
      @_hash['line_2'] = 'line_2'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        metadata
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        metadata
      ]
    end

    def initialize(street = nil,
                   number = nil,
                   zip_code = nil,
                   neighborhood = nil,
                   city = nil,
                   state = nil,
                   country = nil,
                   complement = nil,
                   line_1 = nil,
                   line_2 = nil,
                   metadata = SKIP)
      @street = street
      @number = number
      @zip_code = zip_code
      @neighborhood = neighborhood
      @city = city
      @state = state
      @country = country
      @complement = complement
      @metadata = metadata unless metadata == SKIP
      @line_1 = line_1
      @line_2 = line_2
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      street = hash.key?('street') ? hash['street'] : nil
      number = hash.key?('number') ? hash['number'] : nil
      zip_code = hash.key?('zip_code') ? hash['zip_code'] : nil
      neighborhood = hash.key?('neighborhood') ? hash['neighborhood'] : nil
      city = hash.key?('city') ? hash['city'] : nil
      state = hash.key?('state') ? hash['state'] : nil
      country = hash.key?('country') ? hash['country'] : nil
      complement = hash.key?('complement') ? hash['complement'] : nil
      line_1 = hash.key?('line_1') ? hash['line_1'] : nil
      line_2 = hash.key?('line_2') ? hash['line_2'] : nil
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP

      # Create object from extracted values.
      CreateAddressRequest.new(street,
                               number,
                               zip_code,
                               neighborhood,
                               city,
                               state,
                               country,
                               complement,
                               line_1,
                               line_2,
                               metadata)
    end
  end
end
