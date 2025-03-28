# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request object for PaymentOrigin
  class CreatePaymentOriginRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :brand_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :charge_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand_id'] = 'brand_id'
      @_hash['charge_id'] = 'charge_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        brand_id
        charge_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        brand_id
        charge_id
      ]
    end

    def initialize(brand_id = SKIP, charge_id = SKIP)
      @brand_id = brand_id unless brand_id == SKIP
      @charge_id = charge_id unless charge_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand_id = hash.key?('brand_id') ? hash['brand_id'] : SKIP
      charge_id = hash.key?('charge_id') ? hash['charge_id'] : SKIP

      # Create object from extracted values.
      CreatePaymentOriginRequest.new(brand_id,
                                     charge_id)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} brand_id: #{@brand_id}, charge_id: #{@charge_id}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} brand_id: #{@brand_id.inspect}, charge_id: #{@charge_id.inspect}>"
    end
  end
end
