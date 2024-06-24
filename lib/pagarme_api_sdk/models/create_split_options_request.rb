# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # The Split Options Request
  class CreateSplitOptionsRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Liable options
    # @return [TrueClass | FalseClass]
    attr_accessor :liable

    # Charge processing fee
    # @return [TrueClass | FalseClass]
    attr_accessor :charge_processing_fee

    # Charge processing fee
    # @return [TrueClass | FalseClass]
    attr_accessor :charge_remainder_fee

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['liable'] = 'liable'
      @_hash['charge_processing_fee'] = 'charge_processing_fee'
      @_hash['charge_remainder_fee'] = 'charge_remainder_fee'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        liable
        charge_processing_fee
        charge_remainder_fee
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(liable = SKIP, charge_processing_fee = SKIP,
                   charge_remainder_fee = SKIP)
      @liable = liable unless liable == SKIP
      @charge_processing_fee = charge_processing_fee unless charge_processing_fee == SKIP
      @charge_remainder_fee = charge_remainder_fee unless charge_remainder_fee == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      liable = hash.key?('liable') ? hash['liable'] : SKIP
      charge_processing_fee =
        hash.key?('charge_processing_fee') ? hash['charge_processing_fee'] : SKIP
      charge_remainder_fee =
        hash.key?('charge_remainder_fee') ? hash['charge_remainder_fee'] : SKIP

      # Create object from extracted values.
      CreateSplitOptionsRequest.new(liable,
                                    charge_processing_fee,
                                    charge_remainder_fee)
    end
  end
end
