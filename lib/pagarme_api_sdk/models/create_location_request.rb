# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for creating a location
  class CreateLocationRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Latitude
    # @return [String]
    attr_accessor :latitude

    # Longitude
    # @return [String]
    attr_accessor :longitude

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['latitude'] = 'latitude'
      @_hash['longitude'] = 'longitude'
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

    def initialize(latitude = nil, longitude = nil)
      @latitude = latitude
      @longitude = longitude
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      latitude = hash.key?('latitude') ? hash['latitude'] : nil
      longitude = hash.key?('longitude') ? hash['longitude'] : nil

      # Create object from extracted values.
      CreateLocationRequest.new(latitude,
                                longitude)
    end
  end
end
