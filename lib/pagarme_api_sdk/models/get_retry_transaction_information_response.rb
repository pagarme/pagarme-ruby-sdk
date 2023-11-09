# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Response object for getting an RetryTransactionInformation
  class GetRetryTransactionInformationResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :brand_failure_return_code

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :transaction_limit

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :transaction_date_limit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand_failure_return_code'] = 'brand_failure_return_code'
      @_hash['transaction_limit'] = 'transaction_limit'
      @_hash['transaction_date_limit'] = 'transaction_date_limit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        brand_failure_return_code
        transaction_limit
        transaction_date_limit
      ]
    end

    def initialize(brand_failure_return_code = nil,
                   transaction_limit = nil,
                   transaction_date_limit = nil)
      @brand_failure_return_code = brand_failure_return_code
      @transaction_limit = transaction_limit
      @transaction_date_limit = transaction_date_limit
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand_failure_return_code =
        hash.key?('brand_failure_return_code') ? hash['brand_failure_return_code'] : nil
      transaction_limit =
        hash.key?('transaction_limit') ? hash['transaction_limit'] : nil
      transaction_date_limit = if hash.key?('transaction_date_limit')
                                 (DateTimeHelper.from_rfc3339(hash['transaction_date_limit']) if hash['transaction_date_limit'])
                               end

      # Create object from extracted values.
      GetRetryTransactionInformationResponse.new(brand_failure_return_code,
                                                 transaction_limit,
                                                 transaction_date_limit)
    end

    def to_transaction_date_limit
      DateTimeHelper.to_rfc3339(transaction_date_limit)
    end
  end
end
