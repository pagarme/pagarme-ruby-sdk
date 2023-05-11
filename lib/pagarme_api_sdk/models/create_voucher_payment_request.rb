# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # The settings for creating a voucher payment
  class CreateVoucherPaymentRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The text that will be shown on the voucher's statement
    # @return [String]
    attr_accessor :statement_descriptor

    # Card id
    # @return [String]
    attr_accessor :card_id

    # Card token
    # @return [String]
    attr_accessor :card_token

    # Card info
    # @return [CreateCardRequest]
    attr_accessor :card

    # Defines whether the card has been used one or more times.
    # @return [String]
    attr_accessor :recurrency_cycle

    # Customer business segment code
    # @return [Integer]
    attr_accessor :merchant_category_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['card_id'] = 'card_id'
      @_hash['card_token'] = 'card_token'
      @_hash['card'] = 'Card'
      @_hash['recurrency_cycle'] = 'recurrency_cycle'
      @_hash['merchant_category_code'] = 'merchant_category_code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        statement_descriptor
        card_id
        card_token
        card
        recurrency_cycle
        merchant_category_code
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        merchant_category_code
      ]
    end

    def initialize(statement_descriptor = SKIP,
                   card_id = SKIP,
                   card_token = SKIP,
                   card = SKIP,
                   recurrency_cycle = SKIP,
                   merchant_category_code = SKIP)
      @statement_descriptor = statement_descriptor unless statement_descriptor == SKIP
      @card_id = card_id unless card_id == SKIP
      @card_token = card_token unless card_token == SKIP
      @card = card unless card == SKIP
      @recurrency_cycle = recurrency_cycle unless recurrency_cycle == SKIP
      @merchant_category_code = merchant_category_code unless merchant_category_code == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      statement_descriptor =
        hash.key?('statement_descriptor') ? hash['statement_descriptor'] : SKIP
      card_id = hash.key?('card_id') ? hash['card_id'] : SKIP
      card_token = hash.key?('card_token') ? hash['card_token'] : SKIP
      card = CreateCardRequest.from_hash(hash['Card']) if hash['Card']
      recurrency_cycle =
        hash.key?('recurrency_cycle') ? hash['recurrency_cycle'] : SKIP
      merchant_category_code =
        hash.key?('merchant_category_code') ? hash['merchant_category_code'] : SKIP

      # Create object from extracted values.
      CreateVoucherPaymentRequest.new(statement_descriptor,
                                      card_id,
                                      card_token,
                                      card,
                                      recurrency_cycle,
                                      merchant_category_code)
    end
  end
end
