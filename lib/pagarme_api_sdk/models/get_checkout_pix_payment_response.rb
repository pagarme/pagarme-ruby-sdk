# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Checkout pix payment response
  class GetCheckoutPixPaymentResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Expires at
    # @return [DateTime]
    attr_accessor :expires_at

    # Additional information
    # @return [Array[PixAdditionalInformation]]
    attr_accessor :additional_information

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['expires_at'] = 'expires_at'
      @_hash['additional_information'] = 'additional_information'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        expires_at
        additional_information
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        expires_at
        additional_information
      ]
    end

    def initialize(expires_at = SKIP, additional_information = SKIP)
      @expires_at = expires_at unless expires_at == SKIP
      @additional_information = additional_information unless additional_information == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      expires_at = if hash.key?('expires_at')
                     (DateTimeHelper.from_rfc3339(hash['expires_at']) if hash['expires_at'])
                   else
                     SKIP
                   end
      # Parameter is an array, so we need to iterate through it
      additional_information = nil
      unless hash['additional_information'].nil?
        additional_information = []
        hash['additional_information'].each do |structure|
          additional_information << (PixAdditionalInformation.from_hash(structure) if structure)
        end
      end

      additional_information = SKIP unless hash.key?('additional_information')

      # Create object from extracted values.
      GetCheckoutPixPaymentResponse.new(expires_at,
                                        additional_information)
    end

    def to_custom_expires_at
      DateTimeHelper.to_rfc3339(expires_at)
    end
  end
end
