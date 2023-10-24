# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for creating a transfer
  class CreateTransferRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Transfer amount
    # @return [Integer]
    attr_accessor :amount

    # Metadata
    # @return [Hash[String, String]]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['metadata'] = 'metadata'
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

    def initialize(amount = nil,
                   metadata = nil)
      @amount = amount
      @metadata = metadata
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : nil
      metadata = hash.key?('metadata') ? hash['metadata'] : nil

      # Create object from extracted values.
      CreateTransferRequest.new(amount,
                                metadata)
    end
  end
end
