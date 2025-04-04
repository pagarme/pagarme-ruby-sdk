# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Response object for geetting an order location request
  class GetLocationResponse < BaseModel
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
      %w[
        latitude
        longitude
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        latitude
        longitude
      ]
    end

    def initialize(latitude = SKIP, longitude = SKIP)
      @latitude = latitude unless latitude == SKIP
      @longitude = longitude unless longitude == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      latitude = hash.key?('latitude') ? hash['latitude'] : SKIP
      longitude = hash.key?('longitude') ? hash['longitude'] : SKIP

      # Create object from extracted values.
      GetLocationResponse.new(latitude,
                              longitude)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} latitude: #{@latitude}, longitude: #{@longitude}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} latitude: #{@latitude.inspect}, longitude: #{@longitude.inspect}>"
    end
  end
end
