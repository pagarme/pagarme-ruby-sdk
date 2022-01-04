# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # The GooglePay header request
  class CreateGooglePayHeaderRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # X.509 encoded key bytes, Base64 encoded as a string
    # @return [String]
    attr_accessor :ephemeral_public_key

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ephemeral_public_key'] = 'ephemeral_public_key'
      @_hash
    end

    # An array for optional fields
    def optionals
      []
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(ephemeral_public_key = nil)
      @ephemeral_public_key = ephemeral_public_key unless ephemeral_public_key == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ephemeral_public_key =
        hash.key?('ephemeral_public_key') ? hash['ephemeral_public_key'] : SKIP

      # Create object from extracted values.
      CreateGooglePayHeaderRequest.new(ephemeral_public_key)
    end
  end
end