# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # The ApplePay header request
  class CreateApplePayHeaderRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # SHA–256 hash, Base64 string codified
    # @return [String]
    attr_accessor :public_key_hash

    # X.509 encoded key bytes, Base64 encoded as a string
    # @return [String]
    attr_accessor :ephemeral_public_key

    # Transaction identifier, generated on Device
    # @return [String]
    attr_accessor :transaction_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['public_key_hash'] = 'public_key_hash'
      @_hash['ephemeral_public_key'] = 'ephemeral_public_key'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        public_key_hash
        transaction_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(ephemeral_public_key = nil, public_key_hash = SKIP,
                   transaction_id = SKIP)
      @public_key_hash = public_key_hash unless public_key_hash == SKIP
      @ephemeral_public_key = ephemeral_public_key
      @transaction_id = transaction_id unless transaction_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ephemeral_public_key =
        hash.key?('ephemeral_public_key') ? hash['ephemeral_public_key'] : nil
      public_key_hash =
        hash.key?('public_key_hash') ? hash['public_key_hash'] : SKIP
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP

      # Create object from extracted values.
      CreateApplePayHeaderRequest.new(ephemeral_public_key,
                                      public_key_hash,
                                      transaction_id)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} public_key_hash: #{@public_key_hash}, ephemeral_public_key:"\
      " #{@ephemeral_public_key}, transaction_id: #{@transaction_id}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} public_key_hash: #{@public_key_hash.inspect}, ephemeral_public_key:"\
      " #{@ephemeral_public_key.inspect}, transaction_id: #{@transaction_id.inspect}>"
    end
  end
end
